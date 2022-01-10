
# Table of Contents

1.  [Week 1](#org0143977)
    1.  [1.006 Getting started on this module](#orgd2bf9f6)
    2.  [1.103 The pathway from developer to consumer](#orgb9638c5)
    3.  [1.201 Multiple codebases](#orgfad7974)
    4.  [1.203 Native apps vs hybrid apps](#org9510780)
    5.  [1.301 What is React Native?](#org8c53ad2)
    6.  [1.302 What is Expo?](#org148da8c)
    7.  [1.305 Javascript arrow notation](#org50b1a24)
    8.  [1.306 Creating a new React Native project and overview of the file structure](#orgd542b5e)
2.  [Week 2](#org77a89bc)
    1.  [1.401 JSX and props](#orgfc8b5eb)
    2.  [1.501 Testing on simulators and devices](#orgcf9d6e1)
    3.  [1.601 Marketplaces and conforming to the rules](#org9ab111f)
3.  [Week 3](#org3492f23)
    1.  [2.001 Skeuomorphism, minimalism and neumorphism](#org855bb2a)
    2.  [2.003 Colour palettes and mood psychology](#org523911a)
    3.  [2.006 Design ideology](#orgca01c27)
    4.  [2.101 What are dark patterns?](#orgfe76719)
    5.  [2.103 Dark patterns](#orgbad2114)
    6.  [2.201 Introduction to wireframing](#org7f41e02)
    7.  [2.203 Creating a wireframe for a shopping app](#org1874f20)
4.  [Week 4](#orgf2801f0)
    1.  [2.401 How to style elements in React Native](#orgfdbc205)
    2.  [2.501 What is responsive design?](#org44a84d2)
    3.  [2.504 React Native flex](#org7a84be5)
    4.  [2.505 Apple developer guidelines](#org776c5da)
    5.  [2.601 Design with accessibility in mind](#org7f38bca)
    6.  [2.603 Accessibility in computational technology](#orgc027c9f)
5.  [Week 5](#org40d4526)
    1.  [3.001 UI elements and the OS](#org40b9c2e)
    2.  [3.004 React Native component documentation](#org284a5a7)
6.  [Week 6](#org23de829)
    1.  [3.301 Why pages are important](#org7f9fb70)
    2.  [3.303 Navigation in React Native](#orgfbf46c9)
    3.  [3.305 How to programatically navigate](#orgee7b20d)
    4.  [3.307 Navigation in React Native guide](#orga006ab9)
7.  [Week 7](#orgcd79982)
    1.  [4.101 What are table views?](#orgd55fa53)
    2.  [4.201 What are scroll views and flat lists?](#org4b92eb4)
    3.  [4.202 Performance monitoring in React Native](#orge2d1b7d)
8.  [Week 8](#orgc92afc9)
    1.  [4.401 What are animations?](#org3804f55)
    2.  [4.403 Composing more complex animations](#org085c932)
    3.  [4.405 React native animation docs](#org81a8c38)
    4.  [4.501 What are gestures?](#org77e429c)
    5.  [4.601 What are alerts?](#org3285dec)
    6.  [4.701 What are timers?](#orgaeacb3d)



<a id="org0143977"></a>

# Week 1

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="orgd2bf9f6"></a>

## 1.006 Getting started on this module

React Native is an Open Source framework created by Facebook which
lets us JavaScript to produce native code for different operating
systems. Some of the benefits are:

1.  Single language for multiple platforms
2.  Ease and flexibility of JavaScript
3.  Near-native performance
4.  Heavily used in industry


<a id="orgb9638c5"></a>

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


<a id="orgfad7974"></a>

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


<a id="org9510780"></a>

## 1.203 Native apps vs hybrid apps

React Native, while using a common language for all platforms, is
much closer to a native application. During compilation of the
project, React Native renderas our views with native code on the
target platform thus giving us the best of both worlds.

In table [1](#orgb6565bc) we list pros and cons of Native
Apps. Similarly, table [2](#orgaf1a7cc) shows the same comparison
for Hybrid Apps.

<table id="orgb6565bc" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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

<table id="orgaf1a7cc" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org8c53ad2"></a>

## 1.301 What is React Native?

[React Native](https://reactnative.dev/) is a framework written in JavaScript that allows us to
build code for multiple platforms.


<a id="org148da8c"></a>

## 1.302 What is Expo?

[Expo](https://expo.dev) helps manage a React Native project.


<a id="org50b1a24"></a>

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


<a id="orgd542b5e"></a>

## 1.306 Creating a new React Native project and overview of the file structure

Create a new project with:

    $ expo init --npm

Choose a name for the application and choose the `blank`
template. Hitting `ENTER` will create a new directory with the name
of the application and all dependencies already installed. When it
completes, we can change into the new application&rsquo;s directory and
run:

    $ expo start


<a id="org77a89bc"></a>

# Week 2

Key Concepts

-   Understand the limitations and advantages of different platforms
-   Discuss the elements of apps you enjoy
-   Understand the course structure


<a id="orgfc8b5eb"></a>

## 1.401 JSX and props

JSX is a key part of React Native. It allows us to create
components and use them as if they were regular HTML
tags. Component names must start with a capital letter.

Props can be passed in an HTML `attribute=value` format.


<a id="orgcf9d6e1"></a>

## 1.501 Testing on simulators and devices

Testing the application on a device while under development can
help us uncover issues early. The simulator is another option which
works well.


<a id="org9ab111f"></a>

## 1.601 Marketplaces and conforming to the rules

Reasons for rejection

1.  App doesn&rsquo;t work
2.  Use of copyrighted material
3.  Breach of safety guidelines
4.  Safeguarding issues
5.  Circumventing the app stores
6.  Low-quality design


<a id="org3492f23"></a>

# Week 3

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="org855bb2a"></a>

## 2.001 Skeuomorphism, minimalism and neumorphism

-   **Skeuomorphism:** emulating the look of physical objects in your
    application
-   **Minimalism:** prioritization of essential elements
-   **Neumorphism:** the middle-ground between skeuomorphism and
    minimalism


<a id="org523911a"></a>

## 2.003 Colour palettes and mood psychology

-   **Blue:** calmness, serenity, stability, reliability
-   **Red & Yellow:** speed, immediacy, increase appetite
-   **White:** simplicity, calmness, professionalism


<a id="orgca01c27"></a>

## 2.006 Design ideology

-   [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
-   [Google Material Design Guidelines](https://material.io/design/guidelines-overview)


<a id="orgfe76719"></a>

## 2.101 What are dark patterns?

Dark Patterns is the term given to design choices that are crafted
to make you do things you don&rsquo;t want to do. 


<a id="orgbad2114"></a>

## 2.103 Dark patterns

-   [Dark Patterns website](https://www.darkpatterns.org/)


<a id="org7f41e02"></a>

## 2.201 Introduction to wireframing

Wireframes allow us to design layouts in order to demonstrate an
idea and check if it&rsquo;s likely to be practical.


<a id="org1874f20"></a>

## 2.203 Creating a wireframe for a shopping app

Before wireframing, it&rsquo;s a good to create a [User Flow
Diagram](https://diagrams.net). After we can start working on our [wireframe](https://www.framer.com/).


<a id="orgf2801f0"></a>

# Week 4

Key Concepts

-   Understand the need for wireframing
-   Discuss the link between psychology and design decisions
-   Understand and identify different design styles and replicate them
    using code


<a id="orgfdbc205"></a>

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


<a id="org44a84d2"></a>

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


<a id="org7a84be5"></a>

## 2.504 React Native flex

-   [React Documentation: Flexbox](https://reactnative.dev/docs/flexbox)


<a id="org776c5da"></a>

## 2.505 Apple developer guidelines

-   [Apple Developer Guidelines: Adaptivity And Layout](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/)


<a id="org7f38bca"></a>

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


<a id="orgc027c9f"></a>

## 2.603 Accessibility in computational technology

-   Antona, M. and C. Stephanidis (eds) Universal Access in
    Human-Computer Interaction. Design Approaches and Supporting
    Technologies. 14th International Conference, UAHCI 2020, Held as
    Part of the 22nd HCI International Conference, HCII 2020. (Springer
    International Publishing, 2020).


<a id="org40d4526"></a>

# Week 5

Key Concepts

-   Use JSX to create basic elements on the screen
-   Understand the need for pagination
-   Understand and be able to use UI elements in React Native


<a id="org40b9c2e"></a>

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


<a id="org284a5a7"></a>

## 3.004 React Native component documentation

-   [React: Core Components And APIs](https://reactnative.dev/docs/components-and-apis)


<a id="org23de829"></a>

# Week 6

Key Concepts

-   Use JSX to create basic elements on the screen
-   Understand the need for pagination
-   Understand and be able to use UI elements in React Native


<a id="org7f9fb70"></a>

## 3.301 Why pages are important

Navigation and Pages create a clear separation of our content. It
turns our content into easily understandable chunks of
information.


<a id="orgfbf46c9"></a>

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


<a id="orgee7b20d"></a>

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


<a id="orga006ab9"></a>

## 3.307 Navigation in React Native guide

-   [React Navigation](https://reactnavigation.org/)


<a id="orgcd79982"></a>

# Week 7

Key Concepts

-   To develop a stronger understanding of advanced techniques
-   Use advanced methods of interaction
-   Understand and program animations


<a id="orgd55fa53"></a>

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


<a id="org4b92eb4"></a>

## 4.201 What are scroll views and flat lists?

Scroll Views allow us to display content that wouldn&rsquo;t normally fit
the screen. `ScrollView` will render every child, even the ones that
can&rsquo;t be seen until scrolled into view.

A `FlatList` is the perfect alternative to `ScrollView` because it
will lazily load items.


<a id="orge2d1b7d"></a>

## 4.202 Performance monitoring in React Native

When building the application in debug mode, we can shake the device
in order to display a react native debug menu, which includes
performance monitoring.


<a id="orgc92afc9"></a>

# Week 8

Key Concepts

-   To develop a stronger understanding of advanced techniques
-   Use advanced methods of interaction
-   Understand and program animations


<a id="org3804f55"></a>

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


<a id="org085c932"></a>

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


<a id="org81a8c38"></a>

## 4.405 React native animation docs

-   [React Native Animated Documentation](https://reactnative.dev/docs/animated)


<a id="org77e429c"></a>

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

Table [3](#orgb563ad5) below summarizes the `gestureState` object&rsquo;s
properties:

<table id="orgb563ad5" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org3285dec"></a>

## 4.601 What are alerts?

Alerts serve to notify the user of something that needs immediate
attention. To use alerts we must first import `Alert` from
`react-native`. The simplest alert can be called using:

    Alert.alert("message");

The full list of possible parameters are shown below:

    alert(title, message?, buttons?, options?);

where:

-   `title` : The dialog&rsquo;s title. Pass `null` to hide
-   `message` : optional message that appears below the title
-   `buttons` : optional array with button configurations
-   `options` : **Android-specific** configuration

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

-   `default` : The default button style
-   `cancel` : Often represented as red text
-   `destructive` : Often represented as *permanent* action, e.g. a
    solid red background

On iOS we can define as many buttons as we&rsquo;d like, but on Android
there is a hard-limit of three buttons.


<a id="orgaeacb3d"></a>

## 4.701 What are timers?

Timers allow us to execute code after a set delay.

