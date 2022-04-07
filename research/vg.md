---
layout: page
title: The Decline in Video Game Quality Over Time
exclude: true
toc: true
---

* TOC filler
{:toc}

Last updated: April 6, 2022

### Introduction ###
Using Metascores and user scores from 2002 through 2021, both of which are allowed to range from 0 to 100, I measure the (perceived) quality of novel gaming in the following ways.[^1]

First, I focus on the 75th percentile of scores in each quarter of each year. For example, if the 75th percentile is 80, then 25 percent of games released in that quarter had a score of 80 or above. This implicitly assumes that the quality of a platform's ecosystem can be defined by the quality of its top-shelf games; bad games can just be ignored.

Percentile measures quality in proportional terms relative to total number of releases, but one might argue that the absolute number of high-quality games is more important in determining the quality of a platform's ecosystem. After all, a well-informed consumer can simply avoid less desirable games. To that end, I also count the number of top-shelf games -- those with a score above 80 -- released in each quarter of each year.

I look at PC as well as Sony, Microsoft, and Nintendo consoles. I consider the console manufacturers to each provide a single ecosystem; when a manufacturer has two consoles simultaneously receiving new releases, I simply aggregate the two as if they constitute a single console. This is partly for simplicity, and partly to express each manufacturer as a single ecosystem so as to measure the overall quality of that ecosystem.

For professional reviews, there are PC 6405 games in the sample, 5553 Playstation games, 4567 Xbox games, and 4018 Nintendo games. To account for review bombing and other shenanigans from user reviews, I omit user scores that differ from their respective Metascores by 30 or more points. This reduces the number of user scores in the sample of PC games from 5839 to 5603, of Playstation games from 5081 to 4879, of Xbox games from 3868 to 3709, and of Nintendo games from 3185 to 3109.

[^1]: Why yes, I do desperately wish I worked in the video game industry but don't due to a total absence of connections and talent. Thanks for asking.


### PC Video Game Quality Trend ###
Trends for 75th percentile are given by a robust quantile regression on quarterly linear time. Professional reviews do not exhibit any upward or downward trend (p ≈ 1.000), whereas user reviews exhibit a downward trend (p = 0.010) of about 0.35 points per 5 years, suggesting that users view the basket of the best 25 percent of PC games to be modestly diminishing in quality over time.

![PC Percentile Trend](pc_trend_percentile.png)

Trends for the number of top-shelf games are given by an ordinary robust regression on quarterly linear time. Professional reviews exhibit an upward trend (p < 0.001) of about 1 extra top-shelf game per year, whereas user reviews exhibit an upward trend (p = 0.001) of about 1 extra top-shelf game every 3 years. There is therefore a general consensus that the number of top-shelf PC games being released is increasing over time, although users are less emphatic about the rate of that increase.

![PC Count Trend](pc_trend_count.png)


### Playstation Video Game Quality Trend ###
Professional reviews do not exhibit any upward or downward trend (p ≈ 1.000), whereas user reviews exhibit a downward trend (p < 0.001) of about 4 points per 5 years, suggesting that users view the basket of the best 25 percent of Playstation games to be diminishing in quality rapidly over time.

![Playstation Percentile Trend](ps_trend_percentile.png)

 Professional reviews exhibit an upward trend (p = 0.005) of about extra 1 top-shelf game every 3 years, whereas user reviews exhibit a downward trend (p < 0.001) of about 1 less top-shelf game every year. The disagreement between professional reviewers and users concerning the evolution of the Playstation platform is rather stark.

![Playstation Count Trend](ps_trend_count.png)


### Nintendo Video Game Quality Trend ###
 There is a slight disagreement among professional reviewers and users regarding the best 25 percent of Playstation games released over time. Professional reviews exhibit an upward (p < 0.001) of about small increase of about 0.8 points per five years. User reviews exhibit a downward trend (p < 0.001) of about 1 point per 5 years, suggesting that users view the basket of the best 25 percent of Nintendo games to be diminishing in quality modestly over time.

![Nintendo Percentile Trend](nintendo_trend_percentile.png)

Professional reviews exhibit an upward trend (p < 0.001) of about 1 extra top-shelf game every year, whereas user reviews exhibit an upward trend (p = 0.001) of about 1 extra top-shelf game every 2.5 years, suggesting a broad consensus among professional reviewers and users.

![Nintendo Count Trend](nintendo_trend_count.png)


### Xbox Video Game Quality Trend ###
Professional reviews do not exhibit any upward or downward trend (p ≈ 1.000), whereas user reviews exhibit a downward trend (p < 0.001) of about 2 points per 5 years, suggesting that users view the basket of the best 25 percent of Xbox games to be diminishing in quality over time.

![Xbox Percentile Trend](xbox_trend_percentile.png)

Professional reviews exhibit an upward trend (p = 0.013) of about extra 1 top-shelf game every 4 years, whereas user reviews exhibit a downward trend (p < 0.001) of about 1 less top-shelf game every 2 years. The disagreement between professional reviewers and users concerning the evolution of the Xbox platform is also fairly stark.

![Xbox Count Trend](xbox_trend_count.png)


