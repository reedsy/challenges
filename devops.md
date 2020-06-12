### Job Description

Lead DevOps Engineer

As DevOps Engineer, you will be responsible for managing our operations, building our delivery
pipelines and monitoring our platform to ensure the reliability of our services.

Requirements

* Strong background in Linux administration
* Automation and configuration management
* Experience with Ruby web frameworks, specifically Ruby on Rails
* Experience with databases: MySQL, MongoDB
* Experience with cloud platforms, provisioning tools & monitoring tools
* Experience with web technologies and websites running Apache or NGINX
* Experience with Node.JS is also a plus

Additionally:

* Experience in highly-available IT operations: fault-tolerance, zero-downtime deploy, scalability
* Continuous Integration and Continuous Delivery best practices
* Security Best Practices / Secure architecture and design

#### Question 1

Write a paragraph about yourself, your hobbies and your major achievements in your career or study
so far. Add another one about your professional experience and commercial projects you've been
involved with.

#### Question 2

* Describe your experience with cloud platforms such as Google Cloud, Amazon AWS, DigitalOcean, etc.
* Describe your experience with provisioning tools such as Chef, Puppet, Ansible, etc.
* Describe your experience with monitoring tools such as Stackdriver, Datadog, Nagios, etc.

#### Question 3

Explain how you would create an unified deployment platform to push new release on production.

Requirements:

    * It can be automated (from CI) and triggered manually (when manual actions are required)
    * It checks CI success before deploy a new release
    * It keeps track of every deployment
    * It queues deployment to avoid conflicts
    * It allows quick rollback
    * It ensures deployment integrity through process monitoring

#### Question 4

Create a [Terraform](https://www.terraform.io/) provisioning for [Google Cloud
Compute](https://cloud.google.com/compute).

Requirements:

    * It generates a new GCP project with a simple HTTP load balancing architecture (only one http service).

#### Question 5 (bonus)

Create a [Chef](https://www.chef.io/) Cookbook to install a tool (as your convenience) to backup
databases (MySQL, MongoDB, etc..) and backup files (S3, Google Cloud Storage, etc...).
