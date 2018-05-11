# Ruby On Rails Engineer Challenge

## Prerequisites

* Docker Community Edition - https://www.docker.com/community-edition
* Make - https://www.gnu.org/software/make/

## Setup

* `make` will build the application ready for use.

## Guard

* `make guard` run both linting and testing whilst watching files

## Code Linting

* `make lint` this runs code linting

## Code Testing - Run all the specs

* `make rspec` this runs rspec.

## Bash Terminal Inside Docker Instance

* `make bash`

## Code Test Questions

[Questions](information/ruby-on-rails-engineer.md)

## Question 1

* [About Me](ruby-q1/about-me.md)
* [CV](ruby-q1/cv.md)

## Question 2

* [Feed](ruby-q2/feed.rb)
* [Feed Specs](spec/ruby-q2/feed_spec.rb)

By running `make rspec` the code for ruby-q2 is run using the fabricated data within the [spec data directory](spec/data/).

## Question 3

* [Payments](ruby-q3/)
* [Payments Specs](spec/ruby-q3/)

By running `make rspec` the code for ruby-q3 is run. 


## Question 4

* [Recommendations System - Doc](ruby-q4/recommendations.md)


## Question 5

* [Recommendations](ruby-q5/)
* [Recommendations Specs](spec/ruby-q5/)

By running `make rspec` the code for ruby-q5 is run. 

**Note: If you get a Faraday error just run `make rspec` again. It's just neo4j warming up for the first time**
