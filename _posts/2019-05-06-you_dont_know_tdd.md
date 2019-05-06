---
layout: post
title:  "You don't know TDD"
date:   2019-05-06 16:45:02 +0200
categories: TDD software
---

Okay, maybe you think you know what TDD is but let me tell you a story.

Some years ago there was this young developer who thought that, even when she/he had a lot to learn, she/he at least got a pretty solid foundation. She/He knew that coupling is bad and classes should be single responsibility and the methods inside the class should be also single responsibility in order to produce maintainable and extensible software.

To this point, most of us can resonate with this story and laugh at ourselves for being that naive. Of course, we think we write decoupled code now but the truth is most developers don't know what TDD is and they write coupled code, less coupled that some years ago because of practice, but coupled none the less. Proof of that is on your companies repositories and how developers shudder every time they need to change something on the codebase.

## TDD is not Unit Testing but Unit Testing is TDD.

TDD, as the name implies, is the practice of developing software aided by tests. One of the tools are Unit Tests but if you only use those you get something like this:

{% twitter https://twitter.com/thepracticaldev/status/687672086152753152 %}

Integration tests serve the purpose of checking that your code makes overall sense and does what is expected to do.

So, what purpose Unit Tests serve?

Unit Test most people think they exist to ensure the contract between classes and they are right but those tests also allow the developer to ensure the quality of the code by listening to the test.

## Listening to the tests.

A Unit Test shouldn't take more than three or five lines of code and a couple of minutes to write, assuming there is no accidental complexity. If your test is long or hard to write it is a signal of coupling.

Tests usually are kinda like "given X to ClassA.cat() it will call ClassB.fox() with X*Y" and then you write the call and an assertion, depending on which language and framework this should take two or three lines. If ClassA.cat() does more than multiply then your test will become harder and harder the more things ClassA does because you need to come up with the output to assert against and if your code does a lot of things it would become more difficult to ensure the assertion value.

## Applying TDD to the daily code.

Red green refactor is great but is not for everyone neither for all the scenarios.

Here is how I do things: I write a test that says "ClassA.cat() calls ClassB.fox()". I call those test the design tests and use them to build the general structure of the classes. Then, I write the ones that specify the values received and the expected outputs and design the detail of which class does what, in this phase usually the design test get modified because there was some hidden coupling.

After those happy test, I write some tests to handle errors and some with other values to ensure nothing weird happens. Then, I write integration tests.

And that is more or less it. Also, sorry for my English.
