---
layout: page
title: Which Video Game Platform Gets the Best Ports?
exclude: true
---

Many video games are released on multiple platforms, but the (perceived) quality of a game is often different when compared over different platforms. There are a number of plausible explanations as to why: some platforms might be more difficult to develop for; some platforms might have weaker hardware than their peers; some platforms might not have the most suitable controls as a standard (e.g. having to use a gamepad for a real-time strategy game on console instead of a mouse and keyboard); some platforms might be more vulnerable to revenue-leaking piracy, which renders the platform an afterthought for developers.

Using Metascores and user scores from 2001 through 2021, both of which range from 0 to 100, I measure the (perceived) quality of games ported to PC, Playstation, and Xbox systems and compare them.[^1] I only consider games released on all three platforms within 3 months of each other. The unit of time is therefore collapsed into quarters. If a game is released on two or more systems within the same platform (e.g. released on both Playstation 3 and Playstation 4), I take their mean. To account for review bombing, I omit user scores that differ from their respective Metascores by 30 or more points. After all is said and done, there are 900 games in the sample for Metascores and 847 games in the sample for user scores.

[^1]: I omit the Nintendo platform because it is a bit of an oddball compared to the other platforms: Nintendo systems typically have weaker hardware than their peers (which makes less suitable for a multiplatform release) and a stronger reliance on exclusives and idiosyncratic devices (e.g. a Wiimote).


### Professional Reviews ###
First note that among the multiplatform games in the sample, there is no statistically significant trend upward or downward in Metacritic score at 95 percent confidence for any platform, although there is a minor upward trend for the PC ports at 90 percent confidence.[^2]

The figure below illustrates how meaningless any platform difference is, on average, over the last 20 years: both the trend lines and scatterplots are practically indistinguishable between platforms. MANOVA tests are consistent with the preceding intuition: they are unable to differentiate between platform based purely on Metascore or when also including quarterly or yearly times as predictors.[^3]

[^2]: p = 0.055 for PC, p = 0.369 for PS, and p = 0.368 for Xbox
[^3]: I use the bootstrap MANOVA procedures of Friedrich, Konietschke, and Pauly (2019) and find p-values of 0.118, 0.367, 0.366, respectively, with 100000 bootstrap iterations.

![Metascore Ports](multiport_metascores.png)



### User Reviews ###
All three platforms exhibit a statistically significant downward trend in user score for multiplatform games.[^4] However, the figure below again illustrates how meaningless any platform difference is, on average, over the last 20 years: both the trend lines and scatterplots are practically indistinguishable between platforms. MANOVA tests are again consistent the preceding intuition in that they are unable to differentiate between platform based purely on user score or when also including quarterly or yearly times as predictors.[^5]

[^4]: p = 0.001 for PC, p < 0.001 for PS, and p < 0.001 for Xbox
[^5]: I again use the bootstrap MANOVA procedures of Friedrich, Konietschke, and Pauly (2019) and find p-values of 0.220, 0.546, 0.545, respectively, with 100000 bootstrap iterations.

![User Score Ports](multiport_userscores.png)



### Conclusions ###
There is practically no evidence that there is any difference in the (perceived) quality of ports, on average, when comparing multiplatform releases over PC, Playstation, and Xbox platforms. The absence of evidence is apparent when considering quality as perceived by either professional critics or by users. Any such difference does not appear overall in the 20 year window considered, nor does there appear to be any change in the relative quality of different ports over time.


#### Footnotes ####
