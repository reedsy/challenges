# Quality Assurance

## 1. About you

Tell us briefly (2-5 paragraphs) about your experience testing a commercial project.


## 2. Manual testing

There's a simple Node.js bookshelf app in the `qa/` directory.

To run it:

  1. [Install Node.js v20](https://nodejs.org/en/learn/getting-started/how-to-install-nodejs)
  2. `cd qa/`
  3. `npm install`
  4. `npm start`
  5. The frontend will be running at http://localhost:5173/


Once the app is up and running, please perform manual adhoc testing:

  - [ ] Write up any bugs you find, as if you're raising a ticket
  - [ ] Include repro steps
  - [ ] Test across multiple devices and browsers, and include this information where relevant
  - [ ] Even if they're not strictly bugs, flag any parts of the UI/UX that feel like they could be improved, and provide a possible suggestion


## 3. Automated testing

Please write some automated end-to-end tests for this app.

You **should**:

  - [ ] include simple instructions for running the tests, including installing any tools
  - [ ] write **failing** tests for the **two highest priority bugs**
  - [ ] explain why these are the highest priority bugs
  - [ ] write a **passing** test for a working feature
  - [ ] explain why this passing test is worthwhile
  - [ ] write robust, maintainable tests
  - [ ] should not rely on the test environment having stable data

You **may**:

  - [ ] use any automated testing tools you like
