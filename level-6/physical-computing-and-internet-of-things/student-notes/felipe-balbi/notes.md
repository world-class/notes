
# Table of Contents

1.  [Week 1](#org6badde6)
    1.  [1.001 Introduction to the course](#org02baff1)
    2.  [1.101 Introduction to physical computing and IoT](#org9c99f67)
    3.  [1.103 Background to IoT, IoT stack and IoT architecture](#org4ee08fc)
    4.  [1.105 IoT stack and IoT architecture](#orgeb60bcd)
2.  [Week 2](#orgea6fbc0)
    1.  [1.301 Introduction to microcontrollers, their types and capabilities](#org7019fac)
    2.  [1.501 Basics on breadboards, extension shields, wiring/pins and transistors](#orgbde501e)



<a id="org6badde6"></a>

# Week 1

Key Concepts

-   Should be able to explain what IoT is, IoT stack and IoT
    architecture
-   Should understand what microcontrollers are, how they are used and
    why
-   Should be able to install and set up Arduino IDE with drivers and
    relevant libraries


<a id="org02baff1"></a>

## 1.001 Introduction to the course

Course learning objectives:

1.  Demonstrate understanding of <span class="underline">electricity</span>, <span class="underline">electronics</span>, and
    <span class="underline">transducers</span>
2.  <span class="underline">Program microcontrollers</span> and understand how they <span class="underline">receive</span>,
    <span class="underline">interpret</span> and <span class="underline">send</span> data from/to transducers
3.  Develop practical skills of <span class="underline">building circuits</span>
4.  Use <span class="underline">communication protocols</span> for inter-computer and
    inter-device communication
5.  Understand the <span class="underline">principles of physical interaction design</span>, including:
    1.  monitoring bodily movement
    2.  making mechanical movement
    3.  design of tactile physical interfaces
    4.  control of sound and light
6.  Design and build <span class="underline">complete physical computing systems</span>

Course Topics:

1.  Microcontrollers
2.  Electricity and circuits
3.  Sensors
4.  Physical Interaction Design
5.  Physical Computing Projects
6.  Motors and actuators
7.  Communications protocols
8.  Networked Devices
9.  Bodily Monitoring
10. Robots


<a id="org9c99f67"></a>

## 1.101 Introduction to physical computing and IoT

Physical Computing refers to the creation and use of devices that
sense, reason, and react to the world around
them. Internet-of-Things (IoT) describes the network of physical
objects.


<a id="org4ee08fc"></a>

## 1.103 Background to IoT, IoT stack and IoT architecture

As shown in Iot Building Block figure [1](#orgf25b8f6) below,
the communication networks play a central role allowing all other
nodes to communicate with each other.

\begin{figure}[h]
\label{orgf25b8f6}
  \centering
  \begin{tikzpicture}
    \node[box, fill=orange!20] (cm) {Communication Networks};
    \node[box, right=of cm] {Energy Management};
    \node[box, below right=of cm] {Machine Intelligence};
    \node[box, below left=of cm] {Cyber Security};
    \node[box, left=of cm] {Cloud\\ Computing};
    \node[box, above left=of cm] {Data Analytics};
    \node[box, above=of cm] {Sensors Technology};
    \node[box, above right=of cm] {Embedded Electronics};
  \end{tikzpicture}
\end{figure}

A Typical IoT node is composed with several modules which are shown
in figure [2](#org328435a) below.

\begin{figure}[h]
\label{org328435a}
  \centering
  \begin{tikzpicture}[node distance=2cm]
    \node[box] (wim) {Wireless Interface Module};
    \node[box, right=of wim] (es) {Energy Source};
    \node[box, below=of wim] (mpc) {Microcontroller / Processor Module};
    \node[box, below=of mpc] (scm) {Signal Conditioning Module};
    \node[box, right=of mpc] (osm) {Onboard Storage Module};
    \node[box, right=of scm] (sm) {Sensory Module};
    \node[box, below=of sm] (am) {Actuator Module};

    \path (wim) edge[<->] (mpc)
          (mpc) edge[<->] (osm)
          (scm) edge[->]  (mpc)
          (scm) edge[<->]  (sm)
          (scm) edge[<->]  (am);
  \end{tikzpicture}
\end{figure}

Figure [3](#orgaa6ba90) describes how a set of IoT nodes form an
ecosystem:

\begin{figure}[h]
\label{orgaa6ba90}
  \centering
  \begin{tikzpicture}[node distance=2cm]
    \node[box] (pl) {Perception Layer};
    \node[box, right=of pl] (dev) {Devices \textit{"Things"}};

    \node[box, above=of pl] (nl) {Network Layer};
    \node[box, right=of nl] (gateways) {Gateways};

    \node[box, above=of nl] (proc) {Processing Layer};
    \node[box, right=of proc] (plat) {IoT Platforms};

    \node[box, above=of proc] (al) {Action Layer};
    \node[box, right=of al] (app) {Applications};

    \path (pl) edge[->] (dev)
          (pl) edge[->] (nl)
          (nl) edge[->] (gateways)
          (nl) edge[->] (proc)
          (proc) edge[->] (plat)
          (proc) edge[->] (al)
          (al) edge[->] (app);

  \end{tikzpicture}
\end{figure}


<a id="orgeb60bcd"></a>

## 1.105 IoT stack and IoT architecture

-   Cheruvu, S, A. Kumar, N. Smith and D.M. Wheeler [Demystifying
    Internet of Things security: Successful IoT device/edge and
    platform security deployment](https://learning.oreilly.com/library/view/demystifying-internet-of/9781484228968/?sso_link=yes&sso_link_from=university-of-london-worldwide). (New York, NY: Apress, 2019)
    Chapter 2.

-   Tamboli, A. [Build your own IoT platform: Develop a fully flexible
    and scalable Internet of Things platform in 24 hours](https://learning.oreilly.com/library/view/build-your-own/9781484244982/?sso_link=yes&sso_link_from=university-of-london-worldwide). (New York,
    NY: Apress, 2019) Chapters 1, 2 and 3.

-   Faiza, A., [&rsquo;Evolution of the web: web 1.0, web 2.0, web 3.0, web
    4.0, web 5.0 and beyond&rsquo;](http://ahmadfaizar.blogspot.com/2018/08/evolution-of-web-web-10-web-20-web-30.html) ahmadfaiza.blog.


<a id="orgea6fbc0"></a>

# Week 2

Key Concepts

-   Should be able to explain what IoT is, IoT stack and IoT
    architecture
-   Should understand what microcontrollers are, how they are used and
    why
-   Should be able to install and set up Arduino IDE with drivers and
    relevant libraries


<a id="org7019fac"></a>

## 1.301 Introduction to microcontrollers, their types and capabilities

A microcontroller is a small *System-on-Chip* comprising of a small
CPU, Memory (volatile and non-volatile), and I/O peripherals
(I<sup>2</sup>C, SPI, GPIO, etc).

Some popular microcontroller platforms are:

1.  Arduino Uno
2.  Intel Galileo
3.  ESP8266 and ESP32
4.  STM32L/F
5.  Raspberry Pi
6.  Beaglebone
7.  Pocketbeagle


<a id="orgbde501e"></a>

## 1.501 Basics on breadboards, extension shields, wiring/pins and transistors

-   **Breadboard:** a prototyping place where components can be
    inserted without any soldering requirements
-   **Extension Shields:** a ready-made *extension* for a platform
    containing e.g. sensors, wireless connectivity modules (LoRa,
    ZigBee, etc), passive components, voltage regulators required for
    the sensors
-   **(Dupont) Wires:** make it easier to wire things together in a
    breadboard
-   **Transistors:** essentially, a voltage-controlled switch

