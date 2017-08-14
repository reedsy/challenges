# Node.js Fullstack Engineer Challenge

**Notes:** You can send this assignment as a single repo/folder with markdown and code. As easier to run the examples (`npm i && npm start`) the better, avoid making assumptions about globally installed packages other than `npm`, `grunt` and `gulp` and we prefer to see implementations in JavaScript.

1. Tell us about one of your commercial projects with Node.js and/or AngularJS.

2. Detail how would you persist in data/present a schema to store several versioned text-based documents. It should allow to:
   - save a version representing a document state
   - keep the versions list/document history for browsing
   - browse a previous version and
   - visualize the changes/diff between two versions.
   Strive for storage size efficiency.
   
3. Implement a simple server with a processing queue in latest Node LTS using Express.js that will provide an endpoint to receive requests for conversions for different file types (which you should consider to have different processing time). The request should be async, so the server will put the request into a queue for processing and acknowledge/respond it was accepted immediately. When it finishes should simple log it's completion on the console. The processing of these requests **should not be concurrent** (single worker) and consider the following two file types and their processing time: html with 1 sec and  pdf with 5 secs. Here's an example of an request sequence and the processing order we would expect (note how certain html requests were preempted because they take a fifth of a pdf time, optimizing processed files availability):

   ```
   // Requests
   'pdf #1', 'pdf #2', 'html #3', 'html #4', 'html #5', 'html #6', 'html #7', 'html #8', 'pdf #9', 'html #10'

   // Processing order

   'pdf #1', 'html #3', 'html #4', 'html #5', 'html #6', 'html #7','pdf #2', 'html #8', 'html #10', 'pdf #9'
   ```

4. Implement a simple directive (or component) in Angular 1.x with a template composed by two dropdowns and a text input, that requires with `ng-model` and stores the model value as a timestamp (`Date.prototype.getTime()`) but displays it as the day on the first dropdown (ex. '21'), the month abbreviated on second (ex, 'Aug') and the year on on the text input (ex. '2017'). The dropdowns and input are editable, and changes must reflect on model and vice-versa. Add test coverage as you see fit.

5. **Bonus Question**
   Implement a ‘model’ for **text edit operation** that encapsulates it's logic in Angular 1.x. An operation can be described as an array of three types of edits: { **move**: <int> } to advance the caret, { **insert**: <string> } to insert the string at caret, and { **delete**: <int> } to delete a number of chars from the caret onwards. Implement the following methods:
   - Operation.prototype.compose(operation) - Updates the operation by ‘adding’/composing it with another one
   - Operation.compose(op1, op2) - Static method that returns a new operation composed by the two without changing any of them
   - Operation.prototype.apply(string) - Applies the described operation on a string
   Examples of compose:
   ```
   [{ move: 1 }, { insert: 'foo' }] + [{ move: 6 }, { insert: 'bar' }] = [{ move: 1 }, { insert: 'foo' }, { move: 5}, { insert: 'bar' } ]

   [{ move: 1 }, { insert: 'foo' }] + [{ move: 6 }, { delete: 2 }] = [{ move: 1 }, { insert: 'foo' }, { move: 5}, { delete: 2 } ]
   ```
   Add test coverage as you see fit.
