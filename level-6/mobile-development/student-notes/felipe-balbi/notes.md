
# Table of Contents

1.  [Week 1](#orgb976a1b)
    1.  [1.006 Getting started on this module](#org643b9c7)
    2.  [1.103 The pathway from developer to consumer](#org4cdfcd3)
    3.  [1.201 Multiple codebases](#orge9ad2ce)
    4.  [1.203 Native apps vs hybrid apps](#org7539a0b)
    5.  [1.301 What is React Native?](#orgae47c76)
    6.  [1.302 What is Expo?](#orge66aaab)
    7.  [1.305 Javascript arrow notation](#org2a3c87b)
    8.  [1.306 Creating a new React Native project and overview of the file structure](#orgbe55f24)
2.  [Week 2](#org48cbf28)
    1.  [1.401 JSX and props](#org1fde14b)
    2.  [1.501 Testing on simulators and devices](#org0e38baf)
    3.  [1.601 Marketplaces and conforming to the rules](#org09fbc04)
3.  [Week 3](#org78d6e8e)
    1.  [2.001 Skeuomorphism, minimalism and neumorphism](#orgde3f672)
    2.  [2.003 Colour palettes and mood psychology](#orgea59d30)
    3.  [2.006 Design ideology](#orgb262a97)
    4.  [2.101 What are dark patterns?](#org30b5617)
    5.  [2.103 Dark patterns](#org4a4ca1f)
    6.  [2.201 Introduction to wireframing](#orge208536)
    7.  [2.203 Creating a wireframe for a shopping app](#org7c5e428)
4.  [Week 4](#org35701da)
    1.  [2.401 How to style elements in React Native](#org44791d3)
    2.  [2.501 What is responsive design?](#org3b9dd20)
    3.  [2.504 React Native flex](#org357068d)
    4.  [2.505 Apple developer guidelines](#org1bfbbde)
    5.  [2.601 Design with accessibility in mind](#orgca4c899)
    6.  [2.603 Accessibility in computational technology](#orgd9ae174)
5.  [Week 5](#org0bda1b4)
    1.  [3.001 UI elements and the OS](#org1e5d506)
    2.  [3.004 React Native component documentation](#org2d537ab)
6.  [Week 6](#orge8661b9)
    1.  [3.301 Why pages are important](#org66d0650)
    2.  [3.303 Navigation in React Native](#org8670e23)
    3.  [3.305 How to programatically navigate](#org9b39535)
    4.  [3.307 Navigation in React Native guide](#orgfa20462)
7.  [Week 7](#orgb2d1b35)
    1.  [4.101 What are table views?](#org1093785)
    2.  [4.201 What are scroll views and flat lists?](#org2198fb3)
    3.  [4.202 Performance monitoring in React Native](#orgdf8edf5)
8.  [Week 8](#org8ca955f)
    1.  [4.401 What are animations?](#org16e7b42)
    2.  [4.403 Composing more complex animations](#org55cb417)
    3.  [4.405 React native animation docs](#org5a82206)
    4.  [4.501 What are gestures?](#org8941bdf)
    5.  [4.601 What are alerts?](#org10a0107)
    6.  [4.701 What are timers?](#org7bbb3b3)
9.  [Week 9](#orga8a71c4)
    1.  [5.001 Efficient programming](#org9294a9a)
    2.  [5.101 What is automated testing?](#orge7d4783)
    3.  [5.201 Functional components vs Class components](#org87c0df4)
    4.  [5.203 React Native documentation: Class components](#org6d26cd1)
10. [Week 10](#orgaaaa142)
    1.  [5.301 Syntax transformers](#orgc0ad05c)
        1.  [Block Scoping](#orgdaa9f72)
        2.  [Destructuring](#org814b528)
        3.  [`for of`](#org74e4231)
    2.  [5.303 React Native documentation: Syntax transformers](#org6d348db)
    3.  [5.304 Performance enhancement](#org6d7aa92)
11. [Week 11](#org6b6ca93)
    1.  [6.001 Data sources](#org5560bcf)
    2.  [6.003 Ethics](#org339a680)
    3.  [Red Hat API Security](#orgad3a9be)
    4.  [6.101 What is JSON and XML?](#org601e3db)
    5.  [6.103 Loading JSON from a file](#org56b1420)
    6.  [6.201 Saving data](#org6211f4e)
    7.  [6.203 AsyncStorage and SecureStore documentation](#org0770c42)
    8.  [6.204 Saving data in React Native](#orgc3c704b)
12. [Week 13](#org31e692b)
    1.  [7.001 What are cloud services?](#org1d977f8)
    2.  [7.002 Popular cloud services](#orgc14633b)
    3.  [7.004 Cloudflare&rsquo;s guide to the cloud](#orga9bf90f)
    4.  [7.101 Detecting active connections](#org213e22f)
    5.  [7.104 Expo network documentation](#org2d7e16c)
    6.  [7.201 Retrieving data from the internet](#orgeb06fdb)



<a id="orgb976a1b"></a>

# Week 1

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org643b9c7"></a>

## 1.006 Getting started on this module

React Native is an Open Source framework created by Facebook which
lets us JavaScript to produce native code for different operating
systems. Some of the benefits are:

1.  Single language for multiple platforms
2.  Ease and flexibility of JavaScript
3.  Near-native performance
4.  Heavily used in industry


<a id="org4cdfcd3"></a>

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


<a id="orge9ad2ce"></a>

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


<a id="org7539a0b"></a>

## 1.203 Native apps vs hybrid apps

React Native, while using a common language for all platforms, is
much closer to a native application. During compilation of the
project, React Native renderas our views with native code on the
target platform thus giving us the best of both worlds.

In table [1](#org5be72b6) we list pros and cons of Native
Apps. Similarly, table [2](#orgf0c83ac) shows the same comparison
for Hybrid Apps.

<table id="org5be72b6" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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

<table id="orgf0c83ac" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="orgae47c76"></a>

## 1.301 What is React Native?

[React Native](https://reactnative.dev/) is a framework written in JavaScript that allows us to
build code for multiple platforms.


<a id="orge66aaab"></a>

## 1.302 What is Expo?

[Expo](https://expo.dev) helps manage a React Native project.


<a id="org2a3c87b"></a>

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


<a id="orgbe55f24"></a>

## 1.306 Creating a new React Native project and overview of the file structure

Create a new project with:

    $ expo init --npm

Choose a name for the application and choose the `blank`
template. Hitting `ENTER` will create a new directory with the name
of the application and all dependencies already installed. When it
completes, we can change into the new application&rsquo;s directory and
run:

    $ expo start


<a id="org48cbf28"></a>

# Week 2

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="org1fde14b"></a>

## 1.401 JSX and props

JSX is a key part of React Native. It allows us to create
components and use them as if they were regular HTML
tags. Component names must start with a capital letter.

Props can be passed in an HTML `attribute=value` format.


<a id="org0e38baf"></a>

## 1.501 Testing on simulators and devices

Testing the application on a device while under development can
help us uncover issues early. The simulator is another option which
works well.


<a id="org09fbc04"></a>

## 1.601 Marketplaces and conforming to the rules

Reasons for rejection

1.  App doesn&rsquo;t work
2.  Use of copyrighted material
3.  Breach of safety guidelines
4.  Safeguarding issues
5.  Circumventing the app stores
6.  Low-quality design


<a id="org78d6e8e"></a>

# Week 3

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="orgde3f672"></a>

## 2.001 Skeuomorphism, minimalism and neumorphism

-   **Skeuomorphism:** emulating the look of physical objects in your
    application
-   **Minimalism:** prioritization of essential elements
-   **Neumorphism:** the middle-ground between skeuomorphism and
    minimalism


<a id="orgea59d30"></a>

## 2.003 Colour palettes and mood psychology

-   **Blue:** calmness, serenity, stability, reliability
-   **Red & Yellow:** speed, immediacy, increase appetite
-   **White:** simplicity, calmness, professionalism


<a id="orgb262a97"></a>

## 2.006 Design ideology

-   [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
-   [Google Material Design Guidelines](https://material.io/design/guidelines-overview)


<a id="org30b5617"></a>

## 2.101 What are dark patterns?

Dark Patterns is the term given to design choices that are crafted
to make you do things you don&rsquo;t want to do. 


<a id="org4a4ca1f"></a>

## 2.103 Dark patterns

-   [Dark Patterns website](https://www.darkpatterns.org/)


<a id="orge208536"></a>

## 2.201 Introduction to wireframing

Wireframes allow us to design layouts in order to demonstrate an
idea and check if it&rsquo;s likely to be practical.


<a id="org7c5e428"></a>

## 2.203 Creating a wireframe for a shopping app

Before wireframing, it&rsquo;s a good to create a [User Flow
Diagram](https://diagrams.net). After we can start working on our [wireframe](https://www.framer.com/).


<a id="org35701da"></a>

# Week 4

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="org44791d3"></a>

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


<a id="org3b9dd20"></a>

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


<a id="org357068d"></a>

## 2.504 React Native flex

-   [React Documentation: Flexbox](https://reactnative.dev/docs/flexbox)


<a id="org1bfbbde"></a>

## 2.505 Apple developer guidelines

-   [Apple Developer Guidelines: Adaptivity And Layout](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/)


<a id="orgca4c899"></a>

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


<a id="orgd9ae174"></a>

## 2.603 Accessibility in computational technology

-   Antona, M. and C. Stephanidis (eds) Universal Access in
    Human-Computer Interaction. Design Approaches and Supporting
    Technologies. 14th International Conference, UAHCI 2020, Held as
    Part of the 22nd HCI International Conference, HCII 2020. (Springer
    International Publishing, 2020).


<a id="org0bda1b4"></a>

# Week 5

Key Concepts

-   Use JSX to create basic elements on the screen
-   Understand the need for pagination
-   Understand and be able to use UI elements in React Native


<a id="org1e5d506"></a>

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


<a id="org2d537ab"></a>

## 3.004 React Native component documentation

-   [React: Core Components And APIs](https://reactnative.dev/docs/components-and-apis)


<a id="orge8661b9"></a>

# Week 6

Key Concepts

-   Use JSX to create basic elements on the screen
-   Understand the need for pagination
-   Understand and be able to use UI elements in React Native


<a id="org66d0650"></a>

## 3.301 Why pages are important

Navigation and Pages create a clear separation of our content. It
turns our content into easily understandable chunks of
information.


<a id="org8670e23"></a>

## 3.303 Navigation in React Native

In order to use navigation within a React Native app, we must first
install and import the [React Navigation library](https://reactnavigation.org/).

    $ npm install @react-navigation/native
    $ expo install react-native-screens react-native-safe-area-context
    $ npm install @react-navigation/native-stack

After installing dependencies we can import with:

    import { NavigationContainer } from '@react-navigation/native';
    import { createStackNavigator } from '@react-navigation/stack';

We can use the `NavigationContainer` as the root element of our
app with a `Stack.Navigator` inside. Each *view* in the stack can
be modeled as a function that returns the required *view*. The full
setup will look like so:

    import { StatusBar } from 'expo-status-bar';
    import React from 'react';
    import { StyleSheet, Text, View } from 'react-native';
    import { NavigationContainer } from '@react-navigation/native';
    import { createStackNavigator } from '@react-navigation/stack';
    
    function HomeScreen() {
      return (
        <View>
          <Text>Home Screen</Text>
        </View>
      );
    }
    
    const Stack = createStackNavigator();
    
    export default function App() {
      return (
        <NavigationContainer>
          <Stack.Navigator>
    	<Stack.Screen name="Home" component={HomeScreen} />
          </Stack.Navigator>
        </NavigationContainer>
      );
    }


<a id="org9b39535"></a>

## 3.305 How to programatically navigate

    import { StatusBar } from 'expo-status-bar';
    import React from 'react';
    import { StyleSheet, Text, View, Button } from 'react-native';
    import { NavigationContainer } from '@react-navigation/native';
    import { createStackNavigator } from '@react-navigation/stack';
    
    function HomeScreen({navigation}) {
      return (
        <View>
          <Text>Home Screen</Text>
          <Button title="To details"
    	      onPress={() => navigation.navigate("Details")}/>
        </View>
      );
    }
    
    function DetailsScreen() {
      return (
        <View>
          <Text>Details Screen</Text>
          <Button title="Back Home"
    	      onPress={() => navigation.navigate("Home")}/>
        </View>
      );
    }
    
    const Stack = createStackNavigator();
    
    export default function App() {
      return (
        <NavigationContainer>
          <Stack.Navigator>
    	<Stack.Screen name="Home" component={HomeScreen} />
    	<Stack.Screen name="Details" component={DetailsScreen} />
          </Stack.Navigator>
        </NavigationContainer>
      );
    }


<a id="orgfa20462"></a>

## 3.307 Navigation in React Native guide

-   [React Navigation](https://reactnavigation.org/)


<a id="orgb2d1b35"></a>

# Week 7

Key Concepts

-   To develop a stronger understanding of advanced techniques
-   Use advanced methods of interaction
-   Understand and program animations


<a id="org1093785"></a>

## 4.101 What are table views?

ReactNative does not provide native table view components. There are
several repositories providing the functionality. We will use
[react-native-tableview-simple](https://github.com/Purii/react-native-tableview-simple).

To install it we use:

    npm i react-native-tableview-simple

And use it by importing:

    import { Cell, Section, TableView} from 'react-native-tableview-simple';

Table views are comprised of *sections* and *cells*. A *section* is a
group of *cells*. While *sections* are not required for a table view,
it&rsquo;s encouraged to use them to separate content into categories.

The basic table view looks like so:

    <TableView>
      <Section>
        <Cell title="Cell 1"/>
        <Cell title="Cell 2"/>
      </Section>
    </TableView>

We can also create cells programmatically:

    let items = ["Cell 1", "Cell 2"];
    
    return (
      // ...
      { items.map((element, i) => (
        <Cell title={element}/>
      ))}
    );

Mapping over an array of objects is more idiomatic:

    let items = [{"title": "Cell 1"}, {"title": "Cell 2"}];
    
    return (
      // ...
      { items.map((element, i) => (
        <Cell title={element.title}/>
      ))}
    );

Custom cells can be created with the help of the `cellContentView`
prop.

    <Cell
      cellContentView = {
        <View>
          <Text>Testing!</Text>
        </View>
      }
    />

These can also be turned into static components which can be
referenced later:

    const CellVariant = (props) => (
      <Cell
        {...props}
        cellContentView = {
          <View>
    	<Text>Testing!</Text>
          </View>
        }
      />
    )
    
    // ...
    
    return (<CellVariant/>)


<a id="org2198fb3"></a>

## 4.201 What are scroll views and flat lists?

Scroll Views allow us to display content that wouldn&rsquo;t normally fit
the screen. `ScrollView` will render every child, even the ones that
can&rsquo;t be seen until scrolled into view.

A `FlatList` is the perfect alternative to `ScrollView` because it
will lazily load items.


<a id="orgdf8edf5"></a>

## 4.202 Performance monitoring in React Native

When building the application in debug mode, we can shake the device
in order to display a react native debug menu, which includes
performance monitoring.


<a id="org8ca955f"></a>

# Week 8

Key Concepts

-   To develop a stronger understanding of advanced techniques
-   Use advanced methods of interaction
-   Understand and program animations


<a id="org16e7b42"></a>

## 4.401 What are animations?

Animations serve to provide feedback to actions taken by the
user. There are lots of animations built into the mobile OS. Some of
which are launcher effects, *elastic banding* with scrolling, and
sleep/wake animations. We can also make custom animations.

ReactNative&rsquo;s Animated API allows us to build simple time-based
animations. It can be used with the following components:

1.  `View`
2.  `Text`
3.  `Image`
4.  `ScrollView`
5.  `FlatList`
6.  `SectionList`

To use animations with a components **not** on the list above, we can do
so with `Animated.createAnimatedComponent()`.

    const AnimatedText = (props) => {
      return (
        <Animated.Text
          style = {{
    	..props.style,
    	opacity: textOpacity,
          }}
        >
          TEXT
        </Animated.Text>
      )
    }
    
    const textOpacity = useRef(new Animated.Value(0)).current;
    React.useEffect(() => {
      Animated.timing(textOpacity,
    		  {
    		    toValue: 1,
    		    duration: 3000,
    		  }
    		 ).start();
    }, [textOpacity])


<a id="org55cb417"></a>

## 4.403 Composing more complex animations

    const AnimatedText = (props) => {
      const textOpacity = useRef(new Animated.Value(0)).current;
    
      React.useEffect(() => {
        Animated.timing(
          textOpacity,
          {
    	toValue: 1,
    	duration: 3000,
    	/* useNativeDriver: true */
          }
        ).start();
      }, [textOpacity]);
    
      return (
        <Animated.Text
          style={{
    	...props.style,
    	opacity: textOpacity
          }}
        >
          <props.children}
        </Animated.Text>
      )
    }
    
    export default function App() {
      return (
        <View style={styles.container}>
          <AnimatedText>
    	Test!
          </AnimatedText>
        </View>
      )
    }


<a id="org5a82206"></a>

## 4.405 React native animation docs

-   [React Native Animated Documentation](https://reactnative.dev/docs/animated)


<a id="org8941bdf"></a>

## 4.501 What are gestures?

Gestures are user input recognized as more than a regular
tap. Examples are:

-   Double tap
-   Scrolling
-   Sliding
-   Pinch to zoom

The *Gesture Responder System* manages the lifecycle of gestures in
our app. React Native provides the `TouchableOpacity` element for our
touch processing. Another useful element is the `PanResponder`, which
provides a wrapper for the responder handlers.

Table [3](#org4a72fd4) below summarizes the `gestureState` object&rsquo;s
properties:

<table id="org4a72fd4" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 3:</span> <code>gestureState</code> Object Properties</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Property</b></th>
<th scope="col" class="org-left"><b>Description</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left"><code>stateID</code></td>
<td class="org-left">Unique identifier</td>
</tr>


<tr>
<td class="org-left"><code>moveX</code>, <code>moveY</code></td>
<td class="org-left">Last touch coordinates</td>
</tr>


<tr>
<td class="org-left"><code>x0</code>, <code>y0</code></td>
<td class="org-left">Screen coordinates of responder grant</td>
</tr>


<tr>
<td class="org-left"><code>dx</code>, <code>dy</code></td>
<td class="org-left">Accumulated traveled distance since first touch down</td>
</tr>


<tr>
<td class="org-left"><code>vx</code>, <code>vy</code></td>
<td class="org-left">Gesture velocity</td>
</tr>


<tr>
<td class="org-left"><code>numberActiveTouches</code></td>
<td class="org-left">Number of the touches currently on screen</td>
</tr>
</tbody>
</table>


<a id="org10a0107"></a>

## 4.601 What are alerts?

Alerts serve to notify the user of something that needs immediate
attention. To use alerts we must first import `Alert` from
`react-native`. The simplest alert can be called using:

    Alert.alert("message");

The full list of possible parameters are shown below:

    alert(title, message?, buttons?, options?);

where:

-   **`title`:** The dialog&rsquo;s title. Pass `null` to hide
-   **`message`:** optional message that appears below the title
-   **`buttons`:** optional array with button configurations
-   **`options`:** **Android-specific** configuration

Here&rsquo;s a sample `button` array:

    [
      {
        text: "Ok",
        onPress: () => console.log("Ok pressed"),
      },
      {
        text: "Cancel",
        onPress: () => console.log("Cancel pressed"),
        style: "cancel",
      },
    ]

There are three `AlertButtonStyle` enums:

-   **`default`:** The default button style
-   **`cancel`:** Often represented as red text
-   **`destructive`:** Often represented as *permanent* action, e.g. a
    solid red background

On iOS we can define as many buttons as we&rsquo;d like, but on Android
there is a hard-limit of three buttons.


<a id="org7bbb3b3"></a>

## 4.701 What are timers?

Timers allow us to execute code after a set delay.


<a id="orga8a71c4"></a>

# Week 9

Key Concepts

-   Learn advanced Javascript techniques
-   Understand and implement testing
-   To discuss what makes efficient programming


<a id="org9294a9a"></a>

## 5.001 Efficient programming

Clean code makes it easier to understand and maintain. Some features
of clean code are:

-   **Comments:** Comments serve as documentation for the intention of the
    code
-   **Modularization:** Modular code separates concerns and makes it easy
    to focus on a small part of the code at a time
-   **Multiple Files:** By breaking different components to multiple
    files, we can focus on a single at a time without all the extra
    clutter
-   **`console.log()`:** Only use it for debugging
-   **Naming:** Making use of clear, descriptive names helps with code
    readability


<a id="orge7d4783"></a>

## 5.101 What is automated testing?

Testing helps ensure that a change to the codebase doesn&rsquo;t introduce
any regressions. Modularized code allows for testing small modules in
isolation.

To structure tests, we follow *AAA* (Arrange, Act, Assert). The test
definition below:

> given a date in the past, `colorForDueDate()` returns red.

Translates into the following test definition:

    it('given a date in the past, colorForDueDate() returns red',
       () => {
         expect(colorForDueDate('2000-10-20')).toBe('red');
       });

Unit test cover small units of code, e.g. individual functions or
classes.

Mocking allows us to override dependencies in order to
provide a predictable, testable state.

Integration testing will verify that multiple functions or classes
work well together.

Component testing verifies that a components behaves correctly when
interacted with and that it renders as expected.


<a id="org87c0df4"></a>

## 5.201 Functional components vs Class components

A Functional Component is simply a component created using a function:

    function FunctionalComponent() {
      return (
        <View>
          <Text>Testing</Text>
        </View>
      )
    }

A Class component needs a few additions:

    import React, { Component } from "react";
    
    class ClassComponent extends Component {
      render() {
        return (
          <View>
    	<Text>Testing</Text>
          </View>
        )
      }
    }

Functional components usually require less code to achieve the same
functionality.


<a id="org6d26cd1"></a>

## 5.203 React Native documentation: Class components

-   [React Native Class Components Documentation](https://reactnative.dev/docs/intro-react)


<a id="orgaaaa142"></a>

# Week 10

Key Concepts

-   Learn advanced Javascript techniques
-   Understand and implement testing
-   To discuss what makes efficient programming


<a id="orgc0ad05c"></a>

## 5.301 Syntax transformers


<a id="orgdaa9f72"></a>

### Block Scoping

`var` creates variables with function scope while `let` obeys block
scoping.

    function whoAmI() {
      if (true) {
        var name = "foo"
        let location = "home";
      }
    
      console.log(name); /* foo */
      console.log(location); /* undefined */
    }
    
    whoAmI();


<a id="org814b528"></a>

### Destructuring

Destructuring lets us *unpack* the values inside an object or array
into distinct variables.

    let person = {
      name: "Foo",
      location: "Home",
      device: "Phone"
    }
    let {name, device} = person;
    
    let bar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    let [first, second, ...rest] = bar;
    
    console.log(name); /* Foo */
    console.log(device); /* Phone */
    console.log(first); /* 1 */
    console.log(second); /* 2 */
    console.log(rest); /* [3, 4, 5, 6, 7, 8, 9, 10] */


<a id="org74e4231"></a>

### `for of`

    let nums = [1, 2, 3, 4];
    
    for (let num of nums) {
      console.log(num);
    }
    
    /* 1
     * 2
     * 3
     * 4
     */


<a id="org6d348db"></a>

## 5.303 React Native documentation: Syntax transformers

-   [JavaScript Environment](https://reactnative.dev/docs/javascript-environment)


<a id="org6d7aa92"></a>

## 5.304 Performance enhancement

The `InteractionManager` allows us to schedule tasks to run at a later
time when there are no interactions:

    InteractionManager.runAfterInteractions(() => {
      /* Expensive computation here */
    });  


<a id="org6b6ca93"></a>

# Week 11

Key Concepts

-   To handle and manipulate data
-   To understand the importance of data ethics
-   To understand what data sources includes


<a id="org5560bcf"></a>

## 6.001 Data sources

Apps usually communicate with different data sources (web servers, API
endpoints, local storage, &hellip;) in order to gather data to display to
the users.


<a id="org339a680"></a>

## 6.003 Ethics

In summary, don&rsquo;t collect user data unless it&rsquo;s essential for the
functionality of the app. If we <span class="underline">do</span> collect user data, we must
protect it.


<a id="orgad3a9be"></a>

## Red Hat API Security

-   [API Security Blog post](https://www.redhat.com/en/topics/security/api-security)


<a id="org601e3db"></a>

## 6.101 What is JSON and XML?

JSON and XML are very common data exchange formats.


<a id="org56b1420"></a>

## 6.103 Loading JSON from a file

    import { StatusBar } from 'expo-status-bar';
    import React from 'react';
    import { StyleSheet, Text, View } from 'react-native';
    import JSONdata from './test.json'; /* parses the string automatically */
    
    export default function App() {
      return (
        <View style={styles.container}>
          <Text>Hello {JSONdata.name}</Text>
          <StatusBar style="auto" />
        </View>
      );
    }
    
    const styles = Stylesheet.create({
      container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
      },
    });


<a id="org6211f4e"></a>

## 6.201 Saving data

`AsyncStorage` is a recommended library to handle saving data
**unencrypted** data to phone storage. It can be installed with the
command below:

    expo install @react-native-async-storage/async-storage

Here&rsquo;s a primer on how to use it:

    import AsyncStorage from '@react-native-async-storage/async-storage';
    
    /* Saving */
    AsyncStorage.setItem('@testKey', "test").then(() => {
      console.log("Saved");
    }).catch((err) => {
      console.log(`ERROR: ${err}`);
    });
    
    /* Retrieving */
    AsyncStorage.getItem('@testKey').then((value) => {
      console.log(value);
    }).catch((err) => {
      console.log(`ERROR: ${err}`);
    });

For encrypted data, we can `SecureStore`. There is a limit of 2048
bytes for encrypted data. Install it with:

    expo install expo-secure-store

Here&rsquo;s a primer on how to use it:

    import * as SecureStore from 'expo-secure-store';
    
    /* Saving */
    SecureStore.setItemAsync("testKey", "test").then(() => {
      console.log("Saved");
    }).catch((err) => {
      console.log(`ERROR: ${err}`);
    });
    
    /* Retrieving */
    SecureStore.getItemAsync("testKey").then((value) => {
      console.log(value);
    }).catch((err) => {
      console.log(`ERROR: ${err}`);
    });


<a id="org0770c42"></a>

## 6.203 AsyncStorage and SecureStore documentation

-   [AsyncStorage Documentation](https://react-native-async-storage.github.io/async-storage/docs/usage/)
-   [SecureStore Documentation](https://docs.expo.dev/versions/latest/sdk/securestore/)


<a id="orgc3c704b"></a>

## 6.204 Saving data in React Native

    import { StatusBar } from 'expo-status-bar';
    import React from 'react';
    import { StyleSheet, Text, View, TextInput } from 'react-native';
    import AsyncStorage from '@react-native-async-storage/async-storage';
    
    export default function App() {
      const [text, onChangeText] = useState("");
    
      if (text == "") {
        AsyncStorage.getItem('@textInput').then((value) => {
          onChangeText(text);
        }).catch((err) => {
          console.log(`ERROR: ${err}`);
        });
      }
    
      return (
        <View style={styles.container}>
          <TextInput
    	style={styles.input}
    	onChangeText={async (text) => {
    	  await AsyncStorage.setItem('@textInput', text);
    	  onChangeText(text);
    	}}
    	value={text}
    	placeHolder={"Value"}
          />
          <StatusBar style="auto" />
        </View>
      );
    }
    
    const styles = Stylesheet.create({
      container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
      },
    });


<a id="org31e692b"></a>

# Week 13

Key Concepts

-   To download information from the cloud
-   To detect and deal with unstable internet connections
-   To understand what constitutes cloud computing


<a id="org1d977f8"></a>

## 7.001 What are cloud services?

Cloud services removes the need to personally host infrastructure. It
also gives us the ability to scale our infrastructure as the demand
grows, thus reducing initial costs.


<a id="orgc14633b"></a>

## 7.002 Popular cloud services

-   **SaaS:** Software as a Service, e.g. Dropbox, Slack, Apple Music, or
    Microsoft Office 365.
-   **Iaas:** Infrastructure as a Service, e.g. Amazon AWS or Microsoft
    Azure Platform.
-   **Paas:** Platform as a Service, e.g. Amazon AWS, Microsoft Azure
    Platform, IBM.


<a id="orga9bf90f"></a>

## 7.004 Cloudflare&rsquo;s guide to the cloud

-   [Cloudflare&rsquo;s Guide To The Cloud](https://www.cloudflare.com/en-gb/learning/cloud/what-is-the-cloud/)


<a id="org213e22f"></a>

## 7.101 Detecting active connections

With the expo network library, we can access important network
information. Install it with:

    expo install expo-network

Use it like shown below:

    import React, { useState, useEffect } from 'react';
    import * as Network from 'expo-network';
    
    /* ... */
    
    function isConnected() {
      return new Promise(async(resolve, reject) => {
        try {
          let networkStatus = await Network.getNetworkStateAsync();
          if (networkStatus.isInternetReachable) {
    	resolve(true);
          } else {
    	resolve(false);
          }
        } catch(err) {
          reject(err);
        }
      });
    }
    
    export default function App() {
      const [internetConnected, setInternetConnected] = useState(true);
    
      useEffect(() => {
        isConnected(). then((isIt) => {
          console.log(`Connected status = ${isIt}`);
          if (isIt != internetConnected) {
    	setInternetConnected(isIt);
          }
        }).catch((err) => {
          console.log(`An error occurred -> ${err}`);
        });
      });
    
      if (internetConnected) {
        return (
          /* ... */
        );
      } else {
        return (
          /* ... */
        );
      }    
    }

We should get a response like so:

    {
      type: NetworkStateType.CELULAR,
      isConnected: true,
      isInternetReachable: true,
    }

The `NetInfo` library implements an event listener which is a nicer
way of achieving the same functionality. Let&rsquo;s install it:

    expo install @react-native-community/netinfo

And use it:

    import React, { useState } from 'react';
    import NetInfo from '@react-native-community/netinfo';
    
    /* ... */
    
    export default function App() {
      const [internetConnected, setInternetConnected] = useState(true);
    
      const unsubscribe = NetInfo.addEventListener(state => {
        console.log('Connection type', state,type);
        console.log('Is connected?', state.isConnected);
        console.log('Is internet reachable?', state.isInternetReachable);
    
        if (internetConnected != state.isConnected) {
          setInternetConnected(state.isConnected);
        }
      });
    
      if (internetConnected) {
        return (
          /* ... */
        );
      } else {
        return (
          /* ... */
        );
      }
    }


<a id="org2d7e16c"></a>

## 7.104 Expo network documentation

-   [Expo Network Docs](https://docs.expo.dev/versions/latest/sdk/network/)
-   [Expo NetInfo Docs](https://docs.expo.dev/versions/latest/sdk/netinfo/)


<a id="orgeb06fdb"></a>

## 7.201 Retrieving data from the internet

    fetch("https://archive.org/metadata/principleofrelat00eins")
      .then((response) => response.json())
      .then((json) => {
        console.log(json);
      })
      .catch((err) => {
        console.log("An error:", err);
      });

