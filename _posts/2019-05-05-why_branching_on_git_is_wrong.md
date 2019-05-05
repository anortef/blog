---
layout: post
title:  "Why branching on git is wrong"
date:   2019-05-05 16:45:02 +0200
categories: git branching
---

Lots of people often code using feature branching on git to avoid the hassle of conflicts while doing pull and/or to avoid pushing incomplete features that would break the system for all the team.

I find these reasons to be baseless and some even harmful to the development cicle. Trying to develop in your little temporal bubble without being distracted by the rest of your team it's a bad idea, imagine the following:

A team of five people have to do a painting of a big landscape, so they split the canvas in five pieces and then each of them paints their part without even looking at what their partners are doing and in two weeks they put all the five pieces together to deliver the product. What do you expect will happen? of course the painting will be a mess with miss aligned items on it that will need to be redrawn at the last minute pulling an all nighter on the worst case. Sounds familiar?

How can we work on a single branch without breaking stuff and without continuous conflict?

First the conflict part: Communication is key, daily meetings are there for a reason and should be used to smooth cooperation between developers working at the same classes.

Now, the scariest part: How to commit half baked features without breaking stuff? or even more, how to commit a new feature that we aren't sure is working correctly? Well, one of the best things about everyone working at the same branch is that if something breaks it will be noticed quickly and fixed at an early stage and therefore less painful process.

For the part of committing without breaking the system for everyone there is a very good technique called "feature toggling". Basically what you do is put an if like this:

```javascript
if (useNewLogic) {
    awesomeNewFeatureEntryPoint();
} else {
    legacyEntryPoint();
}
```

This allows to run the new code when you want and where you want without risking all the environments and such.

This way of working also benefits of the fact that because everyone is working at the same place if your new feature conflicts with some change of class contract you can fix it quickly, it means that you are doing continuous integration.

One way I have found in my personal experience that people that comes used to work with branches feels more comfortable to do the switch is to have two branches, for example: develop and master. With the only way to put things on master is via a pull request.

I would love to read your opinions of this matter on the comments.
