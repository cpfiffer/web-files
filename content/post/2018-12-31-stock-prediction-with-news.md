---
title: "Stock Prediction With News"
date: 2018-12-31T06:15:40-08:00
author: "Cameron Pfiffer"
categories: []
tags: []
draft: false
---

{{% marginnote "source" %}} Sardelich, Marcelo, and Suresh Manandhar, 2018, Multimodal deep learning for short-term stock volatility prediction, *arXiv:1812.10479 [cs, q-fin, stat]*. {{% /marginnote%}}

I'm always interested in seeing more people apply natural language processing to financial statements and headlines. A lot of the accounting literature where those kinds of tools are most likely to be useful uses very primitive techniques for textual analysis. 

So I was delighted to read this paper by Marcelo and Manandhar [on arXiv](https://arxiv.org/abs/1812.10479v1) where the authors gather headlines and attempt volatility forecasting. By their measure, they do pretty well, better than $\text{GARCH}(1,1)$. I don't know enough about GARCH to make an educated assessment on that, but their MSE and $R^2$ is pretty remarkable for financial time series.

The authors segmented their predictions by sector, and I noticed that the $R^2$ for the energy sector is substantially higher than the other sectors (~0.4 vs. ~0.2) for both GARCH and their model. I have to wonder why this is the case. Perhaps the energy sector is simply more responsive to news? I suppose that makes sense when you think about how dramatically oil prices change in response to almost every event.

Regardless, this was an interesting paper with a surprising level of financial knowledge and a very interesting ML model (word embeddings, sentence encoders, LTSM networks, oh my) and it's worth a read.