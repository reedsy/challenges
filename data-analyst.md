# Data Analyst Assignment

As a Data Analyst at Reedsy, you will:

- design data models and pipelines to preprocess data for analytics and
  integration in our warehouse;
- collaborate with our developers in adapting our data infrastructure
  to our needs;
- create dashboards and put in place KPIs to monitor our performance;
- conduct data analysis (eg. to optimize liquidity on our marketplace) and
  communicate results to drive business decisions;
- work with different functions in our organization that have specific data
  insight needs (eg. our marketing team for lead acquisition and growth);
- improve funnel conversion tracking through our entire ecosystem;
- proactively find insights that help us make better products;
- use Machine Learning and NLP (eg. to categorize projects submitted on the
  marketplace);
- manage our data stack and contribute to the development of self-service
  analytics to improve data access across the company.

We are looking for data-aware candidates that can help us with create novel ways to
approach out data, both from the analytical and engineering perspectives. For
this reason, we will assess and value your data engineering skills in addition to
those required for classic Data Analyst roles.

*Describe your thought process with detail and clarity.* Even if you don't get to a solution/conclusion on any of the following questions, make sure that you provide a detailed explanation to help us understand your approach and assumptions.

## Question 0

Write a paragraph about yourself, your hobbies and your major achievements in your career or study so far. Add another one about your professional experience and commercial projects you've been involved with.

## Part A

Consider Bookly, an internet company that owns a marketplace for selling books, a blog and other complementary online products with an overlapping user base. Each product is backed by its own independent Ruby web server and relational SQL database.

Bookly has approx 100k books and 1M users.

### Question 1

The Marketing Team at Bookly wants to merge and analyze all the data that is being collected by the different products in order to extract useful business insights of various kinds.
Examples of such analytics include (but are not restricted to):

- List all-time top rated books and trending ones;
- Measure user sign-up rate over certain periods (weekly, quarterly, etc);
- Show the total number of real-time (current) page views for any given book description page (product page);
- ...

Design a conceptual data pipeline to drive and aggregate data from all the different sources to ultimately be accessible by a user-friendly data exploration/dashboarding tool of your choice. Feel free to pick any technology available (e.g. open source, cloud providers, etc.).

_Describe the different components of the architecture, tools involved and compare possible approaches._

### Question 2

The Customer Support team spends considerable time scanning through customer reviews and comments in order to filter out illegitimate ones. Multiple factors can contribute to label comments as authentic or not:

- Comment is made by a registered user vs. anonymous;
- Level of user activity (eg: number of past reviews and comments);
- Content of the comment (eg: unauthorized advertising)
- ...

In order to automate the filtering process, design a conceptual, real-time, decision support system that takes data as input (user properties, user actions, content, etc) and automatically labels comments as legitimate/illegitimate for the Customer Support Team to quickly flag and remove the unwanted.

_Describe possible approaches and architecture, focusing more on algorithms, libraries and tools that could be used._

## Part B

The marketing Team at Bookly introduced A/B Testing on their blog - each blog post displays a registration popup picked up from a collection of pre-configured popups. Popups can differ in certain properties such as title, description and picture.

The raw dataset in [dataset.tsv](data/dataset.tsv) offers a table with each combination of blog post and registration popup, their corresponding properties and statistics like the total number of page views and registrations. *Bookly's main goal is to convert page views into registrations*.

Other considerations:

- each A/B experiment has a start date;
- rows with empty _popup_version_ values are not running A/B experiments.

### Question 3

For each A/B experiment, find the most performant popup version (A or B) and show the corresponding conversion rate.

_Describe in detail all the steps you take to perform the analysis, provide code snippets, relevant data transformations and results._

### Question 4

For each start date, compute the total views, registrations and conversion for that date. Present the results in the following formats:

1. a table where we can see the views, registrations and conversion value per start date;
2. a chart where we can see the evolution of conversion over time (views and registrations not necessary here).

_As before, provide code snippets and relevant data transformations._
