# Node.js Backend Engineer Challenge

You can submit all the answers to this assignment in a **private**, single repository or as a zipped folder, containing markdown and code. If you use GitHub, please share your answers with [**reedsyapplications**](https://github.com/reedsyapplications).

Answering all the questions to a Production-level standard should take approximately 1 work day.

**For coding questions use the latest Node LTS**.

## 1. About you

Tell us about one of your commercial projects with Node.js and/or Vue.js.


## 2. Document versioning

Detail how you would store several versioned novels.

Your approach should:

- [ ] show the novel in its current state
- [ ] show the novel at any point in its history
- [ ] show the changes made between two versions
- [ ] prioritize disk space efficiency
- [ ] discuss any trade-offs made, as well as potential mitigations
- [ ] consider any potential domain-specific issues

## 3. Node.js REST API

Implement a REST API using Express.js that handles Export and Import requests.

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

Your solution should:

- [ ] use TypeScript or modern ES features
- [ ] have reasonable test coverage
- [ ] be scalable — this is a small app, but write it as if it will grow into a full, Production-grade server
- [ ] be data store agnostic

## 4. Operation collision

When multiple users are collaborating on a document, collisions in their edits inevitably occur. Implement a module that can handle basic text update operations, and combine two colliding edits into a single operation.

An operation is described as an array of any combination of three types of edits:

- `{ skip: number }` to skip characters
- `{ insert: string }` to insert the given string
- `{ delete: number }` to delete a number of characters

Implement the following methods:
- `Operation.prototype.combine(operation)` Updates the operation by combining it with another colliding operation
- `Operation.combine(op1, op2)` Static method that returns a new operation by combining the arguments without mutating them
- `Operation.prototype.apply(string)` Applies the operation to the provided argument

For example:

```javascript
const s = "abcdefg";
const op1 = new Operation([{ skip: 1 }, { insert: "FOO" }]);
const op2 = new Operation([{ skip: 3 }, { insert: "BAR" }]);

expect(op1.apply(s)).to.equal('aFOObcdefg');
expect(op2.apply(s)).to.equal('abcBARdefg');

const combined1 = Operation.combine(op1, op2); // => [{ skip: 1 }, { insert: 'FOO' }, { skip: 2}, { insert: 'BAR' } ]
expect(combined1.apply(s)).to.equal('aFOObcBARdefg');

const combined2 = Operation.combine(op2, op1);
// NB: This expectation is true for this specific case, but not in the general case.
// Can you think of an example where this assertion might not be true?
expect(combined2.apply(s)).to.equal(combined1.apply(s));
```

Your solution should:

- [ ] use TypeScript or modern ES features
- [ ] have reasonable test coverage
- [ ] explain any assumptions made
