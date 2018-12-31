---
title: "Optimizing Market Marking"
date: 2018-12-27T16:48:26-08:00
author: "Cameron Pfiffer"
categories: []
tags: []
draft: false
---

{{% marginnote "source" %}} Patel, Yagna, 2018, Optimizing Market Making using Multi-Agent Reinforcement Learning, *arXiv:1812.10252 [cs, q-fin, stat]*.{{% /marginnote%}}

Apparently I've been on a kick reading some of these reinforcement learning/market making papers. Yagna Patel published an interesting paper on arXiv[^arxiv] discussing the application of a reinforcement learning agent to market making, one of my favorite topics. Market making, that is, not necessarily reinforcement learning.

# Why

As Patel points out, there's three big concerns that users of machine learning in finance have to watch out for. 

1. Time. Significantly complex models take a while to make predictions. 
2. Accuracy. Predictive accuracy in financial markets can be low. 
3. Policy. Even if you have a model that shows a 55% chance of a uptick in price, how do you define policy to act on that information? More importantly, how do you define a policy that adapts to a changing fitness landscape?

The overall goal here is to determine whether reinforcement learning is useful in market making.

# What

From the abstract:

> In this paper, reinforcement learning is applied to the problem of optimizing market making. A multi-agent reinforcement learning framework is used to optimally place limit orders that lead to successful trades. The framework consists of two agents. The macro-agent optimizes on making
> the decision to buy, sell, or hold an asset. The micro-agent optimizes on placing limit orders within the limit order book. For the context of this paper, the proposed framework is applied and studied on the Bitcoin cryptocurrency market. The goal of this paper is to show that reinforcement learning is a viable strategy that can be applied to complex problems (with complex environments) such as market making.

Patel essentially presents a two-stage RL model for tackling trading, though he fails to actually approach market making methods.

# How 

Patel somewhat misses the point on what market makers do in how his model is set up. There are two components. The first is the macro agent, which decides whether to _buy_, _sell_, or _hold_. The second component is a micro agent, which determines where to place the macro agent's buy or sell order. The missed point is that market makers shouldn't really be deciding whether to buy or sell; their goal is to place both buy and sell orders optimally within the order book, such that they minimize adverse selection and inventory risk. This macro agent design fails to model that behaviour, and already the paper has failed to answer the question as to whether RL can be applied to market making.

Patel also chooses to use discrete-time modeling, for this reason:

> As noted in the problem statement, discrete time-steps are chosen (rather than continuous time-steps) for the  reason that continuous time-steps would not be possible in the real world since the WebSocket data itself arrives at discrete time-steps.

I don't know that I buy that. Lots of microstructure folk (the crazy ones, anyway) use continuous time for this kind of thing, even though the WebSocket feeds are discrete. I suspect that it would be hard to model, so I can accept this.

As this is a RL paper, the choice of reward function is somewhat important. The micro agent is evaluated against VWAP, which strikes me as odd. I'm not sure this framework of a macro and micro agent works that well, as the micro agent should be making choices based on probabilities of informed trading and such.

# Thoughts

All in all, this is a really interesting paper, but it kind of misses the mark on market making. I'd like to see something closer to the finance literature on this.

[^arxiv]: Where none of the best finance papers go. This is something of a sorry state of affairs --- I really love the machine learning/microstructure papers that end up on arXiv, but many of the other papers are of an extremely low quality.