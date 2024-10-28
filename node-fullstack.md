# Node.js Fullstack Engineer Challenge

 - Please answer questions to a **Production-level standard**: the kind of code you would expect to submit for code review with minimal comments
 - The assignment should take approximately 1 work day
 - Submit complete answers where possible, but if some parts of the assignment are rushed/skipped in the interests of time, please explain what you would have done, had you had more time
 - Submit answers as a zipped folder, or in a **single, private GitHub repository** shared with [**reedsyapplications**](https://github.com/reedsyapplications)
 - If questions seem ambiguous, please use your initiative and try to work as autonomously as possible:
   - highlight any assumptions you've made
   - flag things you think you would want to discuss further

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

Implement a Node.js REST API that handles Export and Import requests.

### Queueing jobs

The API should expose endpoints:

- [ ] to create a new Export job
- [ ] to create a new Import job
- [ ] that reject invalid payloads with a clear error

#### Export request body:

```typescript
{
  bookId: string;
  type: "epub" | "pdf";
}
```

#### Import request body:

```typescript
{
  bookId: string;
  type: "word" | "pdf" | "wattpad" | "evernote";
  url: string;
}
```

### Querying jobs

The API should also expose endpoints:

- [ ] to list Export jobs, grouped by their current `state` (see below)
- [ ] to list Import jobs, grouped by their current `state` (see below)

### Processing jobs

Jobs should:

- [ ] start with `state: 'pending'`
- [ ] have a `created_at` field
- [ ] maintain an `updated_at` field

For this exercise, please just wait for a set amount of time and then update the job's state to `finished` after the appropriate amount of time:

| Job type     | Processing time (s) |
| ------------ | ------------------- |
| ePub export  | 10                  |
| PDF export   | 25                  |
| import (any) | 60                  |

### Solution

Your solution **should**:

- [ ] be written to a Production-level standard
- [ ] meet the specifications outlined above
- [ ] use TypeScript or modern ES features
- [ ] have reasonable test coverage
- [ ] be scalable — this is a small app, but write it as if it will grow into a full, Production-grade server
- [ ] have the foundation for swapping out our dummy job processors for a real job processor
- [ ] focus more on demonstrating a Senior Developer skill set, rather than DevOps
- [ ] highlight any assumptions you've made; uncertainties you have; or things you would have improved with more time

Your solution **may**:

- [ ] use whatever Node.js libraries you are most comfortable with using
- [ ] use any datastore you want, including in-memory, but it should be clear how this would be swapped for a real datastore in Production
- [ ] ignore the exact details of deployment: things like containerization are a nice plus, but not necessary

## 4. SPA

Using **Vue.js**, create a basic SPA that implements the following UI:

![SPA 1](./images/node_4-01.png "SPA 1")

![SPA 2](./images/node_4-02.png "SPA 2")

### Solution

Your solution **should**:

- [ ] be written to a Production-level standard
- [ ] use Vue.js
- [ ] display 5 books per page
- [ ] have multiple pages to have pagination
- [ ] expand/collapse details when clicking the book
- [ ] have reasonable test coverage
- [ ] be scalable — this is a small app, but write it as if it will grow into a full, Production-grade SPA
- [ ] assume books will be fetched over HTTP
- [ ] highlight any assumptions you've made; uncertainties you have; or things you would have improved with more time
- [ ] use modern features of vanilla CSS or SASS. Please **do not use styling libraries** like Tailwind or Bootstrap (we want to see how you write CSS).

Your solution **may**:

- [ ] use any source data, including in-memory, but it should be clear how this would be fetched over HTTP in Production
- [ ] include end-to-end testing on top of unit tests, but this isn't expected
- [ ] improve the UI as you see fit
