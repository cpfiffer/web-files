---
title: "Trade Volume and Risk Aversion"
date: 2019-07-28T09:21:25-07:00
author: "Cameron Pfiffer"
categories: []
tags: []
draft: false
---

Rob Ready here at the University of Oregon recommended that I read John Cochrane's blog post on [why anyone actually trades](https://johnhcochrane.blogspot.com/2016/10/volume-and-information.html). I had not read it before, and finally had some time to do so after my full-bodied sprint to Baltimore and back.



The post helped me gel an idea of information-based market activity that I started to think about in Switzerland but was unable to formalize. Cochrane points to a lot of mechanisms that people have used to induce trading, such as preference shocks, noise traders, or overconfidence. Obviously some of these are more reasonable than others.  I have met professional traders from big institutions and they certainly seem to be a little overconfident.



But Cochrane dances near a concept that would explain much of the trading behavior we observe:



> We know what this huge volume of trading is about. It’s about 
> information, not preference shocks. Information seems to need trades to 
> percolate into prices. We just don’t understand why.



Information is, in my view, the only real reason anyone should trade, but I think my formulation of "information" is significantly broader than many others. Noise traders can be explained by the information they posess -- a client has just asked for cash, so the noise trader must sell some of the client's assets. This is fundamentally an information  story! 



It is also something I would consider private information. The firm knows something that most other firms do not, which is that they need to liquidate the asset even though their absolute perspective on the value of the asset is unchanged. Only their relative valuation has changed. The firm's value from holding the asset has dramatically increased, because they face consequences for _not_ selling the asset and returning the funds. 



The perception of value is also an important concept, which in my view is exclusively driven by information. Two firms, a hedge fund and a pension fund, both have sets of information about all securities available. A piece of information might be that Tesla is actually a company, that it is trading at $228.04 right now, or that the pension fund manager owns a Tesla and quite likes the product. It might be that the hedge fund manager saw Elon Musk pick his nose at an In-N-Out twenty years ago, and believes that Elon Musk has limited self control. These are all pieces of information with different levels of usefulness, but collectively, they allow market agents to construct an estimate of an efficient price. If both firms have exactly the same information sets, we should never expect trades. Their perception of absolute value is given only by all the little tidbits they have, and having the same tidbits mean that perceptions should be identical.



We can throw some math on here to make this more specific. Consider two firms, $x$ and $y$, each with access to a subset of some global information set $I$, given by $I_x$ and $I_y$ respectively. 



Assume that each firm determines the fundamental value of a security $X$ using a function $f(\cdot)$, which is a deterministic function shared by both firms. Let $f(I) = X^*$ be the true fundamental value of the asset. If $I_x = I_y$, then $f(I_x) = f(I_y)$. We cannot reallly say much in general about cases where $I_x \sub I_y$, since it's possible that the additional information held by $y$ increases or decreases their understanding of fundamental value.



The problem with this set construction is that sets are often very difficult to work with. What's the actual value of having an additional element of information? Well, ultimately, it reduces your level of uncertainty about how much of $I$ you actually observe! 



Being good Bayesians, both firms $x$ and $y$ know that they only have some subset of the true information set. Suppose their valuations are given by distributions $G_x(I_x)$ and $G_y(I_y)$, with $G(I) = X^*$. Neither of these distributions actually have to be centered around $X^*$. They can be lumpy, multimodal, whatever -- all we care about is the fact that the variance of your beliefs is much higher if you have less information. 



Returning to our statements on $f(\cdot)$, what can we say about the case where $I_x \sub I_y$? Well, only that $\text{var}(G_x) <\text{var}(G_y)$. That is, acquiring new information reduces your uncertainty about what you know and what you know you don't know. 



I'm going to leave this here for a moment because I have some work to do, but here are some next steps when I get around to it:



1. Link this set construction to market prices.
2. By what mechanism exactly do trades allows others to make inferences about the information sets of others?
3. What's a dynamic programming extension look like? I.e., if some agents are generally better at acquiring information than others, how might other agents form expectations about their expectations over time?

