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
