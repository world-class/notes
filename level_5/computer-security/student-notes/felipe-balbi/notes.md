
# Table of Contents

1.  [Week 1](#orgd748c6a)
    1.  [Reading: Ethics in information security](#orgc9cea3c)
    2.  [Defining computer security](#org53da418)
    3.  [Types of malicious software 1](#org22272f6)
        1.  [Viruses](#org621e0cb)
        2.  [Worms](#orgd9a86f0)
        3.  [Adware](#orgef9b60b)
        4.  [Trojans](#org0810517)
        5.  [Spyware](#org7aa69f9)
    4.  [Types of malicious software 2](#orgd9c1a4a)
2.  [Week 2](#orgcb490d0)
    1.  [Malware analysis and techniques](#org9ec936c)
    2.  [Malware analysis 2](#orgea7cd05)
    3.  [Ethics](#org0ec3f52)
    4.  [Passwords](#org4ae9b96)
    5.  [Social Engineering](#orga6d93ed)
3.  [Week 3](#org6c8eabd)
    1.  [The objectives of network security: confidentiality, integrity and accessibility](#orgb26be44)
    2.  [Paper about CIA](#org7bcf8ee)
    3.  [The attack surface and the denial of service attack](#orgdb50e05)
    4.  [The anatomy of a DDOS, botnets and Mirai](#orgf5e9e65)
    5.  [Mirai GitHub and Research Paper](#org827036d)
    6.  [Wireless attacks: WiFi attack vectors](#orgb26a142)
    7.  [Wireless Networking Security](#orgc8212ba)
4.  [Week 4](#orgc88691f)
    1.  [Firewalls – our first line of defence](#orge952bf6)
    2.  [Intrusion detection systems (IDS)](#org5393b3f)
    3.  [Intrusion Detection Systems](#orge2809a8)
5.  [Week 5](#orgd0ce628)
    1.  [Operating systems: windows and OS hardening](#org32b3a52)
    2.  [File system and directory structure](#org6fe0d4f)
    3.  [Windows Security](#org6f75f68)
6.  [Week 6](#orga361e4b)
    1.  [Why is Linux important for security & hardening Linux with Harbian](#org10f8f75)
    2.  [Harbian on Github](#org69c0d26)
    3.  [The Android attack surface](#org98591f5)
    4.  [Smartphone security: an overview of emerging threats.](#org29323a1)
    5.  [Virtualised and containerised operating systems](#org0b82632)
    6.  [Container Security](#org261aeb3)
7.  [Week 7](#org98095a7)
    1.  [What is Cryptography?](#org364ecad)
    2.  [History of Cryptography](#org9785b14)
    3.  [Symmetric cryptography](#org2e015fa)
    4.  [Asymmetric cryptography](#orgbb525b9)
    5.  [Some basic cyptographic techniques](#org8de7ba8)
8.  [Week 8](#orgb444eb8)
    1.  [Cryptography techniques transposition methods](#org17d2477)
    2.  [The basics of transposition cipher](#org72558f7)
    3.  [Cryptographic techniques substitution 1: Playfair](#org03e9a09)
    4.  [Playfair](#org940d80c)
    5.  [Cryptographic techniques substitution 2: Vigenere](#orgaddd961)
    6.  [Vigenère](#org823bb85)
    7.  [Frequency analysis](#org4920621)
9.  [Week 9](#org2c6e10f)
    1.  [Intro to RSA: Public key cryptography](#org43bb8b1)
    2.  [Primes and Euler&rsquo;s Phi Function](#org9f5b70e)
    3.  [Further reading](#org84afa11)
    4.  [Modular arithmetic](#orgd9522c0)
    5.  [RSA example in practice](#org0df8515)
    6.  [Security of RSA](#org6d1566d)
    7.  [Further RSA revision and practice](#org125eb1b)
10. [Week 10](#org8770003)
    1.  [5.6 Beginning the proof, first steps and an introduction to Fermat](#org2ae9949)
    2.  [5.7 Fermat&rsquo;s little theorem, playing with proofs example](#orgab90b15)
    3.  [5.8 Finalising our proof](#orgf7e9c93)
    4.  [Guidelines on cryptography](#org35d0f63)



<a id="orgd748c6a"></a>

# Week 1

Key Concepts

-   Understand the central goals and aspects of computer security.
-   Understand and explain the differences between a range of malware
    types.
-   Identify key examples of malware and their historical
    significance.


<a id="orgc9cea3c"></a>

## Reading: Ethics in information security

Read the following article:

[Ethics in information security](https://www.computer.org/csdl/magazine/sp/2017/03/msp2017030003/13rRUILc8dI), IEEE Security & Privacy, vol.15
May/June 2017, pp.3–4.

You should also familiarise yourselves with the [ACM ethics
guidelines](https://ethics.acm.org/).


<a id="org53da418"></a>

## Defining computer security

With the advent of the Internet, computer security became a very
important field of research.

Computer Security is the *protection of computer-related assets
against danger, loss or loss of control of something valuable*.

Security has three main goals:

-   **Prevention:** The safeguarding of assets from threats;
-   **Detection:** Systems that alert if malicious activity is, or is
    about to, take place;
-   **Reactiion:** Definition of procedures that enables us to deal
    with an attack.

Security can also be split into three main components:

-   **Policy:** deals with confidentiality, integrity and availability
    of data;
-   **Threat Model:** assumptions about those involved with malicious
    activity;
-   **Mechanism:** The SW/HW used to make sure the policies are
    enforced using the assumptions made during Threat Modelling.

There are five important terms that need to be defined:

-   **Attack:** activities harmful to computer systems, data, software,
    and hardware;
-   **Risk:** the possibility of damage or loss of digital assets in
    case of an attack;
-   **Zero-day (vulnerability):** a vulnerability used by an attacker
    before its discovery by the developer of the SW;
-   **Exploit:** SW used to take advantage of a bug or vulnerability;
-   **Hacker:** Subdivided into three groups
    -   **White Hats:** Find vulnerabilities with a goal of fixing them
        before its discovery by an attacker. They work under the
        permission of the owner of the computer system being attacked;
    -   **Black Hats:** Try to penetrate the system to gain unauthorized
        access. Often, their motivation is harm operations or steal
        sensitive operations;
    -   **Gray Hats:** They fall somewhere in-between White Hats and
        Black Hats and work with varying combinations of good and bad
        intentions.


<a id="org22272f6"></a>

## Types of malicious software 1

Malware is a piece of softwarte designed to disrupt, damange and
destroy an information system. There are many types of malwares,
some of which are discussed in the following subsections


<a id="org621e0cb"></a>

### Viruses

They self-replicate by inserting themselves into other files,
programs, documents, etc. Can spread through emails, USB sticks
and downloads from unknown sources.

The *Creeper* is considered to be one of the first computer
viruses. Developed in 1971, it infected computers connected to the
ARPANET, the internet prototype.

Another early virus was the *Elk Cloner*. Written by a high-school
student to infect Apple II computers using floppy disks
in 1982. Every 50th time the computer booted, it would display a
poem written by the hacker.

Not all viruses are harmless. The *I Love You* virus in 2000 caused
around $10 billion worth of damages by affecting nearly 10% of all
computers around the globe.


<a id="orgd9a86f0"></a>

### Worms

They can replicate without attaching themselves to existing
software. The *Stuxnet* is a well-known worm, considered to be one
of the most destructive worms ever created. It was designed to
attack [Programmable Logic Controllers](https://en.wikipedia.org/wiki/Programmable_logic_controller) by Siemes.

PLC devices are used for the automation of processes in
machinery. In this case, it targetted centrifuges in Iranian
nuclear power plants and altered the speed of the machine, causing
it to tear itself apart.

It&rsquo;s estimated that *Stuxnet* destroyed 20% of Iranian&rsquo;s nuclear
power plant centrifuges.


<a id="orgef9b60b"></a>

### Adware

These display advertisements on your screen during browsing or
online shopping. Possibly the most visible form of malware one can
encounter. Its main purpose is to collect user data.


<a id="org0810517"></a>

### Trojans

Trojans are named after the famous ancient Greek tale of the
invasion of the city of Troy by the Greek during the Trojan War.

After trying and failing several times to get access to the city,
the Greeks came up witha plan where squatter soldiers would hide
in the joint wooden status of a horse presented as a gift.

During the night, after entiring the city within the horse, the
Greeks broke out of the horse to attack the city.

Trojans have a similar way of working: they hide themselves inside
an application or program data and spread based on specific user
action.


<a id="org7aa69f9"></a>

### Spyware

Designed to spy on the target machine or the user, it collects
information and sends it back to the hacker for further use or for
sale on the dark web.

The *Dark Hotel* spyware is one famous case which used Hotel Wi-Fi
to target the personal systems of government officials, business
tycoons and political leaders to extract sensitive information.


<a id="orgd9c1a4a"></a>

## Types of malicious software 2

We have a look at *Keyloggers*, *Ramsonware*, *Botnets*, and
*Rootkits*.

A *Keylogger* records every keystroke from the user. This may
include messages being typed, emails, confidential information such
banking credentials, users, passwords, etc.

*Olympic Vision* is a keylogger used for Business Email Compromise
(BEC) attacks. It also uses several other pieces of malicious
software to steal sensitive information and spy on business
transactions. Nowadays it&rsquo;s very easy to get a hold of a keylogger.

In a *Ramsonware* attack, the victim&rsquo;s data is encrypted, backup
files are deleted and the people responsible demand money in
exchange for decryption of this data. In other words, the victims
are held to *ramsom* for renewed access to their data. The
*WannaCry* attack is a recent example that took place in May 2017.

In a *Botnet* attack, computers connected to the internet are taken
over by an attacker which remotely controls the computers using a
Command And Control (CNC) server to carry out Distributed Denial Of
Service (DDOS) attacks. A DDOS attack is when a given server is
flooded with so much traffic at one moment, that it collapses.

*EchoBot* is a botnet used to exploit over 59 known vulnerabilities
and launch a number of attacks, such as DDOS attack, steal
sensitive information, conduct corporate espionage, and infects a
wide range of Internet Of Things connected devices. Furthermore, it
also scans for old vulnerabilities in legacy systems for future
exploitation.

Finally, we have *Rootkits*. These remain hidden in a target
computer and activate in secret. They can perform several
activities rangin from giving attackers remote access to a computer
all the way to stealing sensitive information such as a password or
credit card details. They can also use a compromised computer to
launch any of the other attacks described before.


<a id="orgcb490d0"></a>

# Week 2

Key Concepts

-   Explain the key differences between static and dynamic analysis.
-   Explain the usage of sandboxes in malware analysis.
-   Understand the need for a variety of methods of malware analysis.


<a id="org9ec936c"></a>

## Malware analysis and techniques

Static Malware Analysis is one of the techniques used to analyze
and combat the types of malware discussed previously.

More generally, Malware Analysis is a set of processes and
techniques that help a Security Analyst understand the
functionality, origin, impact, and intent of malicious software.

The goal of this activity is find the *Indication Of Compromise*
(IOC) that depicts the behavior of malicious software. IOCs are
also used to develop signatures of malware. The two techniques used
for such analysis are Static Malware Analysis and Dynamic Malware
Analysis.

In Static Malware Analysis, the executable files are examined
without being executed. We can determine if a file is clean or
malicious and also discover information about its functionality.

With the information collected during Static Malware Analysis,
allows us to determine signatures, which are a collection of
distinguishing features that can be used to recognize malware.

Two essential techniques used in static analysis are antivirus
scanning and hashing. Antivirus scanning is the traditional method
of running a file through an antivirus scanner to try to detect
whether the file contains malware. Hashing is an algorithm that
produces a value referred to as a *Hash* which is a unique
fingerprint for a given file. Any modification to a file will
result in a different hash fingerprint, including infection by a
malware.

While static analysis methods are useful as a starting point for
some more basic types of attack, it can be powerless against more
recent and advanced types of malware. These have found ways to
circumvent the detection methods used during static analysis.

The solution to this is Dynamic Malware Analysis.


<a id="orgea7cd05"></a>

## Malware analysis 2

Dynamic Analysis or Behavioral Analysis is where we execute the
malware in a controlled environment known as a sandbox. This allows
a Security Professional to observe the behavior of malicious
software, help to understand its functionality and, hopefully, find
the Indicator Of Compromise.

This method overcomes some of the limitations of Static Analysis
with regards to catching the more advanced and adaptive forms of
malware.

Dynamic Analysis is an efficient method for analyzing malware
because it helps uncover the functionality of the malware, which is
not entirely possible with static analysis.

A Sandbox is a virtualized environment that contains a virtual
network, services, drives, etc, to ensure that the malware behaves
exactly as it would in a real environment.

There are two main types of sandboxes: Agent-based and
Agent-less. Agent-based sandboxes require software to be installed
on every computer that needs to be monitored. Well known examples
are cuckoo, threat expert, bit blase, and Comodo. Conversely, an
Agent-less sandbox monitors computers on the network from afar
without needing to be installed on every device. Popular examples
are VMRay, Analyzer, and SNDBOX.

Security Researchers use both types of sandboxes, but some research
suggests that agent-less sandboxes are more efficient.

Another common tool for dynamic analysis on Windows machines is
process monitor (Procmon). It&rsquo;s used to monitor the registry, file
system, network, running processes, etc.


<a id="org0ec3f52"></a>

## Ethics

Ethics is really important in the field of Computer Security.

Because we frequently work with computers, we may be exposed to
security issues and vulnerabilities. When that occurs, we may be
able to fix the issue ourselves by setting a rules in our
*iptables* or blocking traffic from a certain port for instance.

There may be, however, wider ramifications to the problem we have
discovered. It could be something worth mentioning to the maker of
the faulty software.

That&rsquo;s where **Responsible Disclosure** comes into the picture. The
term itself is somewhat subjective, but there may be legal
ramifications related to the disclosure of a security issue.

In a situation where we find an issue in a popular software
package, e.g. a popular Operating System, it may be the case that
many other users are affected. This means that we have some
responsibility to the Company or Service Provider in terms of
disclosing the issue.

It is common practice to identify the bug to the provider and offer
them enough time to fix the issue before disclosing the problem
publicly. There are considerations about transparency.

Some companies may refuse to patch issues or even seek legal action
against those exploiting or even simply highlighting the issue.

We should also think about security in a distributed way. For
example, cloud computing services offer on-demand computing. These
services may not be hosted in the locality of the developer or the
client. As such, we must consider conforming to the law in **all** of
these locations.

As a final thought, actions have consequences. Identity theft and
distributed denial of service attacks have real world
consequences. People&rsquo;s lives can be destroyed if we do something
that can cause harm.


<a id="org4ae9b96"></a>

## Passwords

Designing truly secure systems is very hard, only made harder by
data leaks happening periodically as can be seen in the news. Data
is becoming more and more valuable and there are places in the
*Dark Web* where one can buy leaked data.

One of the most prolific leaks utilised a simple encryption method
where the same encryption key was utilized. This resulted in a
one-to-one mapping between plain-text and encrypted passwords. In
other words, there was a situation where different users with the
same password would end up with the same encrypted string stored in
the database.

What this means is that if one password is cracked, all other users
who happen to be using the same password were also compromised. To
make matters worse, some users used password hints, which were also
stored in the database.

Reusing passwords is also a common problem. If a user&rsquo;s password
for one service is leaked, there is a probability that the same
user employed the exact same password on multiple services which
renders all of such services compromised.

There are ways to design more secure systems, however that also has
implications. We could require longer passwords and encourage
two-factor authentication, but a user may loose their phone or
forget that longer, more complex password.

A good system design balances accessibility with security and
usability.


<a id="orga6d93ed"></a>

## Social Engineering

Insecure designs can have far reaching ramifications, however a
system is only as secure as its safest link.

Social Engineering is one of the most common attack vectors and it
does not rely on technical subtleties of attacks. These attacks
rely on the fact that not all staff are properly trained in
security and, as such, attackers may exploit gaps in their
knowledge.

A company may have a robust security policy in place to handle
access control, however **compliance** is a different
matter.

Phishing emails are a good example of Social Engineering
attacks. They try to trick you into thinking the email comes from a
reliable source and convince you to give them the information
they&rsquo;re after. Some of these emails may look fairly authentic and
we may have to look deeper to determine their authenticity.


<a id="org6c8eabd"></a>

# Week 3

Key Concepts

-   Describe the CIA objectives of network security.
-   Use real examples to describe how DoS attacks and DDoS attacks
    work including those using botnets.
-   Describe the levels of security in wireless networks and common
    attack vectors.


<a id="orgb26be44"></a>

## The objectives of network security: confidentiality, integrity and accessibility

Network security has three main objectives:

-   **Confidentiality:** Read access control, i.e. who can **read** which
    piece of information
-   **Integrity:** Write access control, i.e. who can **write** which
    piece of information
-   **Availability:** Maintaining function, i.e. guaranteeing that the
    information will be available to those who can access it

It&rsquo;s composed of a set of policies and practices to protect the
network. One example of a policy may be:

*Every access to the network is unauthorized unless the user is
authenticated with username and password*

A practice related to the policy may be the fact that any user must
be given a username and password and an authentication server needs
to be maintained.


<a id="org7bcf8ee"></a>

## Paper about CIA

Reading about the conflicting aspects of confidentiality, integrity
and availability:

K. S. Wilson, [Conflicts Among the Pillars of Information Assurance](https://ieeexplore.ieee.org/document/6152082),
in IT Professional, vol. 15, no. 4, pp. 44-49, July-Aug. 2013, doi:
10.1109/MITP.2012.24.


<a id="orgdb50e05"></a>

## The attack surface and the denial of service attack

A *Denial of Service*, or *DoS*, attack is when we flood a server
with so many requests that it collapses under the load, therefore
**denying service** to the users.

This attack can happen in many of the [7 layers of OSI
model](https://en.wikipedia.org/wiki/OSI_model). As a quick summary, here are what each of 7 layers
represents:

1.  Physical Layer
    
    The hardware pieces. Cables, networking cards, etc. Responsible
    for the transmission of unstructured raw data. Converts digital
    bits into electrical, radio, or optical signals.

2.  Data Link Layer
    
    Provides node-to-node transfers. Can detect and maybe correct
    errors.

3.  Network Layer
    
    Provides the infrastructure for transmission of variable-length
    packets from one node to another connected in different
    networks.

4.  Transport Layer
    
    Provides the infrastructure for the transmission of
    variable-length data sequences from a source to a destination.

5.  Session Layer
    
    Controls the dialogues between computers. Establishes, manages
    and terminates connections between local and remote application.

6.  Presentation Layer
    
    Establishes context between application-layer entities.

7.  Application Layer
    
    The layer closest to the user. User and OSI interacts directly
    with the application.

With these in mind, we can look at some example attacks for some of
these layers.

ARP Flood Attack is a layer 2 attack where one would keep
broadcasting the network with ARP requests consuming a lot of the
available processing power of the target machine. ARP requests are
broadcast messages used to ask the network which MAC address
corresponds to an IP address.

ICMP Ping Flood Attack is a layer 3 attack relying on the *ping*
diagnostic message. Hosts are required to respond to ICMP Ping
requests. By sending a flood of ping requests, one can keep a
server busy processing such ping requests.

TCP-SYN Flood Attack is a layer 4 attack which tries to open
several TCP connections by sending a flood of TPC-SYN packets.


<a id="orgf5e9e65"></a>

## The anatomy of a DDOS, botnets and Mirai

A *Distributed Denial of Service* Attack, or *DDoS*, is similar to
a *DoS* attack however it&rsquo;s accomplished with many different
machines targetting a service, hence the &ldquo;distributed&rdquo; in the name.

A BotNet is slightly different. An attacker will take over the
control of several machines from regular users on the internet, and
make those machines target a single service with a flood attack of
some kind.

Many *Internet of Things*, or *IoT*, devices on the market have
poor security features, which makes them a target for BotNets and
carry out DDoS attacks on other servers.

One such case is the Mirai BotNet, which targets certain IoT
devices. The most prominent Mirai DDoS attack, took down the DNS
provider Dyn resulting in Netflix, Github, Twitter, Reddit and many
other major services being rendered inaccessible. After analysis,
Dyn claimed that there were up to 100,000 malicious endpoints
involved in the attack.


<a id="org827036d"></a>

## Mirai GitHub and Research Paper

-   Analysis of the Mirai botnet:
    
    H. Sinanović and S. Mrdovic, [Analysis of Mirai malicious
    software](https://ieeexplore.ieee.org/document/8115504), 2017 25th International Conference on Software,
    Telecommunications and Computer Networks (SoftCOM), Split, 2017,
    pp. 1-5, doi: 10.23919/SOFTCOM.2017.8115504.

-   Mirai Source Code
    
    <https://github.com/jgamblin/Mirai-Source-Code>

-   Recent Paper About the Threat of Botnets
    
    A. Woodiss-Field and M. N. Johnstone,
    [Assessing the
    Suitability of Traditional Botnet Detection against Contemporary
    Threats](https://ieeexplore.ieee.org/document/9097759), 2020 Workshop on Emerging Technologies for Security in
    IoT (ETSecIoT), Sydney, Australia, 2020, pp. 18-21, doi:
    10.1109/ETSecIoT50046.2020.00008.


<a id="orgb26a142"></a>

## Wireless attacks: WiFi attack vectors

The [Wi-Fi Alliance](https://www.wi-fi.org/) is a network of companies working on wifi
technology and standards. The idea being that device manufacturers
want their devices to interoperate, therefore a standard is created
which describes the method of communication in the wireless
network.

A timeline of the different standards are as follows:

-   802.11a: 1999
-   802.11b: 1999
-   802.11g: 2003
-   802.11n: 2009
-   802.11ac (wifi 5): 2012
-   802.11ax (wifi 6): 2020

Paired with the wireless standards, there a set of wireless
security protocols:

-   WEP (802.11a/b): 1997
-   WPA (802.11g): 2003
-   WPA2 (802.11i): 2004
-   WPA3: due in 2020

WEP is notorious for having weak encryption in several aspects,
which allowed attackers to exploit it and gain access to the
network.

There are different attacks that can be carried out on Wireless
networks. Some examples:

-   **Dictionary Attacks:** short keys allow brute force encryption
    breaking. In other words, if the key is small, it&rsquo;s feasible to
    try all options
-   **Fluhrer, Mantin and Shamir Attack:** famous encryption breaking
    hack for WEP
-   **Replay Attacks:** replay a sequence of packets, with edits. It
    may allow an attacker to get a valid session key
-   **PRGA / Packet Tampering Attack:** allows an attacker to
    masquerade as another device


<a id="orgc8212ba"></a>

## Wireless Networking Security

-   Classic paper reporting on WEP’s vulnerabilities
    
    Scott R. Fluhrer, Itsik Mantin, and Adi Shamir. 2001. [Weaknesses
    in the Key Scheduling Algorithm of RC4](https://dl.acm.org/doi/10.5555/646557.694759). In Revised Papers from
    the 8th Annual International Workshop on Selected Areas in
    Cryptography (SAC &rsquo;01). Springer-Verlag, Berlin, Heidelberg,
    1–24.

-   Article about attack vectors for different Wifi protocols such as
    WEP, WPA and LEAP
    
    Hal Berghel and Jacob Uecker. 2005. [WiFi attack
    vectors](https://dl.acm.org/doi/10.1145/1076211.1076229). Commun. ACM 48, 8 (August 2005),
    21–28. DOI: <https://doi.org/10.1145/1076211.1076229>

-   Very thorough review of security in different wireless
    technologies used in IoT devices
    
    K. Lounis and M. Zulkernine, [Attacks and Defenses in Short-Range
    Wireless Technologies for IoT](https://ieeexplore.ieee.org/abstract/document/9090905), in IEEE Access, vol. 8,
    pp. 88892-88932, 2020, DOI: 10.1109/ACCESS.2020.2993553.


<a id="orgc88691f"></a>

# Week 4

Key Concepts

-   Describe three types of firewall and reason about the appropriate
    type of firewall to use for a given situation.
-   Explain how intrusion detection systems work and give examples of
    historical and contemporary systems.


<a id="orge952bf6"></a>

## Firewalls – our first line of defence

-   **Stateless Firewalls:** A type of Access Control Lists (or
    ACL). It checks all traffic against a set of rules;
-   **stateful Firewalls:** More efficient than Stateless
    Firewalls. Once a packet session is allowed, no filters need to
    be applied
-   **Proxy Firewall:** Carries out external network access.


<a id="org5393b3f"></a>

## Intrusion detection systems (IDS)

An Intrusion Detection System, or IDS, is a system which runs on a
network and aims at detecting when a intruder has compromised the
network. The reason such systems are used is because it&rsquo;s virtually
impossible to make any network perfectly secure.

/&ldquo;Most security experts agree that a completely secure system is
impossible to achieve, so we must stay alert for
attacks.&rdquo;/. (Kemmerer and Vigna, 2002.)

The IDS is about staying alert for attacks and detecting them as
soon as possible.

When it comes to implementation of IDSs, Dorothy Denning state, in
1987, that &ldquo;the model is based on the hypothesis that exploitation
of a system&rsquo;s vulnerabilities involves abnormal use of the system;
therefore, security violations could be detected from abnormal
patterns of system usage&rdquo;. What this means is that an intruder is
likely to exhibit abnormal usage patterns on the network.

If one can detect such abnormal usage patterns, then we can detect
intruders.

While looking for intruders, we want to avoid false positives (a
regular user classified as an intruder) or false negatives (an
intruder classified as a regular user).

We also want our IDS to be fast and come to a conclusion using
minimal resources. All this while analyzing traffic over the entire
network. Modern systems using Docker containers can have a complex
network structure and our IDS still needs to be fast while
analyzing traffic of complex networking schemes.

Recent IDSs employ state-of-the-art Machine Learning and AI
algorithms for improved pattern recognition. Deep-learning is used
in many recent research papers in computer security related to IDS.

When developing state-of-the-art IDS using Deep Learning, we need a
dataset to train the neural network in order to verify correctness
of the system. A common dataset to use for this case is the [KDD99
Dataset](https://www.unb.ca/cic/datasets/nsl.html).


<a id="orge2809a8"></a>

## Intrusion Detection Systems

-   D. E. Denning, [An Intrusion-Detection Model](https://ieeexplore.ieee.org/document/1702202), in IEEE
    Transactions on Software Engineering, vol. SE-13, no. 2,
    pp. 222-232, Feb. 1987, doi: 10.1109/TSE.1987.232894.

-   R. A. Kemmerer and G. Vigna, [Intrusion detection: a brief history
    and overview](https://ieeexplore.ieee.org/document/1012428), in Computer, vol. 35, no. 4, pp. supl27-supl30,
    April 2002, doi: 10.1109/MC.2002.1012428.

-   S. Wang, C. Xia and T. Wang, [A Novel Intrusion Detector Based on
    Deep Learning Hybrid Methods](https://ieeexplore.ieee.org/document/8819467), 2019 IEEE 5th Intl Conference on
    Big Data Security on Cloud (BigDataSecurity), IEEE Intl
    Conference on High Performance and Smart Computing, (HPSC) and
    IEEE Intl Conference on Intelligent Data and Security (IDS),
    Washington, DC, USA, 2019, pp. 300-305, doi:
    10.1109/BigDataSecurity-HPSC-IDS.2019.00062.


<a id="orgd0ce628"></a>

# Week 5

Key Concepts

-   Describe the features of a typical operating system, with specific
    details about the Windows system.
-   Explain the core functionality of a file system and why it needs
    to be secure.
-   Identify security features and flaws of contemporary and
    historical versions of Windows operating systems.


<a id="org32b3a52"></a>

## Operating systems: windows and OS hardening

The [Operating System](https://en.wikipedia.org/wiki/Operating_system) (OS) is a piece of Software that manages
hardware resources and provides services to competing
programs.

A few important definitions:

-   **OS Security:** The processes and methods involved in guaranteeing
    the the integrity, confidentiality and availability of the OS

-   **OS Protection:** Refers to methods and procedures to protect the
    OS from intruders and attacks

OS security includes all precautionary control techniques to help
protect any computer resources that might be removed or modified if
the OS is compromised.

Some key components of an OS are:

-   **Kernal:** Executes services of the OS at the lowest level
-   **Security Kernal:** Manages all OS&rsquo;s security processes
-   **Reference Monitor:** Manages access to the device

The Security Kernal and Reference Monitor, together, for the
Trusted Computing Base or TCB, which has everything necessary to
enforce OS security policies.

In the Windows OS, the basic security blocks are:

-   **Security Reference Monitor:** executes access checks
-   **Local Security Authority:** executes windows local security
    policies
-   **Security Account Manager:** database that stores credentials
-   **Active Directory:** a directory service for Windows domain
    networks
-   **WinLogon and NetLogon:** WinLogon manages local input logins;
    NetLogon manages network-wide logins

Some of the most commonly found client-side vulnerabilities are
found in web browsers, office suites and the like. While any
software could be attacked, attacks are, in practice, concentrated
on the most popular software titles.

In order to overcome attacks, we must *harden* our systems before
deployments. Hardening refers to the process of making an operating
system more secure. For example, disabling automatic logins,
enabling screen lock during screen saver, switching system security
on, ensuring wireless connection is disabled if not needed, and so
on.


<a id="org6fe0d4f"></a>

## File system and directory structure

A file is a set of linked data stored in non-volatile media. Each
file has a logical location for storage and retrieval. In the
operating system the *File System* is the data structure used to
store, retrieve, and keep track of the files stored on the disk.

Some commonly used filesystems are:

-   Windows
    -   FAT32
    -   exFAT
    -   NTFS
-   macOS
    -   HFS+
    -   APFS
-   Linux
    -   ext3
    -   ext4
    -   btrfs
    -   ffs
-   Unix
    -   UFS
    -   ZFS

There are three main types of files available for use in the OS:

-   **Text File:** sequence of letters arranged in lines
-   **Object File:** collection of bits stored in blocks
-   **Source File:** refers to a variety of operations and activities
    in the operating system

The file system also maintains a set of metadata for each file,
including creation time, update time, the actual volume, etc. All
of this information is referred to as the file attributes.

Important attributes are:

-   **File type:** the type of the file
-   **Permissions:** who can read, write, and execute the file
-   **Timestamps:** time and date of creation and last update

A file system also has a directory structure.


<a id="org6f75f68"></a>

## Windows Security

-   [Brief History of Windows Security](https://web.archive.org/web/20201007124103/https://resources.infosecinstitute.com/category/certifications-training/securing-windows-ten/windows-ten-security/windows-os-security-brief-history/)

-   [Windows Consumer Security circa Oct 2020](https://web.archive.org/web/20201001021650/https://www.microsoft.com/en-us/windows/comprehensive-security):

-   [Windows Enterprise Security circa Oct 2020](https://web.archive.org/web/20200611221008/https://docs.microsoft.com/en-us/windows/security)


<a id="orga361e4b"></a>

# Week 6

Key Concepts

-   Use a security auditing tool to identify and solve security
    problems in a Linux operating system.
-   Describe the attack surface presented by a typical Android device.
-   Discuss the issues with containerised systems and explain why this
    is relevant in contemporary internet architectures.


<a id="org10f8f75"></a>

## Why is Linux important for security & hardening Linux with Harbian

Linux is, nowadays, used everywhere. It runs on baby monitors,
Azure Sphere devices, Smartphones (Android), the Financial Market,
many of the Top 500 supercomputers, and so on. Securing and
hardening Linux is a very important endeavor.

To that end, we look at Harbian &#x2013; A [Debian](https://www.debian.org/)-based distribution
focused at security &#x2013; and how it can help us hardening a Linux
system.


<a id="org69c0d26"></a>

## Harbian on Github

-   <https://github.com/hardenedlinux/harbian-audit>


<a id="org98591f5"></a>

## The Android attack surface

An average android smartphone has a very large attack surface.

-   **Wi-Fi:** connects to outside world (internet) and is a possible
    attack vector. A badly written Firmware or Driver for this could
    allow remote code execution and data leaks
-   **Bluetooth:** used mostly to connect with headsets, fitness
    devices, input devices, etc. One could design a malicious
    Bluetooth device, perhaps something claiming to be a headset to
    record private conversations
-   **Cellular:** 5G, 4G, or any other mobile network goes here. It
    relies on a large software stack running in a modem.
-   **Sensors:** Any of the sensors in a phone (camera, microphone,
    touchscreen, accelerometer, gyroscope, GPS, etc) have a software
    stack required to make them function. Any of these pieces may be
    susceptible to attacks
-   **Android Stack:** The Linux kernel with a bunch of middleware and
    vendor-specific extensions, any of which may be susceptible to
    attacks
-   **Apps:** Any of the apps installed on a phone may to prone to
    contain security flaws


<a id="org29323a1"></a>

## Smartphone security: an overview of emerging threats.

-   S. Grzonkowski, A. Mosquera, L. Aouad and D. Morss [Smartphone
    security: an overview of emerging threats](https://ieeexplore.ieee.org/document/6914660/), IEEE Consumer
    Electronics Magazine 3(4) Oct 2014, pp.40–44.

-   Wang, Y., W. Cai, T. Gu and W. Shao [Your eyes reveal your
    secrets: an eye movement based password inference on smartphone](https://ieeexplore.ieee.org/document/8798759),
    IEEE Transactions on Mobile Computing 19(11) 2020, pp.2714–2730.


<a id="org0b82632"></a>

## Virtualised and containerised operating systems

In a virtual machine we spin up and entire model of a computer and,
with it, an entire new operating system. Because of that, it ends
up having a slow startup time.

Containers, on the other hand, runs the same kernel as the host
OS. Because of that, it&rsquo;s smaller and starts up pretty fast.

There are four common attack routes to containers:

-   **Host to Container:** The Host OS could be compromised and used to
    attack its Guest containers
-   **Container to Host:** A security flaw may allow a container to
    leave its sandbox and access the Host&rsquo;s resources
    directly. Another possibility would be hundreds of containers
    running a DDoS attack against the Host
-   **Container to Container:** A malicious container may attack
    another container
-   **Application to Container:** A malicious application running on a
    container attacks it


<a id="org261aeb3"></a>

## Container Security

-   S. Sultan, I. Ahmad and T. Dimitriou, [Container Security: Issues,
    Challenges, and the Road Ahead](https://ieeexplore.ieee.org/document/8693491), in IEEE Access, vol. 7,
    pp. 52976-52996, 2019, doi: 10.1109/ACCESS.2019.2911732


<a id="org98095a7"></a>

# Week 7

Key Concepts

-   Familiarise yourself with the basic components that underpin
    cryptography.
-   Consider the application of cryptographic techniques in different
    settings.
-   Explore practical concerns around cryptographic techniques and
    their associated security implications.


<a id="org364ecad"></a>

## What is Cryptography?

Cryptography is all about encoding messages in a manner that can&rsquo;t
be understood if intercepted by an eavesdropper. To motivate the
discussion, let&rsquo;s introduce a scenario:

*Alice* wants to send messages to *Bob* in a secure manner. While
this is happening, *Eve* wants to eavesdrop the communication,
something like shown in figure [1](#orgf60eb86) below.

\begin{figure}[h]
\label{orgf60eb86}
  \centering
  \begin{tikzpicture}
    \node[alice]                             (alice) {Alice};
    \node[bob, right of=alice,
          mirrored]                          (bob)   {Bob};
    \node[devil, female, mirrored,
          above right of=alice]              (eve)   {Eve};

    \draw[->, thick] (alice) -- coordinate[near start] (aux) (bob);
    \draw[->,red, ultra thick] (eve)--(aux);
  \end{tikzpicture}
\end{figure}

The goal is, therefore, to allow *Alice* to send messages to *Bob*
in a way that even if *Eve* manages to intercept messages, they
won&rsquo;t be able to understand the contents of said messages.

We can think about this as if *Alice* puts the message inside a box
and locks it with a key. *Bob* will, then, proceed to unlock the
box upon its reception. For this to work, *Bob* must have a working
key, provided by *Alice*.

In a more real scenario, *Alice* takes her message (e.g. *The moon
is full*) and proceeds to *encrypt* the message. Encrypting the
message, modifies it in a way that it looks like random
gibberish. One cannot *decrypt* the message without access to a
*Decryption Key*. More technically, *Alice* converts *plaintext*
into *ciphertext*.

A new question arises: seeing that *Alice* converts *plaintext*
into *ciphertext* and sends the *ciphertext* to *Bob*, we can
conclude that *Bob* **must** be able to convert the *ciphertext*
back into *plaintext*, otherwise the message can&rsquo;t be read. We need
to come up with ways to agree on this method without telling *Eve*.


<a id="org9785b14"></a>

## History of Cryptography

Cryptography is all around us:

-   Military Applications
-   Web browsing
-   Email
-   Social Media
-   Online Transactions
-   Pay-per-view Television
-   Cloud Services (including storage)
-   etc

Brief history of cryptography:

-   First used around 1900 BC at the tomb of Khnumhotep II
-   Most early uses are Military
-   Julius Caesar credited for the technique standard for centuries
-   Al Kindi&rsquo;s book on cryptography involved the process of decoding
    cryptographic messages
    -   Technique used: frequency analysis
-   In the 16<sup>th</sup> century, Vigenère created a [cipher](https://en.wikipedia.org/wiki/Vigen%C3%A8re_cipher) which used and
    encryption key (the first of its kind)
-   Modern Times: Public Key Cryptography
    -   **RSA:** Most of the internet
    -   **Elliptic Curves:** bitcoin et al

The goal of cryptography are:

-   **Confidentiality:** noone can read the message except authorized
    receiver
-   **Integrity:** assurance that message hasn&rsquo;t been altered,
    modified, or damaged accidentally by an attacker
-   **Authentication:** assurance that messages comes from expected
    source
-   **Non-repudiation:** sender cannot deny a comment or action


<a id="org2e015fa"></a>

## Symmetric cryptography

Using our Alice and Bob scenario again, reproduced in figure
[2](#orgd5588f0) below:

\begin{figure}[h]
\label{orgd5588f0}
  \centering
  \begin{tikzpicture}
    \node[alice]                            (alice) {Alice};
    \node[bob, right of=alice, mirrored]    (bob)   {Bob};

    \node[draw, ellipse callout,
          yshift=1cm, xshift=1.8cm,
          callout absolute pointer={(alice.mouth)}] { Lipps };

    \draw[->, thick] (alice) -- (bob);
  \end{tikzpicture}
\end{figure}

In a Symmetric Cryptography scenario, the key used to lock and
unlock the box with a message is the same exact key. All encryption
worked like this for millennia.

A famous example is the Caesar Cipher, where, given a message, we
take all letter and slide down the alphabet by 4 (wrapping around
to the beginning when necessary):

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">**Plaintext**</th>
<th scope="col" class="org-left">**Ciphertext**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">E</td>
</tr>


<tr>
<td class="org-left">B</td>
<td class="org-left">F</td>
</tr>


<tr>
<td class="org-left">C</td>
<td class="org-left">G</td>
</tr>


<tr>
<td class="org-left">&#x2026;</td>
<td class="org-left">&#x2026;</td>
</tr>


<tr>
<td class="org-left">V</td>
<td class="org-left">Z</td>
</tr>


<tr>
<td class="org-left">W</td>
<td class="org-left">A</td>
</tr>


<tr>
<td class="org-left">X</td>
<td class="org-left">B</td>
</tr>


<tr>
<td class="org-left">Y</td>
<td class="org-left">C</td>
</tr>


<tr>
<td class="org-left">Z</td>
<td class="org-left">D</td>
</tr>
</tbody>
</table>

For example, if Alice wants to send the message *Hello*, she would
convert each letter using the table above, therefore the ciphertext
would be: *Lipps*.

This is called a *Substitution Cipher* because we **substitute** each
letter by another letter using a rule. Unfortunately, this is very
easy to break, as there are only 26 letters in the alphabet,
therefore each letter can only move by at most 25 places. We can
easily test all possibilities.

In case we have a large body of ciphertext, we can rely on the
frequency of letters. In the English language, **a**, **s**, and **e**
are very frequently used letters, therefore we can look at the most
frequent letter in the ciphertext and assume it to be **a**, or **s**,
or **e**, calculate the offset from **a**, or **s**, or **e** to that
letter in the ciphertext and try that as a key.


<a id="orgbb525b9"></a>

## Asymmetric cryptography

In Asymmetric Cryptography, the keys used for locking and unlocking
(or encrypting and decrypting) are different. Not only that, but it
**must** be very difficult to determine one of the keys from the
other in at least one direction.

The main idea is that each player has two keys:

-   **Private Key:** nobody, except for the owner, knows about
    it. Let&rsquo;s denote it **G**
-   **Public Key:** everybody has access it. Let&rsquo;s denote **P**

These keys undo each other:

1.  text  -> F(text)  -> G(F(text))  -> text
2.  text2 -> G(text2) -> F(G(text2)) -> text2

The public key has to be easy to compute, however, those with
access to the public key, should be able to compute its inverse
(the private key).

When Alice wants to send a message to Bob, she should encrypt the
message with Bob&rsquo;s public key. In thise situation only Bob&rsquo;s
private key is able to decrypt the message.

When Alice wants to **sign** a message, she uses her private key
since she&rsquo;s the only one with access to that key.


<a id="org8de7ba8"></a>

## Some basic cyptographic techniques

-   Buchanan, W.J. [Cryptography](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193). (Denmark: River Publishers, 2017)
    pp.1–11.


<a id="orgb444eb8"></a>

# Week 8

Key Concepts

-   Explore practical concerns around cryptographic techniques and
    their associated security implications.
-   Consider the application of cryptographic techniques in different
    settings.
-   Familiarise yourself with the basic components that underpin
    cryptography.


<a id="org17d2477"></a>

## Cryptography techniques transposition methods

Substitution ciphers, will substitute a symbol for another symbol,
while Transposition ciphers will permute the symbols.

For example, the following is an example of a Transposition cipher:

    Plaintext:	meetmeatthecorner
    Ciphertext:	renrocehttaemteem

Writing letters in reverse order is far too simple. A slightly
better approach is to use a *Transposition Grid*. When employing a
Transposition Grid, our message comes acompanied by a number which
denotes the number of columns in the grid.

Assuming we&rsquo;re sending the message **THEEAGLELANDSTONIGHT** and the
number 4, we will get the following grid:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">T</th>
<th scope="col" class="org-left">H</th>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">E</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">G</td>
<td class="org-left">L</td>
<td class="org-left">E</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">L</td>
<td class="org-left">A</td>
<td class="org-left">N</td>
<td class="org-left">D</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">S</td>
<td class="org-left">T</td>
<td class="org-left">O</td>
<td class="org-left">N</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">I</td>
<td class="org-left">G</td>
<td class="org-left">H</td>
<td class="org-left">T</td>
</tr>
</tbody>
</table>

The ciphertext is a read of the columns, therefore, the ciphertext
is **TALSIHGATGELNOHEEDNT**. If we wanted to send the same message,
but the number of columns was 3, instead of 4, we would get the
following grid:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">T</th>
<th scope="col" class="org-left">H</th>
<th scope="col" class="org-left">E</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">E</td>
<td class="org-left">A</td>
<td class="org-left">G</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">L</td>
<td class="org-left">E</td>
<td class="org-left">L</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">N</td>
<td class="org-left">D</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">S</td>
<td class="org-left">T</td>
<td class="org-left">O</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">N</td>
<td class="org-left">I</td>
<td class="org-left">G</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">H</td>
<td class="org-left">T</td>
<td class="org-left">X</td>
</tr>
</tbody>
</table>

Which results in the ciphertext **TELASNHHAENTITEGLDOGX**. Another
variation of the same technique is that instead of transmitting the
number of columns, we use a keyword. Let&rsquo;s say the keword is
**BASE**. The length of the keywords tells us the number of columns
in the grid, so we get the same grid as before:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">**B**</th>
<th scope="col" class="org-left">**A**</th>
<th scope="col" class="org-left">**S**</th>
<th scope="col" class="org-left">**E**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">T</td>
<td class="org-left">H</td>
<td class="org-left">E</td>
<td class="org-left">E</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">G</td>
<td class="org-left">L</td>
<td class="org-left">E</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">L</td>
<td class="org-left">A</td>
<td class="org-left">N</td>
<td class="org-left">D</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">S</td>
<td class="org-left">T</td>
<td class="org-left">O</td>
<td class="org-left">N</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">I</td>
<td class="org-left">G</td>
<td class="org-left">H</td>
<td class="org-left">T</td>
</tr>
</tbody>
</table>

After doing that, we sort the columns by alphabetising the keyword,
which gives us the following grid:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">**A**</th>
<th scope="col" class="org-left">**B**</th>
<th scope="col" class="org-left">**E**</th>
<th scope="col" class="org-left">**S**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">H</td>
<td class="org-left">T</td>
<td class="org-left">E</td>
<td class="org-left">E</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">G</td>
<td class="org-left">A</td>
<td class="org-left">E</td>
<td class="org-left">L</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">L</td>
<td class="org-left">D</td>
<td class="org-left">N</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">T</td>
<td class="org-left">S</td>
<td class="org-left">N</td>
<td class="org-left">O</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">G</td>
<td class="org-left">I</td>
<td class="org-left">T</td>
<td class="org-left">H</td>
</tr>
</tbody>
</table>

The ciphertext is, again, the read of the columns which results in
**HGATGTALSIEEDNTELNOH**. One advantage of this method over the
previous is that we also move the location of the first and last
characters.


<a id="org72558f7"></a>

## The basics of transposition cipher

-   <https://en.wikipedia.org/wiki/Transposition_cipher>


<a id="org03e9a09"></a>

## Cryptographic techniques substitution 1: Playfair

The [Playfair Cipher](https://en.wikipedia.org/wiki/Playfair_cipher) is named after Lord Playfair for promoting its
use. The cipher itself is grid-based and has four simple rules to
be memorized. Because there are 26 letters in the alphabet, making
a grid would be awkward as the only possibility would be \(13 \times
   2\) grid (no, we&rsquo;re not considering \(26 \times 1\)). To circumvent
this, we treat I and J as the same letter which gives us a \(5
   \times 5\) grid. Now we fill a grid with a keyword.

To give an example of how this works, let&rsquo;s assume our message is
**THISISMYMESSAGE** and the keyword is **MONARCHY**. To make the grid
we will:

1.  Put in the keyword in the grid, one letter at a time
2.  Put the rest of the alphabet in alphabetic order

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">**M**</th>
<th scope="col" class="org-left">**O**</th>
<th scope="col" class="org-left">**N**</th>
<th scope="col" class="org-left">**A**</th>
<th scope="col" class="org-left">**R**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">**C**</td>
<td class="org-left">**H**</td>
<td class="org-left">**Y**</td>
<td class="org-left">B</td>
<td class="org-left">D</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">E</td>
<td class="org-left">F</td>
<td class="org-left">G</td>
<td class="org-left">I</td>
<td class="org-left">K</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">L</td>
<td class="org-left">P</td>
<td class="org-left">Q</td>
<td class="org-left">S</td>
<td class="org-left">T</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">U</td>
<td class="org-left">V</td>
<td class="org-left">W</td>
<td class="org-left">X</td>
<td class="org-left">Z</td>
</tr>
</tbody>
</table>

Given this grid, the rules for encryption are:

1.  Break up the plaintext into pairs
    
    **TH** **IS** **IS** **MY** **ME** **SS** **AG** **E**

2.  If the letters in a pair is the same, put an **X** between them:
    
    **TH** **IS** **IS** **MY** **ME** **SX** **SA** **GE**

3.  If you end up with and odd number of letters, put an **X** in the
    end.
    
    **TH** **IS** **IS** **MY** **ME** **SX** **SA** **GE**

4.  For each pair, look at where the letters in the pair are
    1.  If they are in the different rows and columns, look at the
        rectangle formed by the letters, replace with the letters in
        the other corner (e.g. TH -> PD)
        
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">M</th>
        <th scope="col" class="org-left">O</th>
        <th scope="col" class="org-left">N</th>
        <th scope="col" class="org-left">A</th>
        <th scope="col" class="org-left">R</th>
        </tr>
        </thead>
        
        <tbody>
        <tr>
        <td class="org-left">C</td>
        <td class="org-left">**H**</td>
        <td class="org-left">**Y**</td>
        <td class="org-left">**B**</td>
        <td class="org-left">**D**</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">E</td>
        <td class="org-left">**F**</td>
        <td class="org-left">**G**</td>
        <td class="org-left">**I**</td>
        <td class="org-left">**K**</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">L</td>
        <td class="org-left">**P**</td>
        <td class="org-left">**Q**</td>
        <td class="org-left">**S**</td>
        <td class="org-left">**T**</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">U</td>
        <td class="org-left">V</td>
        <td class="org-left">W</td>
        <td class="org-left">X</td>
        <td class="org-left">Z</td>
        </tr>
        </tbody>
        </table>
    
    2.  If the letters are in the same column, replace each with the
        letter below it (e.g. IS -> SX)
        
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">M</th>
        <th scope="col" class="org-left">O</th>
        <th scope="col" class="org-left">N</th>
        <th scope="col" class="org-left">A</th>
        <th scope="col" class="org-left">R</th>
        </tr>
        </thead>
        
        <tbody>
        <tr>
        <td class="org-left">C</td>
        <td class="org-left">H</td>
        <td class="org-left">Y</td>
        <td class="org-left">B</td>
        <td class="org-left">D</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">E</td>
        <td class="org-left">F</td>
        <td class="org-left">G</td>
        <td class="org-left">**I**</td>
        <td class="org-left">K</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">L</td>
        <td class="org-left">P</td>
        <td class="org-left">Q</td>
        <td class="org-left">**S**</td>
        <td class="org-left">T</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">U</td>
        <td class="org-left">V</td>
        <td class="org-left">W</td>
        <td class="org-left">X</td>
        <td class="org-left">Z</td>
        </tr>
        </tbody>
        </table>
    
    3.  If the letters are in the same row, please each letter with
        the letter to its right (e.g. GE -> IF)
        
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        
        <colgroup>
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">M</th>
        <th scope="col" class="org-left">O</th>
        <th scope="col" class="org-left">N</th>
        <th scope="col" class="org-left">A</th>
        <th scope="col" class="org-left">R</th>
        </tr>
        </thead>
        
        <tbody>
        <tr>
        <td class="org-left">C</td>
        <td class="org-left">H</td>
        <td class="org-left">Y</td>
        <td class="org-left">B</td>
        <td class="org-left">D</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">**E**</td>
        <td class="org-left">**F**</td>
        <td class="org-left">**G**</td>
        <td class="org-left">I</td>
        <td class="org-left">K</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">L</td>
        <td class="org-left">P</td>
        <td class="org-left">Q</td>
        <td class="org-left">S</td>
        <td class="org-left">T</td>
        </tr>
        </tbody>
        
        <tbody>
        <tr>
        <td class="org-left">U</td>
        <td class="org-left">V</td>
        <td class="org-left">W</td>
        <td class="org-left">X</td>
        <td class="org-left">Z</td>
        </tr>
        </tbody>
        </table>

After all these conversions, our result is the ciphertext
**PDSXSXNCCLXAXBJF**.


<a id="org940d80c"></a>

## Playfair

-   [Buchanan](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), pp.11–16


<a id="orgaddd961"></a>

## Cryptographic techniques substitution 2: Vigenere

The [Vigenère cipher](https://en.wikipedia.org/wiki/Vigen%C3%A8re_cipher) is a form os polyalphabetic substitution. It&rsquo;s
essentially a generalization of the Caeser Cipher which makes it
more difficult to break. The amount of shifting a letters gets, is
determined by a keyword.

For example, let&rsquo;s say we&rsquo;re using the keyword **EASY** and our
plaintext is **MEETMEATNINE**. Each letter of the alphabet gets
mapped to a number that dictates how far to move a character in the
plaintext. Basically, A maps to 0, B maps to 1, C to 2, and so on.

For our keyword **EASY** we have E=4, A=0, S=18, Y=24.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">M</th>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">T</th>
<th scope="col" class="org-left">M</th>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">A</th>
<th scope="col" class="org-left">T</th>
<th scope="col" class="org-left">N</th>
<th scope="col" class="org-left">I</th>
<th scope="col" class="org-left">N</th>
<th scope="col" class="org-left">E</th>
</tr>


<tr>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">A</th>
<th scope="col" class="org-left">S</th>
<th scope="col" class="org-left">Y</th>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">A</th>
<th scope="col" class="org-left">S</th>
<th scope="col" class="org-left">Y</th>
<th scope="col" class="org-left">E</th>
<th scope="col" class="org-left">A</th>
<th scope="col" class="org-left">S</th>
<th scope="col" class="org-left">Y</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Q</td>
<td class="org-left">E</td>
<td class="org-left">W</td>
<td class="org-left">R</td>
<td class="org-left">Q</td>
<td class="org-left">E</td>
<td class="org-left">S</td>
<td class="org-left">R</td>
<td class="org-left">R</td>
<td class="org-left">I</td>
<td class="org-left">F</td>
<td class="org-left">C</td>
</tr>
</tbody>
</table>


<a id="org823bb85"></a>

## Vigenère

-   [Buchanan](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), pp.17-19


<a id="org4920621"></a>

## Frequency analysis

-   [Buchanan](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), pp.44-48


<a id="org2c6e10f"></a>

# Week 9

Key Concepts

-   Consider RSA for practical settings.
-   Identify the strengths and weaknesses of RSA in applied
    cryptography.
-   Practise basic implementations of the RSA algorithm to encrypt and
    decrypt messages.


<a id="org43bb8b1"></a>

## Intro to RSA: Public key cryptography

RSA is one of the most important cryptographic algorithms
around. It underpins most of today&rsquo;s secure communications.

It&rsquo;s an implementation of asymmetric cryptography, or public key
encryption system. The basis of the system is that if the private
key is used to encrypt, only the public key can decrypt and *vice
versa*.

To send a message, Alice encrypts it with Bob&rsquo;s public key. In
this scenario, only Bob can decrypt it with his private key. The
process is shown in figure [3](#orga01d321) below.

\begin{figure}[h]
\label{orga01d321}
  \centering
  \begin{tikzpicture}
    \tikzset{node distance=2cm}
    \node[alice, label=above:{Alice}] (alice) {};
    \node[below of=alice]     (plain) {Alice's message};
    \node[below of=plain]     (pubk)  {Bob's public key};
    \node[below of=pubk]      (cipher){Alice's encrypted message};
    \node[below of=cipher]    (seck)  {Bob's private key};
    \node[bob, below of=seck] (bob)   {Bob};

    \draw[->, thick] (alice) -- (plain) -- (pubk) --
                     (cipher) -- (seck) -- (bob);
  \end{tikzpicture}
\end{figure}

In practice, the public key is a function that&rsquo;s easy to compute,
while the private key is hard to compute. This is referred to as a
*One-way function*.

One example of such function is Prime Factorization. Given two
primes, multiplying them is easy. Given a number, factorizing into
two primes is hard. More specifically, RSA works with two **large**
primes.


<a id="org9f5b70e"></a>

## Primes and Euler&rsquo;s Phi Function

A prime number is a number with exactly two factors: 1 and
itself. 1 is not a prime number as it has a single factor.

Euclid stated that *every whole number is made up as a product of
prime number in exactly one way*. For example \(150 = 2 \cdot 3
   \cdot 5^2\).

Two numbers `n` and `m` are said to be co-prime if the following
holds:

-   Their Greatest Common Divisor is 1
-   Their only common factor is 1
-   Their prime factorizations have no numbers in common

[Euler&rsquo;s \(\Phi\) Function](https://en.wikipedia.org/wiki/Euler's_totient_function) (or Totient Function) of a number `n` is
given by \(\Phi(n)\) and is defined as the amount of numbers co-prime
with `n` that are also less than `n`. In other words, it&rsquo;s the
number of integers \(k\) within the range \(1 \leq k \leq n\) for which
the greatest common divisor \(gdc(n, k)\) is equal to 1.

For every prime \(p\), we have that \(\Phi(p) = p - 1\).

The \(\Phi\) function is also a multiplicative function, which means
that \(\Phi(p \cdot q) = \Phi(p) \cdot \Phi(q)\). Moreover, if \(p\)
and \(q\) are both prime numbers, then \(\Phi(p \cdot q) = (p - 1)
   \cdot (q - 1)\).


<a id="org84afa11"></a>

## Further reading

-   Buchanan, W. J. [Cryptography](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), River Publishers, 2017, pp.143-152.


<a id="orgd9522c0"></a>

## Modular arithmetic

\(13 \mod{6} = 1\) is the same as saying that the remainder of
\(\frac{13}{6}\) is 1. Also \((ab) \mod{c} = a\mod{c} \cdot b\mod{c}\)


<a id="org0df8515"></a>

## RSA example in practice

Given a message \(M\), Alice encrypts it using Bob&rsquo;s public key,
which is a pair \((e, N)\). The encryption process is given by \(E =
   M^e \mod{N}\). Therefore, Alice sends the ciphertext \(E\) to Bob.

Bob, consequently, decrypts the ciphertext using the process \(D =
   E^d \mod{N} = (M^{e})^{d} \mod{N} = M^{de} \mod{N}\). 


<a id="org6d1566d"></a>

## Security of RSA

Alice is sending messages to Bob in a way that only Bob can read
it. The way to achieve this is by using Bob&rsquo;s public key.

Bob, takes two large primes, \(p\) and \(q\), and multiplies them,
resulting \(N = pq\). Then Bob chooses another number \(e\) to be
coprime with \(\Phi(N)\). The pair \((N,e)\) is our public key.

Alice uses the pair \((N,e)\) to encode message \(M\) to Bob using \(E =
   M^e \mod(N)\) and sends the encoded message \(E\) to Bob. Bob uses
private key, a number \(d\) such that \(d \equiv e \mod{\Phi(N)}\).

Given number \(d\), Bob decrypts the message with \(D = E^d \mod{N}\)
and that gives back \(M\).

The reason this is safe, is that \(\Phi(N)\) is very hard to compute.


<a id="org125eb1b"></a>

## Further RSA revision and practice

-   <https://brilliant.org/wiki/rsa-encryption/>
-   <https://www.geometer.org/mathcircles/RSA.pdf>


<a id="org8770003"></a>

# Week 10

Key Concepts

-   Consider RSA for practical settings.
-   Identify the strengths and weaknesses of RSA in applied
    cryptography.
-   Practise basic implementations of the RSA algorithm to encrypt and
    decrypt messages.


<a id="org2ae9949"></a>

## 5.6 Beginning the proof, first steps and an introduction to Fermat

Given a message \(M\), Alice encrypts it using Bob&rsquo;s public key,
which is a pair \((e, N)\). The encryption process is given by \(E =
   M^e \mod{N}\). Therefore, Alice sends the ciphertext \(E\) to Bob.

Bob, consequently, decrypts the ciphertext using the process \(D =
   E^d \mod{N} = (M^{e})^{d} \mod{N} = M^{de} \mod{N}\). We want to
show that \(D = M\).

We know that \(e\) is co-prime with \(\Phi(N)\) and \(de \equiv 1
   \mod{\Phi(N)}\).


<a id="orgab90b15"></a>

## 5.7 Fermat&rsquo;s little theorem, playing with proofs example

[Fermat&rsquo;s Little Theorem](https://en.wikipedia.org/wiki/Fermat%27s_little_theorem) states that given two numbers, \(a\) and \(p\),
where \(p\) is prime, \(p \mid a^p - a\). Another way to state this is
that \(a^p - a \equiv 0 \mod{p}\). Note that by adding \(a\) to both
sides, we get \(a^p \equiv a \mod{p}\). Yet another to state this is
by dividing both sides by \(a\), which gives us \(a^{p-1} \equiv 1
   \mod{p}\). For this last version, \(a\) and \(p\) must be co-primes.

<span class="underline">Lemma</span>: Let \(a\) be a number coprime with \(p\) which is prime. The
numbers \(a \mod{p}, 2a \mod{p}, \ldots, (p - 1)\mod{p}\) are all
different.

Suppose \(am = an \mod{p}\), dividing both sides by \(a\), gives \(m = n
   \mod{p}\). If \(m,n < p\), then \(m = n\).

We can use this result to proof Fermat&rsquo;s Little Theorem.

Considering the numbers \(1 \cdot 2 \cdot \ldots \cdot (p - 1) =
   (p - 1)!\), multiplying by \(a\) we get \(a \cdot 2a \cdot \ldots \cdot
   (p-1)a\), which is the same as \(a^{p-1}(1\cdot 2 \cdot \ldots \cdot
   (p-1)) = a^{p-1}(p-1)!\). We have, then:

\begin{align*}
  a^{p-1} (p-1)! &= (p-1)! \mod{p} \\
  a^{p-1} &= 1 \mod{p} \\
\end{align*}


<a id="orgf7e9c93"></a>

## 5.8 Finalising our proof

Given the result from Fermat&rsquo;s Little Theorem, we still need to
show that \(M = M^{de} \mod{N}\).

<div class="lemma">
If \(p\) and \(q\) are prime, then if:

1.  \(a = b \mod{p}\), and
2.  \(a = b \mod{q}\), then
3.  \(a = b \mod{pq}\)

</div>

<div class="proof">
(1) implies that \(p\) is a divisor of \(a - b\). (2) implies that \(q\)
is a divisor of \(a - b\). In other words, when we consider the prime
factorization of \(a - b\), \(p\) is one such factor and \(q\) is another
factor.

Since both \(p\) and \(q\) are divisors of \(a - b\), then so is \(pq\),
and hence \(a - b = 0 \mod{pq}\) and therefore \(a = b \mod{pq}\).

</div>

<div class="theorem">
Given a message \(M\), an encryption key \(e\) and a decryption key
\(d\), \(M^{de} \mod{N} = M\).

</div>

<div class="proof">
By the lemma, it suffices to show the following two things:

i. \(M = M^{de} \mod{p}\)
ii. \(M = M^{de} \mod{q}\)

We know that \(d\) and \(e\) are chosen so that \(de = 1 \mod{\Phi(N)}\),
therefore \(de = K \mod{\Phi(N)} + 1\) for some \(K\). We also know
that \(\Phi(N) = (p - 1)(q - 1)\). Putting the last two together,
gives us:

\begin{align*}
de &= K (p - 1)(q - 1) + 1 \\     
M^{de} \mod{p} &= M^{K(p-1)(q-1) + 1} \mod{p} \\
&= M \cdot M^{K(p-1)(q-1)} \mod{p} \\
&= M \cdot (M^{K(q-1)})^{p-1} \mod{p} \\
\end{align*}

There are two possible cases here. If \(M\) and \(p\) are coprime, then:

\begin{align*}
M^{de} &= M \cdot (M^{K(q-1)})^{p-1} \mod{p} \\
&= M \cdot 1 \mod{p} && \text{By Fermat's Little Theorem}\\
&= M \mod{p} \\
\end{align*}

If \(M\) and \(p\) are not coprime, then \(p\) divides \(M\) and \(M \mod{p}
   = 0\):

\begin{align*}
M^{de} &= M \cdot (M^{K(q-1)})^{p-1} \mod{p} \\
&= 0 \\
\end{align*}

The same process is applied for \((q - 1)\).

</div>


<a id="org35d0f63"></a>

## Guidelines on cryptography

-   Chief Security Office &rsquo;[Security standard - use of cryptography
    (SS-007)](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/882760/dwp-ss007-security-standard-use-of-cryptography-v1.1.pdf)&rsquo;, Department for Work & Pensions (March 2020).

