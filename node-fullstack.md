# Node.js Fullstack Engineer Challenge

You can submit all the answers to this assignment in a single repository (or as a zipped folder), containing markdown and code.

**For questions 3-5 use the latest Node LTS**.

## 1. About you

Tell us about one of your commercial projects with Node.js and/or AngularJS.


## 2. Document versioning

Detail how you would store several versioned, text-based documents, and present a schema for your solution.

It should be able to show:
   - the document in its current state
   - the document at any point in its history
   - the changes made between two versions

Strive for disk space efficiency.


## 3. Node.js REST API

Implement a REST API using Express.js that handles Export and Import requests. The solution should ideally be written in Typescript, or else using plain JavaScript's `class` structure.

The API should expose endpoints to:
- `POST` a request for a **new Export job**. Valid requests should be saved in memory. Invalid requests should return an error. The request must have the following schema:

  ```javascript
  {
    bookId: string,
    type: "epub" | "pdf"
  }
  ```

- `GET` a list of **Export requests**, grouped by their current `state` (see below).
- `POST` a request for a new **Import job**. Valid requests should be saved in memory. Invalid requests should return an error. The request must have the following schema:

  ```javascript
  {
    bookId: string,
    type: "word" | "pdf" | "wattpad" | "evernote",
    url: string
  }
  ```

- `GET` a list of **Import requests**, grouped by their current `state` (see below).

Both export and import requests should be created with a `pending` state, and with a `created_at` timestamp. An import or export should take the amount of time outlined below. After the specified time, the state should be updated from `pending` to `finished` and update an `updated_at` timestamp.

| Job type     | Processing time (s) |
| ------------ | ------------------- |
| ePub export  | 10                  |
| PDF export   | 25                  |
| import (any) | 60                  |

Add test coverage as you see fit.

The project should be responsible for managing all the required dependencies and should run just by using `npm install` and `npm start`.


## 4. AngularJS

Using AngularJS (1.x), create a basic SPA that implements the following UI.

![AngularJS 1](./images/node_4-01.png "AngularJS 1")

![AngularJS 2](./images/node_4-02.png "AngularJS 2")

- Each page should display 5 books.
- A few pages should be available in order for pagination to work.
- Book entries should be clickable and expand/collapse to show/hide more information about the selected book.
- Book stores should only be displayed when the respective URL is available; make different entries as represented on the images so different store availability scenarios are represented.
- Improve the UI as you think works best.

Add test coverage as you see fit.

The project should be responsible for managing all the required dependencies and should run just by using `npm install` and `npm start`.


## 5. Bonus Question

When multiple users are collaborating on a document, collisions in their edits inevitably occur. Implement a module that can handle basic text update operations, and combine two colliding edits into a single operation.

An operation is described as an array of any combination of three types of edits:

- `{ move: number }` to advance the caret
- `{ insert: string }` to insert the string at caret
- `{ delete: number }` to delete a number of chars from the caret onwards

Implement the following methods:
- `Operation.prototype.combine(operation)` Updates the operation by combining it with another colliding operation
- `Operation.combine(op1, op2)` Static method that returns a new operation by combining the arguments without mutating them
- `Operation.prototype.apply(string)` Applies the operation to the provided argument

For example:

```javascript
const s = "abcdefg";
const op1 = new Operation([{ move: 1 }, { insert: "FOO" }]);
const op2 = new Operation([{ move: 3 }, { insert: "BAR" }]);

op1.apply(s); // => "aFOObcdefg"
op2.apply(s); // => "abcBARdefg"

op1.combine(op2); // => [{ move: 1 }, { insert: 'FOO' }, { move: 2}, { insert: 'BAR' } ]
op1.apply(s); // => "aFOObcBARdefg"
```

Add test coverage to demonstrate the module functionality.

The project should be responsible for managing all the required dependencies and should run just by using `npm install` and `npm test`.
