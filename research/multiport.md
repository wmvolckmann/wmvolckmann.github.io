---
layout: page
title: Which Video Game Platform Gets the Best Ports?
exclude: true
toc: true
---

* TOC filler
{:toc}


### Introduction ###
Many video games are released on multiple platforms, but the (perceived) quality of a game is often different when compared over different platforms. There are a number of plausible explanations as to why: some platforms might be more difficult to develop for; some platforms might have weaker hardware than their peers; some platforms might not have the most suitable controls as a standard (e.g. having to use a gamepad for a real-time strategy game on console instead of a mouse and keyboard); some platforms might be more vulnerable to revenue-leaking piracy, which renders the platform an afterthought for developers.

Using Metascores and user scores from 2001 through 2021, both of which are allowed to range from 0 to 100, I measure the quality of games ported to PC, Playstation, and Xbox systems and compare them.[^1] I only consider games released on all three platforms within 3 months of each other. The unit of time is therefore collapsed into quarters. If a game is released on two or more systems within the same platform (e.g. released on both Playstation 3 and Playstation 4), I take their mean. To account for review bombing, I omit user scores that differ from their respective Metascores by 30 or more points. After all is said and done, there are 900 games in the sample for Metascores and 847 games in the sample for user scores.

[^1]: I omit the Nintendo platform because it is a bit of an oddball compared to the other platforms: Nintendo systems typically have weaker hardware than their peers (which sometimes makes them less suitable for a multiplatform release), and a stronger reliance on exclusives and idiosyncratic devices (e.g. a Wiimote).


### Professional Reviews ###
First note that among the multiplatform games in the sample, there is no statistically significant trend upward or downward in Metacritic score at 95 percent confidence for any platform, although there is a minor upward trend for the PC ports at 90 percent confidence.[^2]

The figure below illustrates how subtle any platform difference is, on average, over the last 20 years: trendlines are all concentrated within a fairly small band between about 71 to 74; and scatterplots are nearly indistinguishable across platforms. MANOVA tests are consistent with the preceding intuition, being unable to differentiate between the three platforms based purely on Metascore or when also including quarterly or yearly times as predictors.[^3] In other words, if a game is chosen randomly from any of the three platforms, it is statistically unlikely that one would be able to determine which system the game belongs to based purely on its score.

<center>
 <b> Metascore for Multiplatform Games </b>
</center>
![Metascore Ports](multiport_metascores.png)

That said, pairwise comparisons may unveil some more specific patterns. Comparing PC to Playstation over the entire 20 year window finds any difference to be statistically insignificant. However, there is a statistically significant trend suggesting that PC ports may be improving in quality relative to Playstation ports over time (by about 0.05 points per quarter), and the gap may have already been closed or even reversed in favor of PC.[^4]

Comparing PC to Xbox over the entire 20 year window finds the average difference to be a statistically significant 0.89 points in favor of Xbox ports. Again, there is a statistically significant trend suggesting that PC ports may be modestly improving in quality relative to Xbox ports over time (by about 0.02 points per quarter).[^5]

Finally, comparing Playstation to Xbox over the entire 20 year window, one finds the average difference to be a statistically significant 1.05 points in favor of Xbox ports. Here there is a statistically significant trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time (by about 0.035 points per quarter).[^6]

<center>
 <b> Pairwise Meta Score Differences </b>
</center>
![Metascore Ports Pairwise](multiport_metascores_pairwise.png)

