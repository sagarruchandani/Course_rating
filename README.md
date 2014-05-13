SJSU course rating and recommendation system
=============

by: team 2 (CMPE272)

web url: recourse.sagarruchandani.cloudbees.net

Recourse is a web application that helps students get recommendations in selecting courses in their majors by utilizing ratings from their peers and alumni. It uses modern collective intelligence and algorithms in order to do so. 

Pearson Correlation coefficient is proven most efficient of all of the Collaborative Filtering algorithms. It is a user based recommender which matches users with similar users based on his and others taste. Usually these types of algorithms are used in shopping websites wherein a user clicks an item and the website suggests him similar items or users who did this also did that type of stuff. We took this approach and tested it in a completely different domain i.e. student course recommendation.

Although for a course recommendation, it would be more wise if more than one parameters are considered. This project, however, experiments taking only one aspect into account i.e. the courses a student has taken and the ratings he has given.

Based on a student's rating on particular subjects, from a huge set of past ratings by many students a relatively smaller set of similar students was formed called neighborhood with the help of Apache mahout and its built in pearson correlation similarity. Then on the neighborhood further another pearson correlation algorithm was applied specifying the exact number of courses required as output.

Apart from rating a course and getting recommendations, a student can view comments of any subject where we also display a scatter chart as we believe a course may improve or degrade over time and this graph can better help a student realize the trend with that particular subject and make more accurate choices.

Technologies used: Groovy, Grails, Apache Mahout, Google Visualization, MySQL, GSP/JSP/HTML,CSS


