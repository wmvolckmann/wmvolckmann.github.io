---
layout: page
title: The Decline in Video Game Quality Over Time
exclude: true
toc: true
---

* TOC filler
{:toc}

### Introduction ###
Using Metascores and user scores from 2000 through 2021, both of which are allowed to range from 0 to 100, I measure the (perceived) quality of novel gaming in the following ways.[^1]

First, I focus on the 75th percentile of scores in each quarter of each year. For example, if the 75th percentile is 80, then 25 percent of games released in that quarter had a score of 80 or above. This implicitly assumes that the quality of a platform's ecosystem can be defined by the quality of its top-shelf games; bad games can just be ignored.

Percentile measures quality in proportional terms, but one might argue that the absolute number of high-quality games is more important in determining the quality of a platform's ecosystem. To that end, I also count the number of games released in each quarter of each year with a score above 80.

I look at PC as well as Sony, Microsoft, and Nintendo consoles. I consider the console manufacturers to each provide a single ecosystem; when a manufacturer has two consoles simultaneously receiving new releases, I simply aggregate the two as if they constitute a single console. This is partly for simplicity, and partly to express each manufacturer as a single ecosystem so as to measure the overall quality of that ecosystem.

 To account for review bombing, I omit user scores that differ from their respective Metascores by 30 or more points. This reduces the number of user scores in the sample of PC games from 4915 to 4749, of Playstation games from 4894 to 4785, of Nintendo games from 2794 to 2743, and of Xbox games from 3641 to 3514.

[^1]: Why yes, I do desperately wish I worked in the video game industry but don't due to a total absence of connections and talent. Thanks for asking.


### PC Video Game Quality Trend ###
There is broad agreement among professional reviewers and users when it comes to the decline quality of top-shelf PC games, although the decline is steeper when looking at user scores. There has been a decline of about 1.5 Metascore over the last 20 years according to professional reviewers, and a decline of about 4 points according to users.[^2]

There is mild disagreement between professional reviewers and users when it comes to the number of top-shelf PC games being released. According to professional reviewers, the number of top-shelf PC games being released has increased, nearly doubling over the last 20 years, whereas there has been no change according to users.[^3]

[^2]: p = 0.044 and p < 0.001, respectively
[^3]: p < 0.001 and p = 0.553, respectively

![PC Percentile Trend](pc_trend_percentile.png)
![PC Count Trend](pc_trend_count.png)


### Playstation Video Game Quality Trend ###
The overall quality of top-shelf Playstation games shows no trend according to professional reviewers, but has a steep downward trend according to users, accumulating to a decline of around 13 points over the last 20 years.[^4] Likewise, the number of top-shelf Playstation games shows no trend according to professional reviewers, but has a steep downward trend according to users, accumulating to a decline of about 18 top-shelf games being released per quarter.[^5]

[^4]: p = 0.376 and p < 0.001, respectively
[^5]: p = 0.214 and p < 0.001, respectively

![Playstation Percentile Trend](ps_trend_percentile.png)
![Playstation Count Trend](ps_trend_count.png)


### Nintendo Video Game Quality Trend ###
The overall quality of top-shelf Nintendo games shows no trend according to professional reviewers, but has a steep downward trend according to users, accumulating to a decline of around 3 points over the last 20 years.[^6] On the other hand, the number of top-shelf Nintendo games trends upwards according to both professional reviewers and users by about 12 games and 8 games per quarter, respectively.[^7]

[^6]: p = 0.738 and p < 0.001, respectively
[^7]: p < 0.001 and p < 0.001, respectively

![Nintendo Percentile Trend](nin_trend_percentile.png)
![Nintendo Count Trend](nin_trend_count.png)


### Xbox Video Game Quality Trend ###
The overall quality of top-shelf Xbox games shows no trend according to professional reviewers, but has a steep downward trend according to users, accumulating to a decline of around 9 points over the last 20 years.[^8] Likewise, the number of top-shelf Xbox games shows no trend according to professional reviewers, but has a steep downward trend according to users, accumulating to a decline of about 12 top-shelf games being released per quarter.[^9]

[^8]: p = 0.456 and p < 0.001, respectively
[^9]: p = 0.260 and p < 0.001, respectively

![Xbox Percentile Trend](xbox_trend_percentile.png)
![Xbox Count Trend](xbox_trend_count.png)


### Overall Video Game Quality Trend ###
The overall quality of top-shelf games shows no trend according to professional reviewers; but has a steep downward trend according to users, accumulating to a decline of around 7 points over the last 20 years.[^10] The number of top-shelf games has an upward trend according to professional reviewers, accumulating to an increase of around 29 top-shelf games being released per quarter; but there is a downward trend according to users, accumulating to a decline of about 16 top-shelf games being released per quarter.[^11]

[^10]: p = 0.217 and p < 0.001, respectively
[^11]: p = 0.360 and p = 0.024, respectively

![All Percentile Trend](all_trend_percentile.png)
![All Count Trend](all_trend_count.png)


### So Which Platform Is The Best? ###
It is immediately acknowledged that the title of this section is on the click-bait side of things. More accurately, this section aims to determine which platform is "best" insofar as it delivers a product that most satisfies its userbase. Because different platforms often have different users with different preferences and different expectations, "satisfaction" cannot really be extended to "best" for any arbitrary gamer. For example, a typical PC user might not view a Nintendo platform so charitably because Nintendo platforms do not emphasize the first-person shooter genre as strongly as PC users might like; but it is possible that the PC platform is still the best platform for most PC users, even if PC users are on average less satisfied than Nintendo users.

