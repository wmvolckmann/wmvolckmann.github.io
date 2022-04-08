---
layout: page
title: Which Video Game Platform Gets the Best Ports?
exclude: true
toc: true
---

* TOC filler
{:toc}

Last updated: April 6, 2022

### Introduction ###
Many video games are released on multiple platforms, but the (perceived) quality of a game is often different when compared over different platforms. There are a number of plausible explanations as to why: some platforms might be more difficult to develop for; some platforms might have weaker hardware than their peers; some platforms might not have the most suitable controls as a standard (e.g. having to use a gamepad for a real-time strategy game on console instead of a mouse and keyboard); some platforms might be more vulnerable to revenue-leaking piracy, which renders the platform an afterthought for developers.

Using Metascores and user scores from 2002 through 2021, both of which are allowed to range from 0 to 100, I measure the quality of games ported to PC, Playstation, and Xbox systems and compare them.[^1] I only consider games released on all three platforms within 3 months of each other. The unit of time is therefore collapsed into quarters. If a game is released on two or more systems within the same platform (e.g. released on both Playstation 3 and Playstation 4), I take their mean. To account for review bombing and other shenanigans, I omit user scores that differ from their respective Metascores by 30 or more points, which leads to a removal of 66 games from consideration. After all is said and done, there are 3588 games in the sample for professional reviews and 3390 for user reviews.

[^1]: I omit the Nintendo platform because it is a bit of an oddball compared to the other platforms: Nintendo systems typically have weaker hardware than their peers (which sometimes makes them less suitable for a multiplatform release), and a stronger reliance on exclusives and idiosyncratic devices (e.g. a Wiimote).


### Professional Reviews ###
The figure below illustrates how subtle any platform difference is, on average, over the last 20 years: trendlines are all concentrated within a fairly small band between about 70 to 74; scatterplots are nearly indistinguishable across platforms; and the relative trends sometimes net out over time. That said, MANOVA tests give p-values of around 0.05, suggesting that there is some overall difference between the platforms' ports, as viewed by professional reviewers.[^2]

To that end, there are some trends worth noting. PC ports have an upward trend of about 1 point every 5 years (p = 0.003), and Xbox ports have an upward trend of about 1 point every 7 years (p = 0.029). Playstation ports are remarkably consistent over time, with a near-zero coefficient (and p = 0.986), although that consistency appears to be a liability insofar as Playstation ports appear to be falling behind relative to the improvements made by the other platforms.

<center>
 <b> Metascore for Multiplatform Games </b>
</center>
![Metascore Ports](multiport_metascores.png)

Pairwise comparisons may unveil some more specific patterns. Comparing PC to Playstation over the entire 20 year window finds any difference to be statistically insignificant (p = 0.5495). That said, there is a trend which suggests that PC ports may be improving in quality relative to Playstation ports over time by about 1 point every 5 years, and the gap may have already been closed or even reversed in favor of PC (p < 0.001).

In comparing PC to Xbox over the entire 20 year window, the average difference is about 1 point in favor of Xbox ports. Here there is likely a trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time by about a third of a point every 6 years (p = 0.060).

Finally, comparing Playstation to Xbox over the entire 20 year window,  the average difference to be about 1 point in favor of Xbox ports (p < 0.001). There is a trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time by about a 1 point every 7 years (p < 0.001).

<center>
 <b> Pairwise Meta Score Differences </b>
</center>
![Metascore Ports Pairwise](multiport_metascores_pairwise.png)

