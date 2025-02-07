# Front end Engineer Challenge

Submit all the answers by creating a **private** GitHub repository and sharing it with **reedsyapplications**. Alternatively, you can submit a zipped folder with all the answers.
Your submission should include markdown and code and each answer should be in it's own folder.

The estimated time to accomplish every task sits between 10 and 15 hours, depending on your experience.


## 1. About you

### Project Overview

Tech Stack: Vue.js, Vuetify, Vuex, Chart.js
Industry: Business Intelligence & AI
Type: Progressive Web App (PWA)

At LTPlabs, I led the front-end development of AIR, a SaaS Vue PWA for AI-driven business intelligence. Built from scratch using Vue.js, Vuetify, Vuex, and Chart.js, the platform provided interactive data visualization and workflow automation. I designed a low-code flowchart-based UI, improving usability for non-technical users. I implemented PWA features like offline support. With no dedicated designer, I also contributed to UI/UX decisions, ensuring a seamless user experience.


## 2. General

##### 2.1. What kind of front end projects do you enjoy working on? Why?

I enjoy working on interactive web applications that enrich the user experience and also on its UI components ensuring consistency, maintainability and scalability across the application. These projects allow me to combine UI/UX design and development skills, which is something I’m passionate about.

##### 2.2. Which are your favorite features of HTML5? How have you used them before?

SVG: It's a vector image format that stays sharp at any size and that's why I love it. It supports interactivity, animations, and works better than PNG or JPG for scalable graphics. I've used it Apache Echarts, a chart library, as a render option. Also use it always in logos.

Web Sockets: In terms of UX its a winner for users, and that's why I love this feature. I just don't have experience with it but I can understand its potencial. One of my goals this year is to apply this technology to my portfolio website so that I can gain experience with it and enhance my portfolio UX.

Semantic Elements: They basically help to structure HTML and it improves readability. Also gives meaning to web content, improves SEO, accessibility, and maintainability. I use it a lot when developing any front end application througout my career.

##### 2.3. Explain the difference between creating a DOM element setting `innerHTML` and using `createElement`.

`innerHTML` is prone to XSS attacks and forces the browser to reparse the entire content and `createElement` is safer because it creates a new DOM element without attacks risks or to reparse it all, so `createElement` is better to use. 

##### 2.4. Compare two-way data binding vs one-way data flow.

When talking about two-way data binding the UI and application state are linked, so what changes in the UI is update the state, and changes in the state update the UI automatically. On the contrary to this, one-way data flow is when the data flows in a single direction, from the application state to the UI.

##### 2.5. Why is asynchronous programming important in JavaScript?
Javascript is single threaded, so it can only execute one task at a time in a single sequence. So the benefit of using it allows multiple operations to run in the background and fetches data without blocking other tasks. So it enhances the UX and makes the applications smoother and faster.

## 3. Styling

Given the HTML file **front-end/q3/q3.html**, implement the styling so the page matches the image below.

![Styling](./front-end/q3/images/result.jpg "Styling")

#### Bonus
- Implement styling rules that consider different screen sizes.

**Notes:**
- The footer should stick to the bottom when scrolling;
- You can, and should, use a CSS pre-processor, such as SASS or LESS;
- Avoid changing the template, your answer should only style the given HTML.


## 4. SPA

Using Vue.js, implement an SPA that gets information from a server (explained below) and has the following pages:


### Books list

Display all available books returned from the API.
- Synopsis should be truncated at 200 characters.
- Book's title and cover should link to the book's individual page.
- Though the upvote functionality is not required, the upvote state should be represented.

![Books list](./front-end/q4/images/books-list.png "Books list")


### Book page

Display a single book information, highlighting the cover and displaying the full synopsis.

![Book page](./front-end/q4/images/book.png "Book page")

The upvote functionality is **not** required, the UI should only reflect if a book has been upvoted yet or not.
For this question, you **don't** have to replicate the example screens above, feel free to implement any design that you'd like.


**Important notes:**
- Do not change or submit the server code, your answer should focus on the client application only;
- Add test coverage as you see fit;
- You may use TypeScript instead of plain JS;
- Use a CSS pre-processor;
- Your app must be responsible for all of it's dependencies and they should be installed via `yarn` or `npm install`. The app must run by using either `yarn start` or `npm start`.


#### Bonus

- Implement text search on the books list (for title and synopsis)
- Add pagination on the books list
- Add a comments section on the book page


### Server

In order to solve this problem, a simple server is provided, which you should use to get the data.
Head into `front-end/q4/server` and install the server dependencies using:

```bash
yarn install
```

or

```bash
npm install
```

Run the server using:

```bash
yarn server
```

or

```bash
npm run server
```

The server should be running on port `3000`.

#### Available routes

#### http://localhost:3000/books

Returns a list of books, with their info.

#### http://localhost:3000/books/SLUG

Returns the book information for the given SLUG (404 otherwise).
