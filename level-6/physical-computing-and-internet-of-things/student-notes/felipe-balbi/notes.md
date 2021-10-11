
# Table of Contents

1.  [Week 1](#orgc97ad4e)
    1.  [1.001 Introduction to the course](#orgc18fd5c)
    2.  [1.101 Introduction to physical computing and IoT](#org5020229)
    3.  [1.103 Background to IoT, IoT stack and IoT architecture](#orgdff1e2b)
    4.  [1.105 IoT stack and IoT architecture](#orgf64efc0)
2.  [Week 2](#org2d3936c)
    1.  [1.301 Introduction to microcontrollers, their types and capabilities](#orge0244cc)
    2.  [1.501 Basics on breadboards, extension shields, wiring/pins and transistors](#orgdaa2680)
3.  [Week 3](#org76eb71c)
    1.  [2.001 - Introduction to electricity flows in sensors and transducers](#orgac017e4)
    2.  [2.003 - Understanding Digital & Analog input&output signals](#org04ef322)
4.  [Week 4](#org0106d5d)
    1.  [2.301 - Introduction to creating and reading own circuits diagrams](#org5efeb3e)
    2.  [2.303 - Understanding the types of nodes (Gateway, Router, Hub, Actuators)](#org47a2b3f)



<a id="orgc97ad4e"></a>

# Week 1

Key Concepts

-   Should be able to explain what IoT is, IoT stack and IoT
    architecture
-   Should understand what microcontrollers are, how they are used and
    why
-   Should be able to install and set up Arduino IDE with drivers and
    relevant libraries


<a id="orgc18fd5c"></a>

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


<a id="org5020229"></a>

## 1.101 Introduction to physical computing and IoT

Physical Computing refers to the creation and use of devices that
sense, reason, and react to the world around
them. Internet-of-Things (IoT) describes the network of physical
objects.


<a id="orgdff1e2b"></a>

## 1.103 Background to IoT, IoT stack and IoT architecture

As shown in Iot Building Block figure [1](#org3d5fcfd) below,
the communication networks play a central role allowing all other
nodes to communicate with each other.

\begin{figure}[h]
\label{org3d5fcfd}
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
in figure [2](#orge6140db) below.

\begin{figure}[h]
\label{orge6140db}
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

Figure [3](#org4c004c0) describes how a set of IoT nodes form an
ecosystem:

\begin{figure}[h]
\label{org4c004c0}
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


<a id="orgf64efc0"></a>

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


<a id="org2d3936c"></a>

# Week 2

Key Concepts

-   Should be able to explain what IoT is, IoT stack and IoT
    architecture
-   Should understand what microcontrollers are, how they are used and
    why
-   Should be able to install and set up Arduino IDE with drivers and
    relevant libraries


<a id="orge0244cc"></a>

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


<a id="orgdaa2680"></a>

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


<a id="org76eb71c"></a>

# Week 3

Key Concepts

-   Understand the role of electricity, electronics and Transducers.
-   Understand how electricity flow in the microcontroller circuit &
    breadboard
-   Explain the difference between Arduino and PLC and how to read
    schema drawings


<a id="orgac017e4"></a>

## 2.001 - Introduction to electricity flows in sensors and transducers

-   **Current:** flow of electrons moving through a circuit. Measured
    in Amperes or Amps (\si{\ampere}).
-   **Resistance:** measure of a material&rsquo;s ability to oppose
    electrical flow. Measure in Ohms (\si{\ohm}).
-   **Voltage:** difference in charge between two different
    points. Measured in Volts (\si{\volt}).
-   **Capacitor:** stores a certain amount of electricity as potential
    energy. Capacitance is measured in Farads (\si{\farad}).
-   **Inductor:** stores a certain amount of electricity as a magnetic
    field. Inductance is measured in Henries (\si{\henry}).
-   **Transistors:** a voltage-controlled switch. Can work as an
    amplifier.

Ohm&rsquo;s Law gives a relationship between voltage, resistance, and
current:

\begin{align*}
  V = I\times R
\end{align*}

Resistors come in 4, 5, or 6 color bands, we start reading from the
side with higher concentration of color bands<sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>.


<a id="org04ef322"></a>

## 2.003 - Understanding Digital & Analog input&output signals

-   **Analog:** continuous value between $0$ and e.g. $3.3\si{\volt}$.
-   **Digital:** discrete value. Either $0$ or $1$.

Voltage divider is a simple technique to reduce the voltage with a
linear transformation. Figure [5](#org496b465) shows a depiction of how
it&rsquo;s implemented.

\begin{figure}[h]
\label{org496b465}
  \centering
  \begin{tikzpicture}
    [node distance=1.5cm,
     circuit ee IEC, x=3cm, y=2cm, thick,
     every info/.style={font=\footnotesize},
     small circuit symbols,
     set resistor graphic=var resistor IEC graphic,
     set make contact graphic= var make contact IEC graphic]

    \node[voltage source={direction info,info'=$V_{in}$}] (v1) {};
    \node[contact,right=of v1] (c1) {};
    \node[resistor={info=$R_1$}, right=of c1] (r1) {};
    \node[contact, right=of r1] (c2) {};
    \node[resistor={info=$R_2$}, right=of c2] (r2) {};
    \node[contact, right=of r2] (c3) {};
    \node[ground, right=of c3] (gnd) {};

    \node[contact, label={[label distance=0.25cm]0:$V_{out}$}, below=of c2] (c4) {};

    \draw (v1.west) -- (c1);
    \draw (c1) -- (r1.west);
    \draw (r1.east) -- (c2);
    \draw (c2) -- (r2.west);
    \draw (r2.east) -- (c3);
    \draw (c3) -- (gnd.west);

    \draw (c2) -- (c4);

  \end{tikzpicture}
\end{figure}

We can derive the voltage divider equation rather easily. Let&rsquo;s
first redraw this circuit to make it easier to asee what&rsquo;s
happening:

\begin{figure}[h]
\label{orgeb8458d}
  \centering
  \begin{tikzpicture}
    [node distance=1.5cm,
     circuit ee IEC, x=3cm, y=2cm, thick,
     every info/.style={font=\footnotesize},
     small circuit symbols,
     set resistor graphic=var resistor IEC graphic,
     set make contact graphic= var make contact IEC graphic]

     \foreach \contact/\x in {1/1, 2/2, 3/2.5}
     {
       \node [contact] (bc \contact) at (\x,0) {};
       \node [contact] (tc \contact) at (\x,1) {};
     }

     \draw (bc 1) -- (bc 2) -- (bc 3);
     \draw (tc 2) -- (tc 3);

     \draw (bc 1) to [voltage source={direction info,info'=$V_{in}$}] ++(up:1) to (tc 1);
     \draw (tc 1) to [resistor={info=$R_1$}] ++(right:1) to (tc 2);
     \draw (tc 2) to [resistor={info=$R_2$}] ++(down:1) to (bc 2);

     \draw[bend left, dashed, red, <->] (tc 3) to node [auto] {$V_{out}$} (bc 3);

  \end{tikzpicture}
\end{figure}

The derivation is as follows:

\begin{align*}
  V_{in} &= (R_1+R_2)\times I\\
  I &= \frac{V_{in}}{R_1+R_2}\\
  V_{R_1} &= V_{in} - V_{out} = I \times R_1\\
  V_{R_2} &= V_{out} - 0 = I \times R_2\\
  V_{out} &= V_{R_2}\\
  V_{out} &= I \times R_2\\
  V_{out} &= \frac{V_{in}}{R_1+R_2} \times R_2\\
  V_{out} &= \frac{R_2}{R_1+R_2} \times V_in\\
\end{align*}

Pulse Width Modulation is used for controlling voltage at each duty
cycle.


<a id="org0106d5d"></a>

# Week 4

Key Concepts

-   Understand the role of electricity, electronics and Transducers.
-   Understand how electricity flow in the microcontroller circuit &
    breadboard
-   Explain the difference between Arduino and PLC and how to read
    schema drawings


<a id="org5efeb3e"></a>

## 2.301 - Introduction to creating and reading own circuits diagrams

Figure [8](#orgcc4e64f) shows and example schematic diagram of a very
simple circuit.

\begin{figure}[h]
\label{orgcc4e64f}
  \centering
  \begin{tikzpicture}
       [node distance=1.5cm,
        circuit ee IEC, x=3cm, y=2cm, thick,
        every info/.style={font=\footnotesize},
        small circuit symbols,
        set resistor graphic=var resistor IEC graphic,
        set make contact graphic= var make contact IEC graphic]

        \foreach \contact/\x in {1/1, 2/2, 3/3, 4/4}
        {
          \node [contact] (bc \contact) at (\x,0) {};
          \node [contact] (tc \contact) at (\x,1) {};
        }

        \draw (bc 1) -- (bc 2) -- (bc 3) -- (bc 4);
        \draw (tc 4) -- (bc 4);

        \draw (tc 1) to [battery={volt'=5,info=Battery}] ++(down:1) to (bc 1);
        \draw (tc 1) to [resistor={ohm'=330,info=Resistor}] ++(right:1) to (tc 2);
        \draw (tc 2) to [make contact={info=Switch}] ++(right:1) to (tc 3);
        \draw (tc 3) to [diode={light emitting', info=Diode}] ++(right:1) to (tc 4);

  \end{tikzpicture}
\end{figure}

[KiCAD EDA](https://www.kicad.org/) is a good quality Schematic Capture and PCB Layout
toolchain.


<a id="org47a2b3f"></a>

## 2.303 - Understanding the types of nodes (Gateway, Router, Hub, Actuators)

*Nodes* are any devices capable of sensing, reacting, or
communicating. Within *IoT*, these devices have some sort of
connectivity (WiFi, Ethernet, LoRaWAN, etc).

-   **Hub:** Broadcasts messages to all other nodes connected to
    it. Messages which are not addressed, are silently ignored. Limited
    to half-duplex operation.
-   **Bridge:** Resolve addressing problems. Reviews and record MAC
    addresses. Fewer ports. Considered to be deprecated
-   **Switches:** Maintain MAC and port address tables. Support
    full-duplex operation. Increase network security.
-   **Gateway:** Edge node. Less traffic control. Support different
    protocols (ZigBee, Zwave, GSM, &hellip;). Generally also support
    onboard programming and I/O.
-   **Router:** Connects to internet via an ISP. Uses (and usually
    assigns) IP addresses. Configurable with increased security
    features.
-   **Actuators:** Reacts to the environment and perform actions (opening
    doors, starting sprinklers, opening/closing binds, &hellip;).


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Y&rsquo;all can Google for a color band table :-p
