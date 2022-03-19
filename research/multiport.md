---
layout: page
title: Which Video Game Platform Gets the Best Ports?
exclude: true
---

Many video games are released on multiple platforms, but the (perceived) quality of a game is often different when compared over different platforms. There are a number of plausible explanations as to why: some platforms might be more difficult to develop for; some platforms might have weaker hardware than their peers; some platforms might not have the most suitable controls as a standard (e.g. having to use a gamepad for a real-time strategy game on console instead of a mouse and keyboard); some platforms might be more vulnerable to revenue-leaking piracy, which renders the platform an afterthought for developers.

Using Metascores and user scores from 2001 through 2021, both of which are allowed to range from 0 to 100, I measure the quality of games ported to PC, Playstation, and Xbox systems and compare them.[^1] I only consider games released on all three platforms within 3 months of each other. The unit of time is therefore collapsed into quarters. If a game is released on two or more systems within the same platform (e.g. released on both Playstation 3 and Playstation 4), I take their mean. To account for review bombing, I omit user scores that differ from their respective Metascores by 30 or more points. After all is said and done, there are 900 games in the sample for Metascores and 847 games in the sample for user scores.

[^1]: I omit the Nintendo platform because it is a bit of an oddball compared to the other platforms: Nintendo systems typically have weaker hardware than their peers (which sometimes makes them less suitable for a multiplatform release), and a stronger reliance on exclusives and idiosyncratic devices (e.g. a Wiimote).


### Professional Reviews ###
First note that among the multiplatform games in the sample, there is no statistically significant trend upward or downward in Metacritic score at 95 percent confidence for any platform, although there is a minor upward trend for the PC ports at 90 percent confidence.[^2]

The figure below illustrates how subtle any platform difference is, on average, over the last 20 years: both the trend lines and scatterplots are nearly indistinguishable between platforms. MANOVA tests are consistent with the preceding intuition, being unable to differentiate between the three platforms based purely on Metascore or when also including quarterly or yearly times as predictors.[^3]

![Metascore Ports](multiport_metascores.png)

That said, pairwise comparisons may unveil some more specific patterns. Comparing PC to Playstation over the entire 20 year window finds any difference to be statistically insignificant. However, there is a statistically significant trend suggesting that PC ports may be improving in quality relative to Playstation ports over time (by about 0.05 points per quarter), and the gap may have already been closed or even reversed in favor of PC.[^4]

Comparing PC to Xbox over the entire 20 year window finds the average difference to be a statistically significant 0.89 points in favor of Xbox ports. Again, there is a statistically significant trend suggesting that PC ports may be modestly improving in quality relative to Xbox ports over time (by about 0.02 points per quarter).[^5]

Finally, comparing Playstation to Xbox over the entire 20 year window, one finds the average difference to be a statistically significant 1.05 points in favor of Xbox ports. Here there is a statistically significant trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time (by about 0.035 points per quarter).[^6]

![Metascore Ports Pairwise](multiport_metascores_pairwise.png)


[^2]: p = 0.055 for PC, p = 0.369 for PS, and p = 0.368 for Xbox
[^3]: I use the bootstrap MANOVA procedures of Friedrich, Konietschke, and Pauly (2019) and find p-values of 0.118, 0.367, 0.366, respectively, with 100000 bootstrap iterations.
[^4]: p = 0.332 and p < 0.001, respectively
[^5]: p < 0.001 and p < 0.017, respectively
[^6]: p < 0.001 and p < 0.001, respectively




### User Reviews ###
All three platforms exhibit a statistically significant downward trend in user score for multiplatform games.[^7] However, the figure below again illustrates how subtle any platform difference is, on average, over the last 20 years: both the trend lines and scatterplots are difficult to distinguish visually between platforms (albeit there appears to be more distinction compared to Metascores). MANOVA tests are again consistent the preceding intuition in that they are unable to differentiate between platform based purely on user score or when also including quarterly or yearly times as predictors.[^8]


![User Score Ports](multiport_userscores.png)

Pairwise comparison of PC to Playstation over the entire 20 year window finds a statistically significant average difference of 1.19 points in favor of Playstation. However, there is a statistically significant trend suggesting that PC ports may be improving in quality relative to Playstation ports over time (by about 0.09 points per quarter), and the gap may have already closed or reversed in favor of PC.[^9]

Comparing PC to Xbox over the entire 20 year window finds the average difference to be a statistically significant 1.69 points in favor of Xbox ports. Again, there is a statistically significant trend suggesting that PC ports may be modestly improving in  quality relative to Xbox ports over time (by about 0.04 points per quarter).[^10]

Finally, comparing Playstation to Xbox over the entire 20 year window, one finds the difference to be statistically insignificant at 95 percent confidence. Here there is a statistically significant trend suggesting that Xbox ports may be improving in quality relative to Playstation ports over time (by about 0.06 points per quarter), which may have put Xbox ports ahead of Playstation ports, on average.[^11]

![Metascore Ports Pairwise](multiport_userscores_pairwise.png)


[^7]: p = 0.001 for PC, p < 0.001 for PS, and p < 0.001 for Xbox
[^8]: I again use the bootstrap MANOVA procedures of Friedrich, Konietschke, and Pauly (2019) and find p-values of 0.220, 0.546, 0.545, respectively, with 100000 bootstrap iterations.
[^9]: p < 0.001 and p < 0.001, respectively
[^10]: p < 0.001 and p = 0.009, respectively
[^11]: p < 0.066 and p < 0.000, respectively


### Conclusions ###
There is some evidence of differential perceived quality in ports among platforms. The differences are fairly small in aggregate over the last 20 years, considering how noisy of a measurement scores are as quality. That said, over time it appears that PC ports are improving in quality relative to both Xbox and Playstation ports as judged by both professional critics and users; and Xbox ports are improving in quality relative to Playstation ports as judged by both professional critics and users.


#### Footnotes ####
