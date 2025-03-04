# Front end Engineer Challenge

Submit all the answers by creating a **private** GitHub repository and sharing it with **reedsyapplications**. Alternatively, you can submit a zipped folder with all the answers.
- Your submission should include markdown and code and each answer should be in it's own directory.
- The estimated time to accomplish every task sits between 10 and 15 hours, depending on your experience.
- We expect your answers to be as polished as possible. Please write down and include any assumptions you've made as well as notes on decisions and things you would improve or add in the future.
- The bonus features, though not mandatory, might be taken into consideration as a deciding factor between candidates.


## 1. About you

Tell us about one of your commercial projects with Vue.js.


## 2. General

##### 2.1. What kind of front end projects do you enjoy working on? Why?

##### 2.2. Which are your favorite features of HTML5? How have you used them before?

##### 2.3. Explain the difference between creating a DOM element setting `innerHTML` and using `createElement`.

##### 2.4. Compare two-way data binding vs one-way data flow.

##### 2.5. Why is asynchronous programming important in JavaScript?


## 3. Styling

Given the HTML file **front-end/q3/q3.html**, implement the styling so the page matches the image below.

![Styling](./front-end/q3/images/result.jpg "Styling")

#### Bonus
- Implement styling rules that consider different screen sizes.

**Notes:**
1. This answer aims to evaluate the ability to replicate a given mockup, as close as possible, without any given details or measurements, it's intended;
2. Avoid changing the template; your answer should only style the given HTML;
3. The footer should stick to the bottom when scrolling;
4. You should use a CSS pre-processor, such as SASS or LESS.



## 4. SPA

Using Vue.js, implement an SPA that gets information from a server (explained below) and has the following pages:


### Books list

Display all available books returned from the API.
1. Synopsis should be truncated at 200 characters.
2. Book's title and cover should link to the book's individual page.
3. Though the upvote functionality is not required, the upvote state should be represented.

![Books list](./front-end/q4/images/books-list.png "Books list")


### Book page

Display a single book information, highlighting the cover and displaying the full synopsis.

![Book page](./front-end/q4/images/book.png "Book page")

The upvote functionality is **not** required, the UI should only reflect if a book has been upvoted yet or not.
For this question, you **don't** have to replicate the example screens above, feel free to implement any design that you'd like.


**Important notes:**
1. Do not change or submit the server code, your answer should focus on the client application only;
2. Add test coverage as you see fit;
3. You may use TypeScript instead of plain JS;
4. Use a CSS pre-processor;
5. Your app must be responsible for all of it's dependencies and they should be installed via `yarn` or `npm install`. The app must run by using either `yarn start` or `npm start`;
6. Your code should be polished and as close to production-level as possible.


#### Bonus

1. Implement text search on the books list (for title and synopsis);
2. Add pagination on the books list;
3. Add a comments section on the book page (UI part only).


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
