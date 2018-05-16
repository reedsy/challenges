# Node.js Fullstack Engineer Challenge

**Notes:** You can send this assignment as a single repo/folder with markdown and code. **For questions 3-5 use the latest Node LTS**.

## 1. About you

Tell us about one of your commercial projects with Node.js and/or AngularJS.


## 2.

Detail how would you persist in data/present a schema to store several versioned text-based documents.

It should allow to:
   - save a version representing a document state
   - keep the versions list/document history for browsing
   - browse a previous version and
   - visualize the changes/diff between two versions.

   Strive for storage size efficiency.


## 3. REST API

Implement a REST API using Express.js that handles Export and Import requests. **Usage of TypeScript is highly valued**.

The API should expose the endpoints for:
- **Posting** a request for a **new Export job**. The request must contain "bookId" and "type" ("epub" or "pdf"). The valid requests should be saved in memory.
- **Getting** a list of **export requests**, grouped by their current state.
- **Posting** a request for a new **Import job**. The request must contain "bookId", "type" ("word", "pdf", "wattpad" or "evernote") and "url" (for simplification purposes, all types should use a simple URL). The valid requests should be saved in memory.
- **Getting** a list of **import requests**, grouped by their current state.

Both export and import requests should be saved on a "pending" state and have a "created_on" timestamp. The state should be updated after a specified time (below) from "pending" to "finished" and add/update a "updated_on" timestamp.
- ePUB Export request: 10 seconds
- PDF Export request: 25 seconds
- Import requests (of all types): 60 seconds

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

Implement a **text edit operation** module that handles basic operations. An operation can be described as an array of three types of edits:

- { **move**: \<int> } to advance the caret;
- { **insert**: \<string> } to insert the string at caret;
- { **delete**: \<int> } to delete a number of chars from the caret onwards.

Implement the following methods:
- Operation.prototype.compose(operation) - Updates the operation by ‘adding’/composing it with another one
- Operation.compose(op1, op2) - Static method that returns a new operation composed by the two without changing any of them
- Operation.prototype.apply(string) - Applies the described operation on a string

Examples of compose:
```
[{ move: 1 }, { insert: 'foo' }] + [{ move: 6 }, { insert: 'bar' }] = [{ move: 1 }, { insert: 'foo' }, { move: 5}, { insert: 'bar' } ]

[{ move: 1 }, { insert: 'foo' }] + [{ move: 6 }, { delete: 2 }] = [{ move: 1 }, { insert: 'foo' }, { move: 5}, { delete: 2 } ]
```

Add test coverage to demonstrate the module functionality.

The project should be responsible for managing all the required dependencies and should run just by using `npm install` and `npm test`.
