# Data Scientist Assignment

## Question 1

Describe a commercial project in which you set up and analysed tracking data.
What actions came out of this work?

## Question 2

Imagine a project with three basic components:
* Public app with client-facing landing pages
* Internal SPA app for registered users
* Mobile app for a smaller project (sharing only part of the functionality and users)

Users can browse pages, search & buy products using the interal app and
apply for other services using mobile app.

Design an event-based, tracking system which would aggregate and visualize
collected events.

Assuming that existing product has lots of different storage solutions, what
will be the source of truth for the tracking system? How about the data
from time before events collection started?

What tools and solutions would you use?

## Question 3

There are not only multiple apps but also many devices users can have and
access these. How would you solve the problem of assigning a proper user
to anonymous events sent before user was known. What we can do if user
keeps using other devices without authentication?

## Question 4

There's number of reports with tables and charts to be done each week. What tools
are you going to use to automate this process and visualise your own statistics?

## Question 5

Implement simple API to store and process events described in Question #2.
Keep in mind that it has to be fast and there might be multiple actions
required to process each event (like reconciliation of past events,
notifications or recalculation of statistics).
As data source use CSV files which can be found in `data` folder.
