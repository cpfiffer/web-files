using Dates

function main(fn)
    # fn = args[1]
    tmppath = tempdir()
    tmpfile = joinpath(tmppath, "written")
    # tmpfile = ".written.md"

    if isfile(fn)
        lines = readlines(fn)
        in_yaml = false
        rx = r"^(\w*):"
        footnote = r"\[\^\w*\]"
        footnote_def = r"\[\^(\w*)\]:"

        open(tmpfile, write=true, create=true) do io
            for (line_no, line) in enumerate(lines)
                if line == "---"
                    in_yaml = ~in_yaml
                    println(io, line)
                else
                    if line_no == 1
                        # title: "Bayesian Econometrics"
                        # date: 2021-05-31T16:05:55.450
                        # author: "Cameron Pfiffer"
                        # categories: []
                        # tags: []
                        # draft: false
                        println(io, "---")
                        println(io, "title: ")
                        println(io, "date: ", Dates.now())
                        println(io, "author: \"Cameron Pfiffer\"")
                        println(io, "draft: true")
                        println(io, "---\n")

                    end

                    if in_yaml
                        flag_type = match(rx, line)[1]

                        if flag_type == "date"
                            println(io, string(flag_type, ": ", Dates.now()))
                        else
                            println(io, line)
                        end
                    else
                        # Check if a footnote is used.
                        fn_match = match(footnote_def, line)
                        if !isnothing(fn_match)
                            footnote_id = fn_match[1]

                            println(io, "{{% marginnote \"$footnote_id\" %}}")
                            println(io, strip(replace(line, footnote_def => "")))
                            println(io, "{{% /marginnote %}}")
                        else

                            # fn_inline_m = match(footnote, line)
                            # !isnothing(fn_inline_m) && println(line)
                            println(io, replace(line, footnote => ""))
                        end
                    end
                end
            end
        end

        cp(tmpfile, fn, force=true)
        rm(tmpfile)
    else
        println("$fn is not a file.")
    end
end

main(first(ARGS))