### Overall Video Game Quality Trend ###
For the omnivorous gamer, the all-inclusive quality of top-shelf games shows no trend according to professional reviewers (p ≈ 1.000), but has a downward trend according to users of about 1.7 points per 5 years.

![All Percentile Trend](all_trend_percentile.png)

Professional reviews exhibit an upward trend (p < 0.001) of about 2.7 extra top-shelf games every year, whereas user reviews exhibit an downward trend (p = 0.012) of about 1 less top-shelf game every year, suggesting a stark disagreement among professional reviewers and users.

![All Count Trend](all_trend_count.png)


### So Which Platform Is The Best? ###
It is immediately acknowledged that the title of this section is on the click-bait side of things. More accurately, this section aims to determine which platform is "best" insofar as it delivers a product that most satisfies its userbase. Because different platforms often have different users with different preferences and different expectations, "satisfaction" cannot really be extended to "best" for any arbitrary gamer. For example, a typical PC user might not view a Nintendo platform so charitably because Nintendo platforms do not emphasize the first-person shooter genre as strongly as PC users might like; but it is possible that the PC platform is still the best platform for most PC users, even if PC users are on average less satisfied than Nintendo users.

<h4 class="no_toc">Overall Best</h4>

That said, I first bluntly test differences in the 75th percentiles of each platform over the entire window using a robust quantile regression. This does not account for any upward or downward trends, but at least can let us analyze which platform has fared the best over the last 20 years in a vague, time-aggregate sense. The platform with the highest estimated 75th percentile score is considered the best for that year, but not necessarily uniquely so: any other platform is also considered the best for that year if the p-value of the one-sided test is above 0.05, in which case its top-shelf games are indistinguishable from that of the top-scoring platform with 95 percent confidence.

For professional reviewers, PC and Xbox platforms are the highest with a 75th percentile of 80, whereas  Playstation and Nintendo each have 79 as their 75h percentile. For user reviews, Nintendo games are the statistically significant highest with an 75th percentile of 80; the Playstation score is 79, the Xbox score is 78, and the PC score is 77. All p-values are p < 0.001. The difference in professional reviews is therefore small but likely real, and the difference in user reviews is a bit larger.

<center>
 <b> Score of Top-Shelf Games (All Years) </b>
</center>
![All P75](blunt_p75.png)

I also look at the total number of top-shelf games released in the 20 year window. I use a bias-corrected bootstrap to determine that, according to professional reviewers, PC has the statistically-significant highest number of total top-shelf games with 1509. Playstation is a statistically-significant second place with 1207, followed by statistically-significant third place Xbox with 1078, and Nintendo in last place with 780. All p-values are p < 0.001. I do not consider user scores in this context because the accumulated omission of review-bombed games over all 20 years likely skews the results quite heavily.[^12]

[^12]: Thanks, guys.

<center>
 <b> Count of Top-Shelf Games (Professional Reviews, All Years) </b>
</center>
![All Count](blunt_count_metascore.png)


<h4 class="no_toc">Yearly Best</h4>
Second, I determine which platform had the best releases on a yearly basis.

The first concept of annual "best" is determined by doing 10,000 bias-corrected bootstrap iterations for 75th percentile score, which is meant to estimate the quality of the platform's top-shelf games released in that year. The platform with the highest estimated 75th percentile score is potentially considered the best for that year, but not necessarily uniquely so. A robust quantile regression tests the difference in 75th percentiles to determine which platforms are distinguishably worse than the top-scoring platform of that year. Any other platform is also potentially considered the best for that year if the p-value of the t-test is above 0.10, in which case its top-shelf games are indistinguishable from that of the top-scoring platform with 90 percent confidence. (A 90 percent confidence interval is chosen to give a better chance as unique winners.) If there are three or four winners in a year, then that year will be considered to have no winner, that is, only two-way ties are allowed (otherwise the title of "best" becomes rather meaningless). This exercise is carried out with both Metascores and user scores.

<center><b> Score of Top-Shelf Games: Winners </b></center>

|------|-----------------------------|---------------------------|
| Year | Pro Reviewers Best Platform | Users Best Platform       |
|------|-----------------------------|---------------------------|
| 2002 | None                        | Playstation               |
| 2003 | None                        | Playstation               |
| 2004 | None                        | Playstation, Nintendo     |
| 2005 | Xbox                        | Playstation               |
| 2006 | PC, Xbox                    | Playstation               |
| 2007 | PC, Xbox                    | Playstation, Nintendo     |
| 2008 | None                        | None                      |
| 2009 | PC, Playstation             | Nintendo                  |
| 2010 | None                        | Nintendo                  |
| 2011 | None                        | Xbox, Nintendo            |
| 2012 | None                        | None                      |
| 2013 | None                        | None                      |
| 2014 | None                        | Nintendo                  |
| 2015 | None                        | Nintendo                  |
| 2016 | PC, **Nintendo**            | Playstation, **Nintendo** |
| 2017 | **PC**                      | **PC**, Nintendo          |
| 2018 | PC, **Nintendo**            | **Nintendo**              |
| 2019 | PC, Xbox                    | Nintendo                  |
| 2020 | PC, Xbox                    | Nintendo                  |
| 2021 | **PC**, Xbox                | **PC**, Nintendo          |
|------|-----------------------------|---------------------------|

