
# Table of Contents

1.  [Week 1](#orgc7e3b16)
    1.  [1.006 Getting started on this module](#org37ef03e)
    2.  [1.103 The pathway from developer to consumer](#org41ba22d)
    3.  [1.201 Multiple codebases](#org61a40b4)
    4.  [1.203 Native apps vs hybrid apps](#org5cf8a9c)
    5.  [1.301 What is React Native?](#org90891ff)
    6.  [1.302 What is Expo?](#orga068fca)
    7.  [1.305 Javascript arrow notation](#orgbb6d9c9)
    8.  [1.306 Creating a new React Native project and overview of the file structure](#orgf83e157)
2.  [Week 2](#org08514eb)
    1.  [1.401 JSX and props](#org163c0a9)
    2.  [1.501 Testing on simulators and devices](#org9bb3c31)
    3.  [1.601 Marketplaces and conforming to the rules](#orga658011)
3.  [Week 3](#orgfed680a)
    1.  [2.001 Skeuomorphism, minimalism and neumorphism](#org210e59c)
    2.  [2.003 Colour palettes and mood psychology](#orgae44e93)
    3.  [2.006 Design ideology](#org92d679c)
    4.  [2.101 What are dark patterns?](#org69df03e)
    5.  [2.103 Dark patterns](#orgfb10880)
    6.  [2.201 Introduction to wireframing](#orgd57a01d)
    7.  [2.203 Creating a wireframe for a shopping app](#org9d6d78b)



<a id="orgc7e3b16"></a>

# Week 1

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org37ef03e"></a>

## 1.006 Getting started on this module

React Native is an Open Source framework created by Facebook which
lets us JavaScript to produce native code for different operating
systems. Some of the benefits are:

1.  Single language for multiple platforms
2.  Ease and flexibility of JavaScript
3.  Near-native performance
4.  Heavily used in industry


<a id="org41ba22d"></a>

## 1.103 The pathway from developer to consumer

The process to moving an app from developer to consumer is roughly
laid out below.

1.  Ideation
    
    The idea for an app has to come from somewhere

2.  Storyboarding
    
    Drawing an idea is usually the simplest form of conveying that
    idea

3.  Prototyping
    
    Helps us understanding challenges that may arise from
    implementing the idea

4.  Feedback and Production
    
    Using our prototype, we can gather feedback to understand if the
    app fulfills its purpose

5.  Testing
    
    Automated testing and manual testing is an important part of
    guaranteeing stability and quality of the app

6.  Approval and Release
    
    After testing, apps go through an approval process by
    e.g. Google and Apple before they can be released to end users

7.  On sale
    
    Apps are finally available in the App Store and can be purchased
    by anyone


<a id="org61a40b4"></a>

## 1.201 Multiple codebases

There are two major mobile OSes:

-   iOS (\(\approx 26.5\%\) market share)
-   Android (\(\approx 72.9\%\) market share)

This means that developers usually have to write the same app
twice &#x2014; once for iOS with Switch of Objective-C, and once for
Android using Kotlin or Java &#x2014;; needless to say this creates the
possibility of minor incompatibilities between the two versions of
the app.

The alternative to writing two apps is to write a single app in a
common language that can be compiled for both platforms.

-   **Native Apps:** Written specifically for a single OS
-   **Hybriid Apps:** Written in a common language


<a id="org5cf8a9c"></a>

## 1.203 Native apps vs hybrid apps

React Native, while using a common language for all platforms, is
much closer to a native application. During compilation of the
project, React Native renderas our views with native code on the
target platform thus giving us the best of both worlds.

In table [1](#org3851814) we list pros and cons of Native
Apps. Similarly, table [2](#org648cd73) shows the same comparison
for Hybrid Apps.

<table id="org3851814" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 1:</span> Native Apps Pros &amp; Cons</caption>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Pros</b></th>
<th scope="col" class="org-left"><b>Cons</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Fast</td>
<td class="org-left">Lengthy and Complex to build</td>
</tr>


<tr>
<td class="org-left">Device-level APIs</td>
<td class="org-left">No cross-compatibility</td>
</tr>


<tr>
<td class="org-left">Native GUI Elements</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

<table id="org648cd73" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 2:</span> Hybrid Apps Pros &amp; Cons</caption>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Pros</b></th>
<th scope="col" class="org-left"><b>Cons</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Cross-compatibility</td>
<td class="org-left">Slower perforance</td>
</tr>


<tr>
<td class="org-left">Larger market reach</td>
<td class="org-left">No device-level APIs</td>
</tr>


<tr>
<td class="org-left">Faster to write</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org90891ff"></a>

## 1.301 What is React Native?

[React Native](https://reactnative.dev/) is a framework written in JavaScript that allows us to
build code for multiple platforms.


<a id="orga068fca"></a>

## 1.302 What is Expo?

[Expo](https://expo.dev) helps manage a React Native project.


<a id="orgbb6d9c9"></a>

## 1.305 Javascript arrow notation

A traditional JavaScript function looks like this:

    function (a) {
      return a * 2;
    }

We can convert it Arrow Notation like so:

    (a) => {
      return a * 2;
    }

Single line functions can be further simplified by removing braces
and the `return` keyword:

    (a) => a * 2;

Next, the parenthesis around `(a)` can also be removed:

    a => return a * 2;

Functions without arguments or with more than one argument must
keep parenthesis around arguments:

    () => 42;
    (a, b) => a**2 + 2*a*b + b**2;


<a id="orgf83e157"></a>

## 1.306 Creating a new React Native project and overview of the file structure

Create a new project with:

    $ expo init --npm

Choose a name for the application and choose the `blank`
template. Hitting `ENTER` will create a new directory with the name
of the application and all dependencies already installed. When it
completes, we can change into the new application&rsquo;s directory and
run:

    $ expo start


<a id="org08514eb"></a>

# Week 2

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org163c0a9"></a>

## 1.401 JSX and props

JSX is a key part of React Native. It allows us to create
components and use them as if they were regular HTML
tags. Component names must start with a capital letter.

Props can be passed in an HTML `attribute=value` format.


<a id="org9bb3c31"></a>

## 1.501 Testing on simulators and devices

Testing the application on a device while under development can
help us uncover issues early. The simulator is another option which
works well.


<a id="orga658011"></a>

## 1.601 Marketplaces and conforming to the rules

Reasons for rejection

1.  App doesn&rsquo;t work
2.  Use of copyrighted material
3.  Breach of safety guidelines
4.  Safeguarding issues
5.  Circumventing the app stores
6.  Low-quality design


<a id="orgfed680a"></a>

# Week 3

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="org210e59c"></a>

## 2.001 Skeuomorphism, minimalism and neumorphism

-   **Skeuomorphism:** emulating the look of physical objects in your
    application
-   **Minimalism:** prioritization of essential elements
-   **Neumorphism:** the middle-ground between skeuomorphism and
    minimalism


<a id="orgae44e93"></a>

## 2.003 Colour palettes and mood psychology

-   **Blue:** calmness, serenity, stability, reliability
-   **Red & Yellow:** speed, immediacy, increase appetite
-   **White:** simplicity, calmness, professionalism


<a id="org92d679c"></a>

## 2.006 Design ideology

-   [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
-   [Google Material Design Guidelines](https://material.io/design/guidelines-overview)


<a id="org69df03e"></a>

## 2.101 What are dark patterns?

Dark Patterns is the term given to design choices that are crafted
to make you do things you don&rsquo;t want to do. 


<a id="orgfb10880"></a>

## 2.103 Dark patterns

-   [Dark Patterns website](https://www.darkpatterns.org/)


<a id="orgd57a01d"></a>

## 2.201 Introduction to wireframing

Wireframes allow us to design layouts in order to demonstrate an
idea and check if it&rsquo;s likely to be practical.


<a id="org9d6d78b"></a>

## 2.203 Creating a wireframe for a shopping app

Before wireframing, it&rsquo;s a good to create a [User Flow
Diagram](https://diagrams.net). After we can start working on our [wireframe](https://www.framer.com/).