[^2]: I use the bootstrap MANOVA procedures of [Friedrich, Konietschke, and Pauly (2019)](https://journal.r-project.org/archive/2019/RJ-2019-051/RJ-2019-051.pdf).


### User Reviews ###
The figure below again illustrates how subtle any platform difference is, on average, over the last 20 years: both trendlines and scatterplots are fairly similar visually across platforms. At 95 percent significance, MANOVA tests are consistent the preceding intuition in that they are unable to differentiate between platform based purely on user score. However, p = 0.09 suggests that it is still quite plausible that a difference exists.

 PC ports have a downward trend of about 1 point every 5 years (p = 0.003), Playstation ports have a downward trend of about 1 points every 1.5 years (p < 0.001), and Xbox ports have a downward trend of about 1 point every 3 years (p < 0.001).

<center>
 <b> User Score for Multiplatform Games </b>
</center>
![User Score Ports](multiport_userscores.png)

Pairwise comparison of PC to Playstation over the entire 20 year window finds no statistically significant difference (p = 0.1380). However, there is a trend suggesting that PC ports may be improving in quality relative to Playstation ports over time by about 1 point every 2 years (p < 0.001), and the gap may have already closed or reversed in favor of PC.

Comparing PC to Xbox over the entire 20 year window finds the average difference to be about 1.3 points in favor of Xbox ports (p < 0.001). There is a trend suggesting that PC ports may be modestly improving in quality relative to Xbox ports over time by about 1 point every 5 years (p = 0.001).

Finally, comparing Playstation to Xbox over the entire 20 year window, one finds a differnce of about 0.8 ponts in favor of Xbox (p < 0.001). There is a trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time by about 1 point every 3.5 years (p < 0.001), which may have put Xbox ports ahead of Playstation ports, on average.

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

First, I bluntly compare the means of each platform over the entire window. This does not account for any upward or downward trends, but at least can let us analyze which platform has fared the best over the last 20 years in an aggregate sense.

For professional reviewers, Xbox ports are the best with an estimated mean of 72.9, compared to the PC mean of 71.9 and the Playstation mean of 71.8 with p < 0.001 each. PC and Playstation ports are statistically indistinguishable with a p-value of p = 0.2747.

For user reviews, the estimated mean quality of Xbox ports is highest at 69.1, followed by Playstation at 68.2, and PC at 67.8 with p < 0.001 each. Playstation and PC are statistically indistinguishable with a p-value of 0.1272

Both estimates are shown in the figures below. Keep in mind that overlapping confidence intervals (or lack thereof) do not reflect the results of a difference-in-means test. They do, however, illustrate the magnitude of difference between ports. In particular, the difference in average port quality over the 20 year window appears to be small.

<center>
 <b> Estimated Means and Confidence Intervals, All Years </b>
</center>
![Estimated Means and Confidence Intervals](multiport_userscores_allyears.png)

Second, I determine the best ports on a yearly basis. A one-sided difference in means t-test is performed to determine which platforms are distinguishably worse than the top-scoring platform of that year. Any other platform is also considered the best for that year if the p-value of the t-test is above 0.05, in which case its top-shelf games are indistinguishable from that of the top-scoring platform with 95 percent confidence; but if there is no statistical distinction between any of the scores, then no platform is considered the best. This exercise is carried out with both Metascores and user scores.

Estimates and their 95 percent confidence intervals are shown in the figures below. Note again that overlapping confidence intervals say nothing about a difference-in-means test, but are informative insofar as they illustrate the magnitude of difference between ports.

<center>
 <b> Estimated Means and Confidence Intervals, Professional Reviews </b>
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

|------|-----------------------------|---------------------------|
| Year | Pro Reviewers Best Platform | Users Best Platform       |
|------|-----------------------------|---------------------------|
| 2002 | Playstation, Xbox           | None                      |
| 2003 | **Playstation**, Xbox       | PC, **Playstation**       |
| 2004 | **Playstation**, Xbox       | **Playstation**           |
| 2005 | Xbox                        | Playstation               |
| 2006 | None                        | Playstation, Xbox         |
| 2007 | **Xbox**                    | Playstation, **Xbox**     |
| 2008 | **Xbox**                    | **Xbox**                  |
| 2009 | None                        | Xbox                      |
| 2010 | Playstation                 | **Playstation**, Xbox     |
| 2011 | None                        | Playstation, Xbox         |
| 2012 | **Playstation**, **Xbox**   | **Playstation**, **Xbox** |
| 2013 | None                        | PC, Xbox                  |
| 2014 | PC, Playstation             | None                      |
| 2015 | None                        | PC, Xbox                  |  
| 2016 | Xbox                        | None                      |
| 2017 | **Xbox**                    | PC, **Xbox**              |
| 2018 | **Xbox**                    | PC, **Xbox**              |
| 2019 | **Xbox**                    | **Xbox**                  |
| 2020 | **Xbox**                    | PC, **Xbox**              |
| 2021 | **Xbox**                    | **Xbox**                  |
|------|-----------------------------|---------------------------|

According to professional reviewers, Xbox had the best ports for 13 years, Playstation 6 years, and PC 1 year; no platform had the best ports for 5 years. According to users, Xbox had the best ports for 14 years, Playstation for 8 years, and PC for 6 years; and no platform had the best ports for 3 years. Taking the sum of wins for both professional reviewers and user reviews gives a total of 27 wins to Xbox, 14 wins to Playstation, 7 wins to PC, and 8 ties.


### Conclusions ###
There is some evidence of differential perceived quality in ports among platforms. The differences are not large in aggregate over the last 20 years, especially after accounting for the trend of each platform. That said, Xbox ports seem to have fared the best with Playstation ports slightly behind and PC ports more so. However, over time it appears that PC ports are improving in quality relative to both Xbox and Playstation ports as judged by both professional critics and users; and Xbox ports are improving in quality relative to Playstation ports as judged by both professional critics and users.


<h4 class="no_toc">Footnotes</h4>
