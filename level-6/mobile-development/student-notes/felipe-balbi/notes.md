
# Table of Contents

1.  [Week 1](#orga4ea6cf)
    1.  [1.006 Getting started on this module](#org09c3087)
    2.  [1.103 The pathway from developer to consumer](#org41049a3)
    3.  [1.201 Multiple codebases](#org172db3b)
    4.  [1.203 Native apps vs hybrid apps](#orgd5aa94d)
    5.  [1.301 What is React Native?](#org8fc07da)
    6.  [1.302 What is Expo?](#org93e5360)
    7.  [1.305 Javascript arrow notation](#org99fb73f)
    8.  [1.306 Creating a new React Native project and overview of the file structure](#org74c1701)
2.  [Week 2](#org3892528)
    1.  [1.401 JSX and props](#org6bcfa67)
    2.  [1.501 Testing on simulators and devices](#org46c3529)
    3.  [1.601 Marketplaces and conforming to the rules](#org94927a4)
3.  [Week 3](#org8e24c8f)
    1.  [2.001 Skeuomorphism, minimalism and neumorphism](#org4384efd)
    2.  [2.003 Colour palettes and mood psychology](#orgfdb5d56)
    3.  [2.006 Design ideology](#org45103e5)
    4.  [2.101 What are dark patterns?](#orgb09d475)
    5.  [2.103 Dark patterns](#org8343b28)
    6.  [2.201 Introduction to wireframing](#org54bbf79)
    7.  [2.203 Creating a wireframe for a shopping app](#orgd482eca)
4.  [Week 4](#orgf15aa74)
    1.  [2.401 How to style elements in React Native](#org2511fe8)
    2.  [2.501 What is responsive design?](#org73017aa)
    3.  [2.504 React Native flex](#org4f1283f)
    4.  [2.505 Apple developer guidelines](#orga8e8564)
    5.  [2.601 Design with accessibility in mind](#org25e1b20)
    6.  [2.603 Accessibility in computational technology](#org81a3cda)
5.  [Week 5](#org975ed1a)
    1.  [3.001 UI elements and the OS](#org57f971e)
    2.  [3.004 React Native component documentation](#orge8cd13f)



<a id="orga4ea6cf"></a>

# Week 1

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org09c3087"></a>

## 1.006 Getting started on this module

React Native is an Open Source framework created by Facebook which
lets us JavaScript to produce native code for different operating
systems. Some of the benefits are:

1.  Single language for multiple platforms
2.  Ease and flexibility of JavaScript
3.  Near-native performance
4.  Heavily used in industry


<a id="org41049a3"></a>

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


<a id="org172db3b"></a>

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


<a id="orgd5aa94d"></a>

## 1.203 Native apps vs hybrid apps

React Native, while using a common language for all platforms, is
much closer to a native application. During compilation of the
project, React Native renderas our views with native code on the
target platform thus giving us the best of both worlds.

In table [1](#org8329001) we list pros and cons of Native
Apps. Similarly, table [2](#org67bcc9f) shows the same comparison
for Hybrid Apps.

<table id="org8329001" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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

<table id="org67bcc9f" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org8fc07da"></a>

## 1.301 What is React Native?

[React Native](https://reactnative.dev/) is a framework written in JavaScript that allows us to
build code for multiple platforms.


<a id="org93e5360"></a>

## 1.302 What is Expo?

[Expo](https://expo.dev) helps manage a React Native project.


<a id="org99fb73f"></a>

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


<a id="org74c1701"></a>

## 1.306 Creating a new React Native project and overview of the file structure

Create a new project with:

    $ expo init --npm

Choose a name for the application and choose the `blank`
template. Hitting `ENTER` will create a new directory with the name
of the application and all dependencies already installed. When it
completes, we can change into the new application&rsquo;s directory and
run:

    $ expo start


<a id="org3892528"></a>

# Week 2

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org6bcfa67"></a>

## 1.401 JSX and props

JSX is a key part of React Native. It allows us to create
components and use them as if they were regular HTML
tags. Component names must start with a capital letter.

Props can be passed in an HTML `attribute=value` format.


<a id="org46c3529"></a>

## 1.501 Testing on simulators and devices

Testing the application on a device while under development can
help us uncover issues early. The simulator is another option which
works well.


<a id="org94927a4"></a>

## 1.601 Marketplaces and conforming to the rules

Reasons for rejection

1.  App doesn&rsquo;t work
2.  Use of copyrighted material
3.  Breach of safety guidelines
4.  Safeguarding issues
5.  Circumventing the app stores
6.  Low-quality design


<a id="org8e24c8f"></a>

# Week 3

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="org4384efd"></a>

## 2.001 Skeuomorphism, minimalism and neumorphism

-   **Skeuomorphism:** emulating the look of physical objects in your
    application
-   **Minimalism:** prioritization of essential elements
-   **Neumorphism:** the middle-ground between skeuomorphism and
    minimalism


<a id="orgfdb5d56"></a>

## 2.003 Colour palettes and mood psychology

-   **Blue:** calmness, serenity, stability, reliability
-   **Red & Yellow:** speed, immediacy, increase appetite
-   **White:** simplicity, calmness, professionalism


<a id="org45103e5"></a>

## 2.006 Design ideology

-   [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
-   [Google Material Design Guidelines](https://material.io/design/guidelines-overview)


<a id="orgb09d475"></a>

## 2.101 What are dark patterns?

Dark Patterns is the term given to design choices that are crafted
to make you do things you don&rsquo;t want to do. 


<a id="org8343b28"></a>

## 2.103 Dark patterns

-   [Dark Patterns website](https://www.darkpatterns.org/)


<a id="org54bbf79"></a>

## 2.201 Introduction to wireframing

Wireframes allow us to design layouts in order to demonstrate an
idea and check if it&rsquo;s likely to be practical.


<a id="orgd482eca"></a>

## 2.203 Creating a wireframe for a shopping app

Before wireframing, it&rsquo;s a good to create a [User Flow
Diagram](https://diagrams.net). After we can start working on our [wireframe](https://www.framer.com/).


<a id="orgf15aa74"></a>

# Week 4

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="org2511fe8"></a>

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


<a id="org73017aa"></a>

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


<a id="org4f1283f"></a>

## 2.504 React Native flex

-   [React Documentation: Flexbox](https://reactnative.dev/docs/flexbox)


<a id="orga8e8564"></a>

## 2.505 Apple developer guidelines

-   [Apple Developer Guidelines: Adaptivity And Layout](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/)


<a id="org25e1b20"></a>

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


<a id="org81a3cda"></a>

## 2.603 Accessibility in computational technology

-   Antona, M. and C. Stephanidis (eds) Universal Access in
    Human-Computer Interaction. Design Approaches and Supporting
    Technologies. 14th International Conference, UAHCI 2020, Held as
    Part of the 22nd HCI International Conference, HCII 2020. (Springer
    International Publishing, 2020).


<a id="org975ed1a"></a>

# Week 5

Key Concepts

-   Use JSX to create basic elements on the screen
-   Understand the need for pagination
-   Understand and be able to use UI elements in React Native


<a id="org57f971e"></a>

## 3.001 UI elements and the OS

-   **`ActivityIndicator`:** Shows background activity
-   **`Button`:** Default UI Button element
-   **`Image`:** An element that renders an image
-   **`ImageBackground`:** Fills a space with an image, resizing it where
    applicable
-   **`Switch`:** Regular toggle switch element
-   **`Text`:** Renders text in the screen
-   **`TextInput`:** Lets user input text into a field
-   **`TouchableOpacity`:** Area capable of receiving touch events
-   **`View`:** A basic *container* element. Can be thought of as sheets
    of paper


<a id="orge8cd13f"></a>

## 3.004 React Native component documentation

-   [React: Core Components And APIs](https://reactnative.dev/docs/components-and-apis)