According to professional reviewers, PC was the best for 9 years, Xbox for 6 years, Nintendo for 2 years, and Playstation for 1 year. According to users, Nintendo was the best for 13 years, Playstation for 7 years, PC for 2 years, and Xbox for 1 year. Note that there is only a consensus in four years with Nintendo and PC twice each.

Plots of the bootstrap collection are shown in the figure below with two-sided 95 percent confidence intervals. Keep in mind, however, that overlapping confidence intervals (or lack thereof) do not reflect the results of a difference-in-means test. They do, however, illustrate the magnitude of difference in quality. The t-test conclusions are shown in the table below; bolded platforms indicate years in which professional reviewers and critics are in consensus. Notice that the differences are often quite small, even between the platforms that are considered the best and those not: the difference might be statistically significant, but might not be practically significant.

<center><b> Bootstrap Results for Score of Top-Shelf Games, Professional Reviewers </b>
  <br>(Click to expand)
</center>
[![Bootstrap Results for Score of Top-Shelf Games, Critics](best_critics_p75_CI.png)](best_critics_p75_CI.png)

<center><b> Bootstrap Results for Score of Top-Shelf Games, User Reviewers </b>
  <br>(Click to expand)
</center>
[![Bootstrap Results for Score of Top-Shelf Games, Users](best_users_p75_CI.png)](best_users_p75_CI.png)

The second concept of annual "best" is carried out using the number of top-shelf games released each year, again using both Metascores and user scores. In this context, top-shelf is any game with a score of 80 or higher. Using the same criteria to determine winners, the results are shown below.

<center><b> Number of Top-Shelf Games: Winners </b></center>

|------|-----------------------------|---------------------|
| Year | Pro Reviewers Best Platform | Users Best Platform |
|------|-----------------------------|---------------------|
| 2002 | PC, **Playstation**         | **Playstation**     |
| 2003 | None                        | Playstation         |
| 2004 | None                        | Playstation         |
| 2005 | None                        | Playstation         |
| 2006 | PC, Xbox                    | Playstation         |
| 2007 | None                        | Playstation         |
| 2008 | None                        | None                |
| 2009 | None                        | Xbox, Nintendo      |
| 2010 | Playstation, **Xbox**       | **Xbox**            |
| 2011 | None                        | Playstation, Xbox   |
| 2012 | PC, Xbox                    | None                |
| 2013 | **PC**                      | **PC**              |
| 2014 | **PC**                      | **PC**              |
| 2015 | **PC**, Playstation         | **PC**              |
| 2016 | **PC**                      | **PC**              |
| 2017 | **PC**                      | **PC**              |
| 2018 | **Nintendo**                | **Nintendo**        |
| 2019 | PC, **Nintendo**            | **Nintendo**        |
| 2020 | PC, **Nintendo**            | **Nintendo**        |
| 2021 | **PC**                      | **PC**              |
|------|-----------------------------|---------------------|

According to professional reviewers, PC was the best in 11 years, the rest each in 3 years. According to users, Playstation was the best in 7 years, PC in 6 years, Nintendo in 4 years, and Xbox in 3 years. PC and Playstation appear to be favorites as far as the sheer number of high-quality games is concerned. There is a consensus 11 times, 6 times for PC, 3 times for Nintendo, and once each for Playstation and Xbox.

<center><b> Bootstrap Results for Number of Top-Shelf Games, Professional Reviewers </b>
  <br>(Click to expand)
</center>
[![Bootstrap Results for Number of Top-Shelf Games, Critics](best_critics_count_CI.png)](best_critics_count_CI.png)

<center><b> Bootstrap Results for Number of Top-Shelf Games, User Reviewers </b>
  <br>(Click to expand)
</center>
[![Bootstrap Results for Score of Top-Shelf Games, Users](best_users_count_CI.png)](best_users_count_CI.png)

Summing up best years for both measures according to professional reviewers, PC has the most wins with 20, followed by Xbox with 9, Nintendo with 5, and Playstation with 4. Doing the same with user reviews, Nintendo has the most wins with 17, followed by Playstation with 14, PC with 8, and Xbox with 4.

Finally, taking the sum of wins for both professional reviewers and user reviews gives a total of 28 wins for PC, 22 wins for Nintendo, 18 wins for Playstation, and 13 wins for Xbox.


### Conclusions ###
Professional reviewers seem to be more charitable in their assessments over time compared to users, often to a degree that casts doubt upon the relevance of professional reviewers as sources of useful information for gamers in general. PC and Nintendo as ecosystems seems to be holding fairly steady as far as quality is concerned, whereas Playstation and Xbox seem to be struggling over time. Overall, no platform is obviously best on a yearly basis since there is little consensus among professional reviewers and users. That said, PC seems to be the platform most likely to win accolades in a general sense, and Xbox least likely.


<h4 class="no_toc">Footnotes</h4>
