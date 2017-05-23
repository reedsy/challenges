# Node.js Fullstack Engineer Challenge

## Question 1

Write a couple paragraphs about yourself, your hobbies, your major achievement and why do you find Reedsy interesting.

## Question 2

**Operational Transformation** is a very popular algorithm that - along with a multitude of related technologies - supports the implementation of collaborative and concurrent editing of documents. Explain in a clear way the workings of this algorithm. Feel free to include any diagram, (pseudo)code excerpt or image you deem useful to support your explanation. If you're not familiar with the OT algorithm - it's ok, there's plenty of resources to read before answering. It's important for us to know your capacity to learn, extract valuable information and present technical ideas to others.

## Question 3

Consider a scenario where you're storing documents in a text-based format (plain text, XML / HTML, Markdown, JSON / [Delta](https://quilljs.com/docs/delta), etc) and you need to implement a document versioning feature. While working on the document, the user will have the option to save a version to *tag* a specific state of the document.

Thus, this feature includes maintaining the full list of document versions - since it's creation up to it's current state - that should be available for the user to browse - in a way that it should be possible to visualise the diff between any two versions like the image below.

![](http://content.gcflearnfree.org/topics/174/wd10_reviewing_example.png)

Describe, in a general way, how would you approach the implementation of such feature, namely on how documents and versions would be persisted, accessed or compared. Again, feel free to include any diagram or image you deem useful to support your explanation. Focus on the back-end part, don't worry about the actual UI or diff presentation. Justify your decision by explaining pros and cons of important features (reliability, performance, infrastructure / storage requirements, ease of use) and how these will change with growing volume of documents. Note that documents are expected to also grow significantly in content size. There's plenty of solutions out there for this or similar problems which should help you get started and see what are the actual challenges.

## Question 4 - Document Conversion Queuing Service

Implement a small text conversion queueing service (server and a simple single page web interface) using Node.js and Angular.js 1.x.

### General requirements

To help the prompt assessment of the assignment, the following requirements are to be expected:

* You should provide a Git repo URL (GitHub, Bitbucket or GitLab, public or private, up to you) containing:
* Project should contain `README.md` at repo root containing all the instructions to run the project and additional information you find necessary
* The install / config / build process shouldn't be much more than running `npm install` and `npm run start`

### Front-end / Web Interface

The interface is very simple and comprises only of the following screen. You don't need to implement actual file upload and conversion, we just need list of tasks to visualise jobs processing. Here's just example wireframe of how it could look like:

![](https://gist.githubusercontent.com/pedrosanta/ae0c133195fdcdb9663a41bb0cfb253a/raw/d91f7e00776fa576ba3b7ce6d094936dd158cb8f/1-conversions-screen.png)

### Requirements

* implement in Javascript or Coffeescript
* use `AngularJS 1.x`
* refrain from using `angular-cli`
* don't bloat code with lots of boilerplate
* client dependencies should be managed using [npm](https://www.npmjs.com) or [Bower](https://bower.io)
* resort to [grunt](https://gruntjs.com) (or [gulp](http://gulpjs.com) at most) for building/minification
* if want to use a CSS preprocessor use [Sass](http://sass-lang.com)

#### What we'll be looking at

* solid implementation using AngularJS 1.x
* adherence to Angular 1.x best practices and code style guides
* functionality (UI shouldn't break and clearly visualise functional limits)
* code clarity, modularisation and organisation

#### What we'll value as a plus

* test coverage
* clean and pleasant interpretation of the mock-ups / UI while keeping functionality
* good CSS / style organisation and conventions observance

### Back-end / Queuing Service

The server should implement a queuing system for the conversion requests: receive the request from the client/web interface, puts that request on a queue and replies back to the client with information about the queued request. After the request is processed it can inform the client/web interface of it in some way.

Also, for the sake of demonstration purposes, the processing of each request should consist of a simple timeout, using the [`setTimeout`](https://nodejs.org/api/timers.html#timers_settimeout_callback_delay_args) method:

* HTML requests: 10 seconds of timeout
* PDF requests: 100 seconds of timeout

The requests for HTML conversions should have more priority than PDF conversions, meaning that if there is one PDF request followed by a few HTML requests on the queue, the system should make an effort to process the HTML ones first as they are quicker. To make it easier allow only one conversion a time (single processing worker). The scheduling policy, the number of HTML requests it processes / preempts over PDF are up to you to define.

#### Requirements

* implement in Javascript
* the server must be built in `Node.js` (latest LTS) and [Express.js](http://expressjs.com)
* if you wish to persist data, use [MongoDB](https://www.mongodb.com) - you can assume we will have a MongoDB instance (latest stable release) running with 'out of the box' default config
* Use `npm` for server package / dependency management, state all dependencies and do not assume globally installed tools / cli / packages
* feel free to use any external queue library to help with the implementation if you wish

#### What we'll be looking at:

* functionality
* code clarity, organisation and best practices adherence
* artificial timeouts
* priority and it's policy

What we'll value as a plus:

* test coverage
* concern with the further scalability of the solution
* possibility to set concurrency

### (Optional Bonus Question 4.1)

Optionally, and as a bonus, implement real time notifications and live status update on the web interface.

![](https://gist.githubusercontent.com/pedrosanta/ae0c133195fdcdb9663a41bb0cfb253a/raw/d91f7e00776fa576ba3b7ce6d094936dd158cb8f/2-conversions-notifications-screen.png)
