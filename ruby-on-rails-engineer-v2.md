## Job Description

https://angel.co/reedsy/jobs/64263-ruby-on-rails-engineer

## Preface

Write a paragraph about yourself, your hobbies and your major achievements in your career or study
so far. Add another one about your professional experience and commercial projects you've been involved with.

## Reedsy's (fictional) Merchandising Store

Reedsy would like to expand its business to include a merchandise store for our professionals. It will be comprised of 3 items:

```
Code         | Name                   |  Price
-------------------------------------------------
MUG          | Reedsy Mug             |   6.00€
TSHIRT       | Reedsy T-shirt         |  15.00€
HOODIE       | Reedsy Hoodie          |  20.00€
```

We would like you to provide us with a small web application to help us manage this store.

Some important notes before diving into the specifics.
- we expect this challenge to be done using Ruby 2.6+;
- we are not expecting your application to have a UI: assume that your work would be used to provide that at a later stage;
- while using a Ruby web framework of your choice might be helpful, keep in mind that if you'd like to stick to "vanilla" Ruby that's ok too;
- any detail that is not specified throughout this assignment is for you to decide. Our questions and examples are agnostic on purpose, so as to not bias your toward a specific format. If you work at Reedsy you will make decisions and we want that to reflect here. This being said, if you spot anything that you **really** think should be detailed here, feel free to let us know;
- keep in mind that there are plans to expand this store in the future so make sure you write code you would be happy working on — and deploying — in the future;

### Question 1

Implement an API endpoint that allows listing the existing items in the store, as well as their attributes.

### Question 2

Implement an API endpoint that allows updating the price of a given product.

### Question 3

Implement an API endpoint that allows one to check the price of a given list of items.

Some examples on the values expected:
```
Items: MUG, TSHIRT, HOODIE
Total: 41.00€
```

```
Items: MUG, TSHIRT, MUG
Total: 27.00€
```

```
Items: MUG, TSHIRT, MUG, MUG
Total: 33.00€
```

```
Items: MUG, TSHIRT, TSHIRT, TSHIRT, TSHIRT, MUG, HOODIE
Total: 92.00€
```

### Question 4

We'd like to expand our store to provide some discounted prices in some situations.

- 2-for-1 (buy two, one of them is free) for the `MUG` item;
- 30% discounts on all `TSHIRT` items when buying 3 or more.

Make the necessary changes to your code to allow these discounts to be in place and to be reflected in the existing endpoints.

Here's how the above price examples would be updated with these discounts:
```
Items: MUG, TSHIRT, HOODIE
Total: 41.00€
```

```
Items: MUG, TSHIRT, MUG
Total: 21.00€
```

```
Items: MUG, TSHIRT, MUG, MUG
Total: 27.00€
```

```
Items: MUG, TSHIRT, TSHIRT, TSHIRT, TSHIRT, MUG, HOODIE
Total: 68.00€
```