[^2]: p = 0.055 for PC, p = 0.369 for PS, and p = 0.368 for Xbox
[^3]: I use the bootstrap MANOVA procedures of [Friedrich, Konietschke, and Pauly (2019)](https://journal.r-project.org/archive/2019/RJ-2019-051/RJ-2019-051.pdf) and find p-values of 0.118, 0.367, 0.366, respectively, with 100000 bootstrap iterations.
[^4]: p = 0.332 and p < 0.001, respectively
[^5]: p < 0.001 and p = 0.017, respectively
[^6]: p < 0.001 and p < 0.001, respectively


### User Reviews ###
All three platforms exhibit a statistically significant downward trend in user score for multiplatform games.[^7] However, the figure below again illustrates how subtle any platform difference is, on average, over the last 20 years: both trendlines and scatterplots are fairly similar visually across platforms (albeit there appears to be more distinction compared to Metascores). MANOVA tests are again consistent the preceding intuition in that they are unable to differentiate between platform based purely on user score or when also including quarterly or yearly times as predictors.[^8]

<center>
 <b> User Score for Multiplatform Games </b>
</center>
![User Score Ports](multiport_userscores.png)

Pairwise comparison of PC to Playstation over the entire 20 year window finds a statistically significant average difference of 1.19 points in favor of Playstation. However, there is a statistically significant trend suggesting that PC ports may be improving in quality relative to Playstation ports over time (by about 0.09 points per quarter), and the gap may have already closed or reversed in favor of PC.[^9]

Comparing PC to Xbox over the entire 20 year window finds the average difference to be a statistically significant 1.69 points in favor of Xbox ports. Again, there is a statistically significant trend suggesting that PC ports may be modestly improving in  quality relative to Xbox ports over time (by about 0.04 points per quarter).[^10]

Finally, comparing Playstation to Xbox over the entire 20 year window, one finds the difference to be statistically insignificant at 95 percent confidence. Here there is a statistically significant trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time (by about 0.06 points per quarter), which may have put Xbox ports ahead of Playstation ports, on average.[^11]

<center>
 <b> Pairwise User Score Differences </b>
</center>
![User Ports Pairwise](multiport_userscores_pairwise.png)

[^7]: p = 0.001 for PC, p < 0.001 for PS, and p < 0.001 for Xbox
[^8]: I again use the bootstrap MANOVA procedures of Friedrich, Konietschke, and Pauly (2019) and find p-values of 0.220, 0.546, 0.545, respectively, with 100000 bootstrap iterations.
[^9]: p < 0.001 and p < 0.001, respectively
[^10]: p < 0.001 and p = 0.009, respectively
[^11]: p < 0.066 and p < 0.000, respectively


### So Which Platform Gets The Best Ports? ###
I determine which platform had the best ports in two ways.

First, I bluntly compare the means of each platform over the entire window. This does not account for any upward or downward trends, but at least can let us analyze which platform has fared the best over the last 20 years in an aggregate sense. For professional reviewers, Xbox ports are the statistically-significant highest with an estimated mean of 73.54, compared to the PC mean of 72.65 and the Playstation mean of 72.49 with p-values of p < 0.001 each. PC and Playstation ports are statistically indistinguishable with a p-value of p = 0.166.

For user reviews, the estimated mean quality of Xbox ports is highest at 69.65, followed by Playstation at 69.16, and PC at 67.95. The mean Xbox score is statistically significantly larger than both the Playstation and PC ports with respective p-values of p = 0.026 and p < 0.001; and the mean Playstation score is statistically significantly larger than the PC port with p < 0.001.

Both estimates are shown in the figures below. Keep in mind, however, that overlapping confidence intervals (or lack thereof) do not reflect the results of a difference-in-means test. They do, however, illustrate the magnitude of difference between ports. In particular, the difference in average port quality over the 20 year window appears to be small.

<center>
 <b> Estimated Means and Confidence Intervals (All Years) </b>
  <br>
  (Click image to see full size)
</center>
[![Estimated Mean and Confidence Intervals](multiport_userscores_allyears.png)](multiport_userscores_allyears.png)


Second, I determine the best ports on a yearly basis. A one-sided difference in means t-test is performed to determine which platforms are distinguishably worse than the top-scoring platform of that year. Any other platform is also considered the best for that year if the p-value of the t-test is above 0.05, in which case its top-shelf games are indistinguishable from that of the top-scoring platform with 95 percent confidence; but if there is no statistical distinction between any of the scores, then no platform is considered the best. This exercise is carried out with both Metascores and user scores. Because the original Xbox was released in late 2001, there is a small sample size and the year 2001 is omitted accordingly.

Estimates and their 95 percent confidence intervals are shown in the figures below. Note again that overlapping confidence intervals say nothing about a difference-in-means test, but are informative insofar as they illustrate the magnitude of difference between ports.

<center>
 <b> Estimated Mean and Confidence Intervals, Professional Reviews </b>
 <br>
 (Click image to see full size)
</center>
[![Estimated Mean and Confidence Intervals, Professional Reviews](multiport_metascores_CI.png)](multiport_metascores_CI.png)

<center>
 <b> Estimated Mean and Confidence Intervals, User Reviews </b>
 <br>
 (Click image to see full size)
</center>
[![Estimated Mean and Confidence Intervals, User Reviews](multiport_userscores_CI.png)](multiport_userscores_CI.png)

Notice how close most of the estimates are. The t-test results, which determine the "winner" of each year, are shown in the table below. Keep in mind that many of these victories, while statistically significant, are only by a hair in terms of magnitude.

<center><b> Top Mean Port Quality </b></center>

|------|------------------------------|---------------------|
| Year | Pro Reviewers Best Platform  | Users Best Platform |
|------|------------------------------|---------------------|
| 2002 | Playstation, Xbox            | None                |
| 2003 | Playstation, Xbox            | Playstation         |
| 2004 | Playstation, Xbox            | Playstation         |
| 2005 | Playstation, Xbox            | Playstation         |
| 2006 | None                         | Playstation, Xbox   |
| 2007 | Xbox                         | None                |
| 2008 | Playstation, Xbox            | Xbox                |
| 2009 | None                         | Xbox                |
| 2010 | Playstation                  | Playstation, Xbox   |
| 2011 | PC, Xbox                     | Playstation, Xbox   |
| 2012 | Playstation, Xbox            | None                |
| 2013 | None                         | None                |
| 2014 | PC                           | None                |
| 2015 | Playstation, Xbox            | Xbox                |
| 2016 | Xbox                         | None                |
| 2017 | Xbox                         | None                |
| 2018 | Xbox                         | PC, Xbox            |
| 2019 | PC, Xbox                     | Xbox                |
| 2020 | PC, Xbox                     | None                |
| 2021 | Xbox                         | None                |
|------|------------------------------|---------------------|

According to professional reviewers, Xbox had the best ports for 15 years, Playstation for 7 years, and PC for 4 years; no platform had the best ports for 3 years. According to users, Xbox had the best ports for 8 years, Playstation for 6 years, and PC for 1 year; and no platform had the best ports for 9 years. Taking the sum of wins for both professional reviewers and user reviews gives a total of 23 wins to Xbox, 13 wins to Playstation, 5 wins to PC, and 12 ties.


### Conclusions ###
There is some evidence of differential perceived quality in ports among platforms. The differences are small in aggregate over the last 20 years, especially after accounting for the trend of each platform. That said, Xbox ports seem to have fared the best with Playstation ports slightly behind and PC ports more so. However, over time it appears that PC ports are improving in quality relative to both Xbox and Playstation ports as judged by both professional critics and users; and Xbox ports are improving in quality relative to Playstation ports as judged by both professional critics and users.


<h4 class="no_toc">Footnotes</h4>
