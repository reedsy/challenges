# Node.js Fullstack Engineer Challenge

## Question 1

Write a couple paragraphs about yourself, your hobbies, your major achievement and why do you find Reedsy interesting.

## Question 2

**Operational Transformation** is a very popular algorithm that - along with a multitude of related technologies - supports the implementation of collaborative and concurrent editing of documents. Explain, **in your own words** and in a clear way, the general working of this algorithm/technology. (Feel free to include any diagram or image you deem useful to support your explanation.)

## Question 3

Consider a scenario where you're storing documents in a text-based format (plain text, XML/HTML, Markdown, JSON/[Delta](https://quilljs.com/docs/delta), etc) and you would need to implement a document versioning feature. While working on the document, the user will have the option to save the current state of the document as a version and continue to do further edits.

This feature also includes maintaining the full history of document versions - since it's creation up to it's current state - which should be available for the user to browse. **Optionally, and as a bonus**, it should also be possible to visualise the diff/differences between any two versions **(check 3.1 below)**.

Describe, in a general way, how would you approach the architectural design and implementation of such feature, including how documents and versions would be persisted in data and overall behaviour of the system. (Again, feel free to include any diagram or image you deem useful to support your explanation.)

### (Optional Bonus Question 3.1)

Optionally, and as a bonus, describe how would your proposal enable the visualisation of the differences - in terms of edits, insertions and deletes, formatting, etc - between <u>any two arbitrary document versions</u> (including the abstract current state 'version').

You could use the following image as a reference how changes should be visualised:

![](http://content.gcflearnfree.org/topics/174/wd10_reviewing_example.png)

## Question 4 - Document Conversion Queuing Service

Implement a small text conversion queueing service (server and a simple single page web interface) using Node.js.

### Web Interface

The interface is very simple and comprises only of the following screen.

![](https://gist.githubusercontent.com/pedrosanta/ae0c133195fdcdb9663a41bb0cfb253a/raw/d91f7e00776fa576ba3b7ce6d094936dd158cb8f/1-conversions-screen.png)

You can use any libraries or framework you deem necessary. Also, please note we value using AngularJS as a plus.

**What we'll be looking at:** functionality; code clarity and organisation.

**What we'll value as a plus:** a solid and clear implementation using AngularJS; creative and pleasant interpretation of the mockups/UI while maintaining core functionality; good CSS/style organisation and conventions.

### Server/Queuing Service

The server should implement some sort of queuing system for the conversion requests: receive the request from the client/web interface, puts that request on a queue and replies back to the client with information about the queued request. After the request is processed **(optionally, check 4.1)** it can inform the client/web interface of it in some way.

Also, for the sake of demonstration purposes, the processing of each request should consist on a simple timeout, using the [`setTimeout`](https://nodejs.org/api/timers.html#timers_settimeout_callback_delay_args) method, like so:

- **HTML requests:** 10 seconds of timeout;
- **PDF requests:** 100 seconds of timeout;

Given this, the requests for HTML conversions should have more priority than PDF conversions, meaning that if there is one PDF request followed by a few HTML requests on the queue, the system should make an effort to process the HTML ones first as they are quicker. (The priority policy, the number of HTML requests it processes/preempts over PDF, etc, is up to you to define.)

**Requirements:**

- The server must be built in <u>Node.js</u> and feel free to depend of any middleware you find necessary;
- You should implement a queueing system, feel free to use any library to help with the implementation of the queue if you wish;
- If you wish to persist data, we recommend using [MongoDB](https://www.mongodb.com), but we're open to other storing approaches and software, provided they make sense to the scenario;
- An artificial timeout should be added to all requests as per above and for demonstration purposes;
- The system should implement priority to optimize availability, having HTML requests (quicker) preempt PDF requests (longer), policy details are up to you to define;

**What we'll be looking at:** functionality; code clarity, organisation and best practices adherence; artificial timeouts; priority and it's policy.

**What we'll value as a plus:** test coverage; concern with the further scalability of the solution.

### (Optional Bonus Question 4.1)

Optionally, and as a bonus, implement real time notifications and live status update on the web interface.

![](https://gist.githubusercontent.com/pedrosanta/ae0c133195fdcdb9663a41bb0cfb253a/raw/d91f7e00776fa576ba3b7ce6d094936dd158cb8f/2-conversions-notifications-screen.png)