That being said, I determine which platform had the best releases on a yearly basis. The first concept of "best" is determined by doing a 10,000 bootstrap iterations for 75th percentile score, which is meant to estimate the quality of the platform's top-shelf games released in that year. The platform with the highest estimated 75th percentile score is considered the best for that year, but not necessarily uniquely so. A one-sided difference in means t-test is performed to determine which platforms are distinguishably worse than the top-scoring platform of that year. Any other platform is also considered the best for that year if the p-value of the t-test is above 0.05, in which case its top-shelf games are indistinguishable from that of the top-scoring platform with 95 percent confidence. This exercise is carried out with both Metascores and user scores, with the results shown below.

<center><b> Score of Top-Shelf Games </b></center>

|------|------------------------------|---------------------|
| Year | Pro Reviewers Best Platform  | Users Best Platform |
|------|------------------------------|---------------------|
| 2001 | Nintendo                     | Nintendo            |
| 2002 | PC                           | Playstation         |
| 2003 | Nintendo                     | Playstation         |
| 2004 | Xbox                         | Playstation         |
| 2005 | Xbox                         | Playstation         |
| 2006 | PC                           | Playstation         |
| 2007 | PC                           | Playstation         |
| 2008 | PC                           | Nintendo            |
| 2009 | Playstation                  | Nintendo            |
| 2010 | PC                           | Nintendo            |
| 2011 | Playstation                  | Nintendo            |
| 2012 | Nintendo                     | Nintendo            |
| 2013 | Nintendo                     | Nintendo            |
| 2014 | Nintendo                     | Nintendo            |
| 2015 | Nintendo                     | Nintendo            |
| 2016 | Nintendo                     | Nintendo            |
| 2017 | PC, Nintendo                 | Nintendo            |
| 2018 | Nintendo                     | Nintendo            |
| 2019 | PC, Xbox                     | Nintendo            |
| 2020 | Xbox                         | Nintendo            |
| 2021 | Xbox                         | Nintendo            |
|------|------------------------------|---------------------|

According to professional reviewers, Nintendo was the best for 9 years, PC for 7 years, Xbox for 5 years, and Playstation for 2 years. According to users, Nintendo was the best for 15 years, Playstation the best for 6 years, whereas PC and Xbox were never the best. Nintendo is clearly the favorite as far as the quality of its best bundle of games is concerned.

The exercise can be carried out using the number of top-shelf games released each year, again using both Metascores and user scores. In this context, top-shelf is any game with a score of 80 or higher. The results are shown below.

<center><b> Number of Top-Shelf Games </b></center>

|------|------------------------------|---------------------|
| Year | Pro Reviewers Best Platform  | Users Best Platform |
|------|------------------------------|---------------------|
| 2001 | Playstation                  | Playstation         |
| 2002 | PC, Playstation              | Playstation         |
| 2003 | Playstation                  | Playstation         |
| 2004 | Playstation                  | Playstation         |
| 2005 | Xbox                         | Playstation         |
| 2006 | PC, Xbox                     | Playstation         |
| 2007 | PC, Playstation, Xbox        | Playstation         |
| 2008 | Playstation                  | Nintendo            |
| 2009 | Playstation                  | Xbox                |
| 2010 | Xbox                         | Xbox                |
| 2011 | Playstation                  | Xbox                |
| 2012 | PC                           | Xbox                |
| 2013 | PC                           | PC                  |
| 2014 | PC                           | PC                  |
| 2015 | Playstation                  | PC                  |
| 2016 | PC                           | PC                  |
| 2017 | PC                           | Nintendo            |
| 2018 | Nintendo                     | Nintendo            |
| 2019 | PC                           | Nintendo            |
| 2020 | PC                           | Nintendo            |
| 2021 | PC                           | Nintendo            |
|------|------------------------------|---------------------|

According to professional reviewers, PC had the most top-shelf releases in 11 years, Playstation in 9 years, Xbox in 2 years, and Nintendo in 1 year. According to users, Playstation had the most top-shelf releases in 7 years, Nintendo in 6 years, and PC and Xbox each with 4 years. PC and Playstation appear to be favorites as far as the sheer number of high-quality games is concerned.

Summing up best years for both measures according to professional reviewers, PC has the higher number with 18, followed by Playstation with 12, Nintendo with 10, and Xbox with 8. Doing the same with user reviews, Nintendo has the highest number with 21, followed by Playstation with 15, PC with 11, and Xbox with 2. Taking the sum of wins for both professional reviewers and user reviews gives a total of 31 for Nintendo, 29 for PC, 27 for Playstation, and 10 for Xbox.


### Conclusions ###
Professional reviewers seem to be more charitable in their assessments over time compared to users, often to a degree that casts doubt upon the relevance of professional reviewers as sources of useful information for gamers in general. PC as an ecosystem seems to be holding fairly steady as far as quality is concerned, whereas Playstation and Xbox seem to be struggling, and Nintendo seems to be thriving (especially thanks to the success of the Switch). Overall, Nintendo, PC, and Playstation are all fairly similar in their overall appeal on an annual basis, whereas Xbox appears to lag behind.


#### Footnotes ####
