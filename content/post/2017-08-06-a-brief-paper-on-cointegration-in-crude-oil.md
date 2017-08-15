---
title: A Brief Paper on Cointegration in Crude Oil
author: ~
date: '2017-08-06'
slug: a-brief-paper-on-cointegration-in-crude-oil
categories: []
tags: []
Categories:
  - Development
  - GoLang
Description: ''
Tags:
  - Development
  - golang
menu: main
---

I've just finished putting the final touches on my final paper for my master's degree, and I thought I'd write up a bit about the process. You can get the fancy LaTeX version [here](https://drive.google.com/file/d/0B6yUWclvz_SNREhObUxEVjFESWs/view?usp=sharing).

My final summer course for the master's program was all about Energy Finance, taught by an econometrician[^de644491]. Commensurate with the professor's experience, the final paper was along the same lines. We were allowed to choose between three different project options. Here's the one I picked:

> Are the prices of WTI and Brent co-integrated? Is it possible to profitably trade the price differential? First, summarize the results of the empirical literature. Then conduct your own analysis. Carefully explain your methodology.

This was easily the most difficult amongst the three options, because you had to design a trading strategy. For many of my colleagues who like programming less, it proved difficult to design a system to evaluate a trading system. But I thought it might be a fun challenge (and it was!) to do so.

I'd read the paper if you're particularly interested in the specifics, but I thought I'd include a little bit more about the backend. I don't have the chance to get into it in the text, but I basically wrote an entire trading system to measure transaction costs, portfolio value, etc. That was what took the most time. I spent more time debugging the transaction system than writing the paper, and I don't actually talk about it in the paper.

I also got pretty deep into [cointegration](https://en.wikipedia.org/wiki/Cointegration), which is a fascinating concept. Basically, two series that are non-stationary[^stationary] can have a _cointegrating vector_ which makes a linear combination of the series stationary. This has some pretty interesting knock-on effects:

1. If the combined series is stationary, you know that the series crosses the mean frequently, and that it is bound to revert. In crude oil prices, this means that the spread between two assets (like Brent and WTI crude oils) cannot remain too far from the x-intercept for too long.
2. The variance is (theoretically[^variance]) bound to a constant state, so you can moderately achieve returns without excess variance.

The bulk on my trading strategy relies on these two factors -- if the cointegrated series is far from zero (or close to zero) then it will _eventually_ return to the mean. I had some pretty neat returns, and actually beat the S&P in and out of sample.

I'm really proud of the paper, and hope that maybe someone might get to make use of the strategy I developed. Maybe when I'm older and actually have capital, I'll do it, though by then the cointegrating relationship may have changed.

[^variance]: I say theoretically, because empirically, the variance is not constant. Particularly the period between 2008 and 2013 or so was especially volatile, and the period between 1994 and 2005 was extremely placid.

[^stationary]: This means that the series is essentially random and has no trend, has a mean of zero, and a constant variance.

[^de644491]: These dudes tend to make everything more fun.
