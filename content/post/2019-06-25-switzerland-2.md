---
title: "Switzerland: Day 2"
date: 2019-06-25T18:38:51+02:00
author: "Cameron Pfiffer"
categories: []
tags: []
draft: false
---

{{% marginnote "glosten" %}} Glosten, Lawrence R., 1994, Is the Electronic Open Limit Order Book Inevitable?, *The Journal of Finance* 49, 1127–1161. {{% /marginnote %}}

{{% marginnote "miller" %}} Vayanos, Dimitri, 1999, Strategic Trading and Welfare in a Dynamic Market, *Review of Economic Studies* 66, 219–254. {{% /marginnote %}}

{{% marginnote "miller" %}} Grossman, Sanford J., and Merton H. Miller, 1988, Liquidity and Market Structure, *The Journal of Finance* 43, 617–633. {{% /marginnote %}}

Today was the final lecture series on microstructural theory. We covered models of the limit order book, primarily Glosten (1994), and a model of inventory holding costs and imperfect competition among dealers. The dealer competition model was based on Vayanos (1999) and (I think) Grossman and Miller (1988).

I'm generally quite pleased with my level of understanding of both microeconomics and microstructure. I didn't feel lost or unable to grasp the model's steps at any point --- several times I was able to infer potential next steps, and I suspect one time I may even have been right. Many models fall out of very general equilibrium conditions and simple first order conditions, so it's fairly straightforward to adapt the general microeconomics tools. 

## Glosten (1994)

I think that the most complex model we reviewed is that of the Glosten (1994) paper. It's a three-period model, which is generally fairly simple. In this case, the complexity comes from the mental jumps you must make to find the intuition in how expectations are form. The model has some very interesting predictions on how people decide to place order in limit order books based on execution belief and adverse selection risk. Orders accumulate at various levels on the price grid, such that the price at any particular point ($A^k$ for the $k^{th}$ ask or $B^k$ for the $k^{th}$ bid) satisfies


$$
A_k = E[V \space \vert \space q \ge Y_k^*]
$$


where $V$ is the valuation of some asset, and $q$ is the size of a market order that arrives in the second period. The term $Y^*_k$ represents the cumulative quantity available up to price $A_k$ (or $B_k$).

This equilibrium condition comes out of each trader's decisions. A trader looks at each price level, and decides whether adding to the quantity at that price level is likely to be profitable.  If it is not, because the adverse selection risk is too high or there are too many orders on the book already, the trader goes to the next price level and repeats the process.

A couple of interesting points arise from this particular model. First, the Glosten (1994) model explains why there might be unfilled price levels in the order book. At any given price level, the expectation is formed based on _cumulative_ quantity on offer. If the cumulative quantity at price levels below satisfies the condition $q \ge Y_k^*$ for several levels of $k$, then those levels will be unfilled. Second, this model predicts that informed traders never submit small orders, but I think this is largely a byproduct of the fact that the model does not consider strategic optimization. Thierry noted that this is common to many models, and that it makes since, considering the complexity involved in optimizing the behavior of multiple agent types.

---

Tomorrow, five students will be presenting their papers. 

