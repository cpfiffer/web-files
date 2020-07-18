A Tale of Two Premiums: The Role of Hedgers and Speculators in Commodity Futures

Kang, Rouwenhorst, and Tang (2020)

---

Abstract

- Studies the interaction between the net positions of traders and risk premia in commodity futures markets.
- Short-term position changes come from liquidity demanding noncommercials.
- Long-term variation comes from the hedging demands of commercials.
- Both position change types push expected returns in opposite directions.
- Commercial traders provide liquidity, and profit from doing so relative to the hedging premium they pay.

Introduction

* Normal backwardation suggests that 
  * the hedging demand for futures is net short.
  * hedgers induce speculators to absorb the risk of price fluctuations. 
* The Keynesian view is weak because
  1. Hedging and speculation are often difficult to distinguish. Commercial hedgers can speculate based on market views. 
  2. Speculators don't just "provide insurance", they have various means and end goals, such as ETF investment.
* What influences position changes unrelated to hedging demand? And what happens to risk premiums?
* Empirical evidence of the Keynsian view is weak.
* Tests of `returns ~ hedging_pressure` is typically not as significant as you would think.
  * CFTC designations may not categorize hedgers/speculators well.
  * Lots of the variation in hedging pressure that is not from commercials who are hedging. Classic noise problem!
* Commercial traders might be supplying liquidity for the short-term trades.
* Examines futures returns following weekly position changes from the CFTC.
* The weeks following a position change have
  * Noncommercial buyers get low returns when buying, high returns when selling.
  * Commercial buyers get the opposite: high returns when buying, low returns when selling.
* Commercial traders are contrarians, while noncommercials are impatient liquidity demanders.
* This is contrary to the Keynesian view, where incresed selling should accompany higher returns! What's up here?
* If you remove variation in hedging pressure from short term trading, you get the Keynsian relationship.
* There are two premiums! One for hedging (paid by commercials to noncommercials) and one for liquidity provision (paid by noncommercials to commercials).
* Factors that influence premia
  * Commercials are less willing to provide liquidity when (option-implied) risk is high.
  * The VIX doesn't effect liquidity provision.
  * Commercials are less willing to provide liquidity when they are capital constrained or when they are imbalanced.
* Commercial traders provide liquidity to momentum traders because lots of trading by noncommercials is orthogonal to momentum.
* Explains why commercial traders trade so much -- they're providing liquidity.

Data and summary stats

* CFTC position data

* 26 commodities on NYMEX, NYBOT, CBOT, and CME

* Ranges from January 2, 1994 to December 31, 2017

* Use Disaggregated Comitment of Trader data for robustness.

* Hedging pressure for commodity $i$:
  $$
  HP_{i,t} = \frac{CS_{i,t} - CL_{i,t}}{OI_{i,t}} = -\frac{\text{commercial net long position}_{i,t}}{\text{open interest}_{i,t}}
  $$

* For each trader category, define net trading as
  $$
  Q_{i,t} = \frac{\text{net long position}_{i,t} - \text{net long position}_{i,t-1}}{\text{open interest}_{i,t}}
  $$

* Finally, define propensity to trade as
  $$
  PT_{i,t} = \frac{
  \mid L_{i,t} - L_{i,t-1} \mid + \mid S_{i,t} - S_{i,t-1} \mid
  }{
  L_{i,t-1} + S_{i,t-1}
  }
  $$
  for a trader type's long position $L$ and short position $S$.

* Table I 

  * Average excess return is positive for 18/26 markets
  * Hedging pressure is positive for 24/26 commodities

* Figure I

  * Lots of time series variation in hedging pressure.

Liquidity Provision in Commodities Futures Markets

- Run Fama-MacBeth regressions of $Q$ on current or past returns and position changes.
- Table II
  - Noncommercials are momentum traders
  - Commercials are contrarians
- Table III
  - Testing whether returns are predictable
  - Commodities bought by commercials do well in the next period.
  - Noncommercials tend to lose.
- DCOT and CFTC data are correlated at 0.9, so we're fine to use the CFTC data.
- Table IV
  - Does the DCOT data change much?
  - Nope.
- Table V
  - There's a momentum effect when you sort on net trading by commercials

The role of hedging pressure revisited

* Short term trading makes hedging pressure noisy as all hell
* Table VI
  * Using smoothed hedging pressure gets you the result you'd expect, that hedging pressure induces higher returns as an insurance premium.
* More or less the same story multiple times.

Further perspective in liquidity provision

- Commodity volatility comes from option-implied vol on futures.
- Table IX
  - Nothing to do with the vix, everything to do with commodities volatility.
  - Large losses or big imabalances reduce liquidity provision

Why do commercials provide liquidity to momentum traders?

* They gain more from liquidity provision than they lose from momentum trading