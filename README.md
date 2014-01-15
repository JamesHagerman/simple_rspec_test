simple_rspec_test
=================

This project is nothing more then a simple starter for writing rspec tests without using a full Rails environment.


Installing
==========

To get this system running, we need a few things on the local machine:

git
RVM
Ruby 1.9.3 (from rvm)
This repo's source code
bundler (in the rvm gemset named simple_rspec_test)

We will assume that you already have git... 

Step one: Installing RVM:
-------------------------

\curl -sSL https://get.rvm.io | bash

Step two: Installing Ruby 1.9.3 using RVM:
------------------------------------------

rvm install 1.9.3

Step three: Get this repo's source on to your local machine:
------------------------------------------------------------

Pick a directory for all this crap to live... and cd into that directory:

cd ~/development
git clone https://github.com/JamesHagerman/simple_rspec_test.git

Once that's finished, cd in to that directory.

If you downloaded this repo before installing RVM, you should cd out and then back into the projects root directory so RVM loads the correct gemset.

cd simple_rspec_test

Step four: Install Bundler into the projects gemset:
----------------------------------------------------

gem install bundler

Step five: Run bundler:
-----------------------

bundle install


Step six: Run the tests:
------------------------

rspec root/spec/my_model_spec.rb

Writing your own tests:
=======================

All tests should live in the root/spec/ directory. Each test should either it's own file or put in a file with a bunch of other related tests.

To use capybara, you will need to include capybara in the test like this:

ToDo: Finish this doc.