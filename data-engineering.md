# Data Engineering Assignment

### Question 1

Write a paragraph about yourself, your hobbies and your major achievements in your career or study so far. Add another one about your professional experience and commercial projects you've been involved with.

## Part A

Consider Bookly, an internet company that owns a marketplace for selling books, a blog and other complementary online products with an overlapping user base. Each product is backed by its own independent Ruby web server and relational SQL database.

### Question 2

The Marketing Team at Bookly wants to merge and analyze all the data that is being collected by the different products. Examples of such analytics include:

- List all-time top rated books and trending ones; 
- Measure user sign-up rate over certain periods (weekly, quarterly, etc);
- Show the total number of real-time page views for any given book page;

Design a conceptual data pipeline to drive and aggregate data from all the different sources to ultimately be accessible by a user-friendly data exploration/dashboarding tool of your choice.

_Describe the different components of the architecture, tools involved and compare possible approaches._

### Question 3

The Customer Support team spends considerable time scanning through customer reviews and comments in order to filter out illegitimate ones. Multiple factors can contribute to label comments as authentic or not:

- Comment is made by a registered user vs. anonymous;
- Level of user activity (eg: number of past reviews and comments);
- Content of the comment (eg: unauthorized advertising)
- ...

In order to automate the filtering process, design a conceptual, real-time, decision support system that takes data as input (user properties, user actions, content, etc) and automatically labels comments as legitimate/illegitimate for the Customer Support Team to quickly flag and remove the unwanted.

_Describe the different components of the architecture, tools involved and compare possible approaches._

## Part B

The marketing Team at Bookly introduced A/B Testing on their blog - each blog post will show a given registration popup from a set of pre-configured popups.
The raw dataset in [dataset.tsv](data/dataset.tsv) offers a table with various content properties and the conversion rates for each combination of blog post and registration popup.

### Question 4

What is the major contributor to user registrations? In other words, what is the most relevant factor that contributes the most to convert user views into user registrations?

_Describe in detail all the steps you take to perform the analysis, provide code snippets, relevant data transformations and results._

### Question 5

Explore the dataset. What other insights can be extracted?

_Describe in detail all the steps you take to perform the analysis, provide code snippets, relevant data transformations and results._
