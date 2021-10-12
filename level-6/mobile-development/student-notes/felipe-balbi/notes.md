
# Table of Contents

1.  [Week 1](#orgf7a5317)
    1.  [1.006 Getting started on this module](#org6449bf6)
    2.  [1.103 The pathway from developer to consumer](#orge79ec47)
    3.  [1.201 Multiple codebases](#org33473cc)
    4.  [1.203 Native apps vs hybrid apps](#org5654624)
    5.  [1.301 What is React Native?](#org2f86cd3)
    6.  [1.302 What is Expo?](#org7e4e9d4)
    7.  [1.305 Javascript arrow notation](#org0b07439)
    8.  [1.306 Creating a new React Native project and overview of the file structure](#orgfbb0846)
2.  [Week 2](#orge2d8dd9)
    1.  [1.401 JSX and props](#org4ec6e36)
    2.  [1.501 Testing on simulators and devices](#org6bc133b)
    3.  [1.601 Marketplaces and conforming to the rules](#orgbd48c8b)
3.  [Week 3](#org48a8bf9)
    1.  [2.001 Skeuomorphism, minimalism and neumorphism](#org59cb54d)
    2.  [2.003 Colour palettes and mood psychology](#orgf519884)
    3.  [2.006 Design ideology](#org2ba85c3)
    4.  [2.101 What are dark patterns?](#orgc0b2bfb)
    5.  [2.103 Dark patterns](#org47ab037)
    6.  [2.201 Introduction to wireframing](#org398d888)
    7.  [2.203 Creating a wireframe for a shopping app](#org33a43ad)
4.  [Week 4](#orgdbc02a9)
    1.  [2.401 How to style elements in React Native](#orgff05725)
    2.  [2.501 What is responsive design?](#orgc204ae0)
    3.  [2.504 React Native flex](#orgb3b3b08)
    4.  [2.505 Apple developer guidelines](#orga1fef13)
    5.  [2.601 Design with accessibility in mind](#orgfae9eef)
    6.  [2.603 Accessibility in computational technology](#org5d1c872)



<a id="orgf7a5317"></a>

# Week 1

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org6449bf6"></a>

## 1.006 Getting started on this module

React Native is an Open Source framework created by Facebook which
lets us JavaScript to produce native code for different operating
systems. Some of the benefits are:

1.  Single language for multiple platforms
2.  Ease and flexibility of JavaScript
3.  Near-native performance
4.  Heavily used in industry


<a id="orge79ec47"></a>

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


<a id="org33473cc"></a>

## 1.201 Multiple codebases

There are two major mobile OSes:

-   iOS ($\approx 26.5\%$ market share)
-   Android ($\approx 72.9\%$ market share)

This means that developers usually have to write the same app
twice &#x2014; once for iOS with Switch of Objective-C, and once for
Android using Kotlin or Java &#x2014;; needless to say this creates the
possibility of minor incompatibilities between the two versions of
the app.

The alternative to writing two apps is to write a single app in a
common language that can be compiled for both platforms.

-   **Native Apps:** Written specifically for a single OS
-   **Hybriid Apps:** Written in a common language


<a id="org5654624"></a>

## 1.203 Native apps vs hybrid apps

React Native, while using a common language for all platforms, is
much closer to a native application. During compilation of the
project, React Native renderas our views with native code on the
target platform thus giving us the best of both worlds.

In table [1](#org9aaa809) we list pros and cons of Native
Apps. Similarly, table [2](#org1d1f8f3) shows the same comparison
for Hybrid Apps.

<table id="org9aaa809" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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

<table id="org1d1f8f3" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org2f86cd3"></a>

## 1.301 What is React Native?

[React Native](https://reactnative.dev/) is a framework written in JavaScript that allows us to
build code for multiple platforms.


<a id="org7e4e9d4"></a>

## 1.302 What is Expo?

[Expo](https://expo.dev) helps manage a React Native project.


<a id="org0b07439"></a>

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


<a id="orgfbb0846"></a>

## 1.306 Creating a new React Native project and overview of the file structure

Create a new project with:

    $ expo init --npm

Choose a name for the application and choose the `blank`
template. Hitting `ENTER` will create a new directory with the name
of the application and all dependencies already installed. When it
completes, we can change into the new application&rsquo;s directory and
run:

    $ expo start


<a id="orge2d8dd9"></a>

# Week 2

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org4ec6e36"></a>

## 1.401 JSX and props

JSX is a key part of React Native. It allows us to create
components and use them as if they were regular HTML
tags. Component names must start with a capital letter.

Props can be passed in an HTML `attribute=value` format.


<a id="org6bc133b"></a>

## 1.501 Testing on simulators and devices

Testing the application on a device while under development can
help us uncover issues early. The simulator is another option which
works well.


<a id="orgbd48c8b"></a>

## 1.601 Marketplaces and conforming to the rules

Reasons for rejection

1.  App doesn&rsquo;t work
2.  Use of copyrighted material
3.  Breach of safety guidelines
4.  Safeguarding issues
5.  Circumventing the app stores
6.  Low-quality design


<a id="org48a8bf9"></a>

# Week 3

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="org59cb54d"></a>

## 2.001 Skeuomorphism, minimalism and neumorphism

-   **Skeuomorphism:** emulating the look of physical objects in your
    application
-   **Minimalism:** prioritization of essential elements
-   **Neumorphism:** the middle-ground between skeuomorphism and
    minimalism


<a id="orgf519884"></a>

## 2.003 Colour palettes and mood psychology

-   **Blue:** calmness, serenity, stability, reliability
-   **Red & Yellow:** speed, immediacy, increase appetite
-   **White:** simplicity, calmness, professionalism


<a id="org2ba85c3"></a>

## 2.006 Design ideology

-   [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
-   [Google Material Design Guidelines](https://material.io/design/guidelines-overview)


<a id="orgc0b2bfb"></a>

## 2.101 What are dark patterns?

Dark Patterns is the term given to design choices that are crafted
to make you do things you don&rsquo;t want to do. 


<a id="org47ab037"></a>

## 2.103 Dark patterns

-   [Dark Patterns website](https://www.darkpatterns.org/)


<a id="org398d888"></a>

## 2.201 Introduction to wireframing

Wireframes allow us to design layouts in order to demonstrate an
idea and check if it&rsquo;s likely to be practical.


<a id="org33a43ad"></a>

## 2.203 Creating a wireframe for a shopping app

Before wireframing, it&rsquo;s a good to create a [User Flow
Diagram](https://diagrams.net). After we can start working on our [wireframe](https://www.framer.com/).


<a id="orgdbc02a9"></a>

# Week 4

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="orgff05725"></a>

## 2.401 How to style elements in React Native

Styles, in `React`, are created with `StyleSheet.create()` method. We
can use them by setting the `style` property of the element to the
relevant object. Like so:

    import { StatusBar } from 'expo-status-bar';
    import React from 'react';
    import { StyleSheet, Text, View } from 'react-native';
    
    export default function App() {
      return (
          <View style={styles.container}>
    	<Text>Open up App.js to start working on your app!</Text>
    	<StatusBar style="auto" />
          </View>
      );
    }
    
    const styles = StyleSheet.create({
      container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
      }
    });

In this case, the `<Text>` and `<StatusBar>` elements are children of
the `<View>` element and will, therefore, *inherit* its styling. 


<a id="orgc204ae0"></a>

## 2.501 What is responsive design?

With so many different models of devices in the market, each with a
different pixel density, screen sizes, and resolution, designing a
single app that works on all form factors is a rather large
task.

Responsive design is a technique where the application&rsquo;s UI adapts to
the screen dimensions. We do this by building apps designed for
proportions, rather than specific sizes.

In ReactNative, Flexbox is used to provide a consistent layout on
different screens.


<a id="orgb3b3b08"></a>

## 2.504 React Native flex

-   [React Documentation: Flexbox](https://reactnative.dev/docs/flexbox)


<a id="orga1fef13"></a>

## 2.505 Apple developer guidelines

-   [Apple Developer Guidelines: Adaptivity And Layout](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/)


<a id="orgfae9eef"></a>

## 2.601 Design with accessibility in mind

When building an application, four categories should be kept in mind:

1.  Vision
    
    Blindness, color blindness and all forms of vision impairment

2.  Hearing
    
    Hearing loss and other hearing disabilities

3.  Physical and motor
    
    People with physical and motors impairment, may experience
    difficulties holding or manipulating their devices

4.  Literacy and learning
    
    These include difficulty speaking, reading, managing complexity and
    maintaining attention or focus.

ReactNative wraps Android and iOS specific accessibility features.

-   **`accessible` Prop:** When true, indicates the view is an
    accessibility element.
-   **`accessibilityLabel` Prop:** Allows us to assign descriptive label
    to an element.
-   **`accessibilityHint` Prop:** Describes what will happen when the user
    performs the action on the element.
-   **Accessibility Actions:** Allow assistive technologies to
    programmatically perform actions.


<a id="org5d1c872"></a>

## 2.603 Accessibility in computational technology

-   Antona, M. and C. Stephanidis (eds) Universal Access in
    Human-Computer Interaction. Design Approaches and Supporting
    Technologies. 14th International Conference, UAHCI 2020, Held as
    Part of the 22nd HCI International Conference, HCII 2020. (Springer
    International Publishing, 2020).

