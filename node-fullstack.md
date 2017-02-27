# Node.js Fullstack Engineer Challenge

## Question 1

Write a couple paragraphs about yourself, your hobbies, your major achievement and why do you find Reedsy interesting.

## Question 2

**Operational Transformation** is a very popular algorithm that - along with a multitude of related technologies - supports the implementation of collaborative and concurrent editing of documents. Explain, **in your own words** and in a clear way, the general working of this algorithm/technology. (Feel free to include any diagram or image you deem useful to support your explanation.)

## Question 3

Consider a scenario where you're storing documents in a text-based format (plain text, XML/HTML, Markdown, JSON/[Delta](https://quilljs.com/docs/delta), etc) and you need to implement a document versioning feature. While working on the document, the user will have the option to save a version to 'tag' a specific state of the document.

Thus, this feature includes maintaining the full list of document versions - since it's creation up to it's current state - that should be available for the user to browse - in a way that it should be possible to visualise the diff/differences between any two versions like the image below.

![](http://content.gcflearnfree.org/topics/174/wd10_reviewing_example.png)

  

Describe, in a general way, how would you approach the implementation of such feature, namely on how documents and versions would be persisted in data. Note that documents are expected to grow significantly in size. (Again, feel free to include any diagram or image you deem useful to support your explanation.)

## Question 4 - Document Conversion Queuing Service

Implement a small text conversion queueing service (server and a simple single page web interface) using Node.js and AngularJS 1.x.

### Web Interface

The interface is very simple and comprises only of the following screen.

![](https://gist.githubusercontent.com/pedrosanta/ae0c133195fdcdb9663a41bb0cfb253a/raw/d91f7e00776fa576ba3b7ce6d094936dd158cb8f/1-conversions-screen.png)

**What we'll be looking at:** compliance with the requirements below; a solid implementation using AngularJS; adherence to Angular 1.x best practices and code style guides; functionality; code clarity and organisation.

**What we'll value as a plus:** clean and pleasant interpretation of the mockups/UI while keeping functionality; good CSS/style organisation and conventions.

### Server/Queuing Service

The server should implement a queuing system for the conversion requests: receive the request from the client/web interface, puts that request on a queue and replies back to the client with information about the queued request. After the request is processed **(optionally, check 4.1)** it can inform the client/web interface of it in some way.

Also, for the sake of demonstration purposes, the processing of each request should consist on a simple timeout, using the [`setTimeout`](https://nodejs.org/api/timers.html#timers_settimeout_callback_delay_args) method, like so:

- **HTML requests:** 10 seconds of timeout;
- **PDF requests:** 100 seconds of timeout;

Given this, the requests for HTML conversions should have more priority than PDF conversions, meaning that if there is one PDF request followed by a few HTML requests on the queue, the system should make an effort to process the HTML ones first as they are quicker. (The priority and scheduling policy, the number of HTML requests it processes/preempts over PDF, etc, is up to you to define.)

**What we'll be looking at:** compliance with the requirements below; functionality; code clarity, organisation and best practices adherence; artificial timeouts; priority and it's policy.

**What we'll value as a plus:** test coverage; concern with the further scalability of the solution.

### Requirements

To help the prompt assessment of the assignment, the following requirements are to be expected:

* You should provide a Git repo URL (GitHub, Bitbucket or GitLab, public or private, up to you) containing:
  * A `README.md` at repo root containing all the instructions to run the project and additional information you find necessary;
  * The install/config/build process shouldn't be much more than running `npm install` and `npm run start`;
* **Client:**
  * Use vanilla JS;
  * Use **AngularJS 1.x**, refrain from using angular-cli;
  * Client dependencies should be managed using [Bower](https://bower.io);
  * Resort to [grunt](https://gruntjs.com) (or [gulp](http://gulpjs.com) at most) for building/minification;
  * If you need s CSS preprocessor use [Sass](http://sass-lang.com);
* **Server:**
  * The server must be built in **Node.js** (latest LTS or latest current version) and [Express.js](http://expressjs.com);
  * If you wish to persist data, use [MongoDB](https://www.mongodb.com) - you can assume we will have a MongoDB instance (latest stable release) running with 'out of the box' default config;
  * Use **npm** for server package/dependency management, state all dependencies, and don't assume globally installed tools/cli/packages;
  * Your solution should use a queueing system, feel free to use any library to help with the implementation of the queue if you wish;
  * An artificial timeout should be added to all requests as per above and for demonstration purposes;
  * The system should implement priority to optimize availability, having HTML requests (quicker) preempt PDF requests (longer), priority and scheduling policy details are up to you to define;

### (Optional Bonus Question 4.1)

Optionally, and as a bonus, implement real time notifications and live status update on the web interface.

![](https://gist.githubusercontent.com/pedrosanta/ae0c133195fdcdb9663a41bb0cfb253a/raw/d91f7e00776fa576ba3b7ce6d094936dd158cb8f/2-conversions-notifications-screen.png)
