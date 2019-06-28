---
title: "Switzerland: Day 4"
date: 2019-06-27T19:47:24+02:00
author: "Cameron Pfiffer"
categories: []
tags: []
draft: false
---

{{% marginnote "book" %}} See [here](https://www.amazon.com/Empirical-Market-Microstructure-Institutions-Econometrics/dp/0195301641) for a link to purchase Joel's book. It's a good one. {{% /marginnote %}}

Today was the first day of the empirical session with [Albert Menkveld](https://albertjmenkveld.com/) . We covered the first couple chapters of Joel Hasbrouck's excellent book.

{{% marginnote "roll" %}} Roll, Richard, 1984, A Simple Implicit Measure of the Effective Bid-Ask Spread in an Efficient Market, *The Journal of Finance* 39, 1127–1139. {{% /marginnote %}}

We started with the general Roll (1984) model, which is a really straightforward way to think about how order processing costs make it into the bid-ask spread. Basically, it is assumed that trade prices $p^t$ have a random walk with drift evolution, such that

$$
p\_t = p\_{t-1} + \mu + u\_t
$$


Hasbrouck notes that the drift term $\mu$ is largely unnessecary, especially since at micro-scale it's hard to have any notion of expected return.

The model above is expanded upon by including an efficient price (fundamental value) $m_t$, which is a martingale:


$$
m\_t = m\_{t-1} + u\_t
$$


Prices are then a noisy proxy of the true value, as a function of a cost that market makers need to recoup for processing orders


$$
p\_t = m\_t + q\_tc
$$

where $c$ is a fixed per-trade cost incurred by the dealer and $q_t$ is an indicator for a buy or sell ($+1$ for a buy and $-1$ for a sell). 

{{% marginnote "hasbrouck-2009 "%}} Hasbrouck, Joel, 2009, Trading Costs and Returns for U.S. Equities: Estimating Effective Costs from Daily Data, *The Journal of Finance* 64, 1445–1477. {{% /marginnote %}}

It's a good model. I'm particularly interested in how Hasbrouck (2009) approaches trying to approximate the $c$ variable, as he uses a Gibbs sampler to run a Bayesian linear regression. Given my association with [Turing.jl](https://turing.ml), I can't help but feel that there is a hierarchical model that would provide a better structural estimate of things like adverse selection cost and order processing cost. That'd need a more sophisticated model than the Roll model, however, and I'm not quite sure I'm up to the task (yet).