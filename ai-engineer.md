# AI Engineer

## Job Description

https://wellfound.com/jobs/3365364-ai-engineer-remote-europe


## Agentic workflow

Booksy is a cooperative library where the lent books are owned by the members,
proud of its very curated collection of 20 books that can be lent by patrons.
The collection is renewed each month. 5 books are kept, 15 books will leave the
library, and 15 new ones will be added.

### Question 1

Using code-based, open-source tools, build a simple agentic workflow with two
agents:

- a decision-making agent that will select the five books that Booksy should
  keep this month;
- a content personalization agent that will send an email to the owners of the
  books that won't be kept in the collection this month to explain the
  decision. We don't expect the emails to be sent, but they should be in your
  repository.

[data.csv](ai/data.csv) contains an example of what the agent's input data
looks like.

Explain your design decisions.

### Question 2

If we have spare time, what other agents might make sense to add to this
workflow?

### Question 3

How would you design a system to detect when the workflow starts making
systematically bad decisions?


## Style analysis

You're an AI Engineer at a SaaS company. Your customer support team has a
distinctive, helpful brand voice, but the new AI chat assistant sounds "robotic
and corporate." Customers complain that it doesn't match your human agents.

### Question 4
Describe a system to generate responses that match the style of each support
member. Detail your architectural decisions.

### Question 5
Assuming your initial system works, but sometimes customers still complain
responses are "cold and unhelpful." Describe how you would design a system that
flags "corporate robot" responses before showing them to customers?
