# Front end Engineer Challenge

You can submit all the answers to this assignment in a single repository (or as a zipped folder), containing markdown and code.

## 1. About you

Tell us about one of your commercial projects with Vue.js or AngularJS.


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
- The footer should stick to the bottom when scrolling.
- You can, and should, use a CSS pre-processor, such as SASS or LESS.


## 4. SPA

Using Vue.js or AngularJS, implement an SPA that gets information from a server (explained below) and has the following pages:


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
