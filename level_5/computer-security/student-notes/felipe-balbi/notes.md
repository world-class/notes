
# Table of Contents

1.  [Week 1](#orgfa9508a)
    1.  [Reading: Ethics in information security](#org12f582e)
    2.  [Defining computer security](#orgf3e6e42)
    3.  [Types of malicious software 1](#org34a5a74)
        1.  [Viruses](#org6fd2cab)
        2.  [Worms](#org61bf925)
        3.  [Adware](#org0b3c76a)
        4.  [Trojans](#orgc3ff095)
        5.  [Spyware](#orgf319a1a)
    4.  [Types of malicious software 2](#orgdba2719)
2.  [Week 2](#org4bd1dae)
    1.  [Malware analysis and techniques](#org6ac1bc6)
    2.  [Malware analysis 2](#org04ad2c0)
    3.  [Ethics](#org83a794d)
    4.  [Passwords](#org022a154)
    5.  [Social Engineering](#orga6c3010)
3.  [Week 3](#org7796abf)
    1.  [The objectives of network security: confidentiality, integrity and accessibility](#orgcb4423e)
    2.  [Paper about CIA](#org4fb3f7c)
    3.  [The attack surface and the denial of service attack](#org7c834b2)
    4.  [The anatomy of a DDOS, botnets and Mirai](#org08611cc)
    5.  [Mirai GitHub and Research Paper](#orgf85787e)
    6.  [Wireless attacks: WiFi attack vectors](#org90097f6)
    7.  [Wireless Networking Security](#orgb8668ac)
4.  [Week 4](#orgec33fc9)
    1.  [Firewalls – our first line of defence](#orgdaf7249)
    2.  [Intrusion detection systems (IDS)](#org5fc7f0e)
    3.  [Intrusion Detection Systems](#orgc7a6b38)
5.  [Week 5](#orgab604ac)
    1.  [Operating systems: windows and OS hardening](#orga4d05fd)
    2.  [File system and directory structure](#org9ac3243)
    3.  [Windows Security](#org80f8df1)
6.  [Week 6](#org3158840)
    1.  [Why is Linux important for security & hardening Linux with Harbian](#org34800d3)
    2.  [Harbian on Github](#orgf3a3e22)
    3.  [The Android attack surface](#org945864e)
    4.  [Smartphone security: an overview of emerging threats.](#org0d9a8c8)
    5.  [Virtualised and containerised operating systems](#org8e7811f)
    6.  [Container Security](#orgb09dcd0)
7.  [Week 7](#orgbb0857e)
    1.  [What is Cryptography?](#orgc55e9b9)
    2.  [History of Cryptography](#org465a492)
    3.  [Symmetric cryptography](#org4041554)
    4.  [Asymmetric cryptography](#orgf8d73f8)
    5.  [Some basic cyptographic techniques](#orgaad8c50)
8.  [Week 8](#orgcf16536)
    1.  [Cryptography techniques transposition methods](#org77609c3)
    2.  [The basics of transposition cipher](#orgf81ba75)
    3.  [Cryptographic techniques substitution 1: Playfair](#org4ab9b7b)
    4.  [Playfair](#org1880453)
    5.  [Cryptographic techniques substitution 2: Vigenere](#org88926e3)
    6.  [Vigenère](#orgf69ea75)
    7.  [Frequency analysis](#org4413ed9)
9.  [Week 9](#org5455d3d)
    1.  [Intro to RSA: Public key cryptography](#org2a36357)
    2.  [Primes and Euler&rsquo;s Phi Function](#org8200b60)
    3.  [Further reading](#org4a1a9b7)
    4.  [Modular arithmetic](#org6d31622)
    5.  [RSA example in practice](#org8dcc19e)
    6.  [Security of RSA](#org16a8450)
    7.  [Further RSA revision and practice](#orgb88272e)
10. [Week 10](#org06d6133)
    1.  [5.6 Beginning the proof, first steps and an introduction to Fermat](#orga8d8a95)
    2.  [5.7 Fermat&rsquo;s little theorem, playing with proofs example](#orga7d8948)
    3.  [5.8 Finalising our proof](#orgb7b69af)
    4.  [Guidelines on cryptography](#orgcf90031)
11. [Week 11](#org6b45fc0)
    1.  [Parity checking](#orga11f38c)
    2.  [Hash functions](#org0b2448a)
    3.  [Hashing](#orgc814519)
12. [Week 12](#org02a7f7c)
    1.  [Cryptographic hash functions](#orgafb3fa8)
    2.  [Introduction to Bitcoin](#org0dd441c)
13. [Week 13](#org7c3847c)
    1.  [The origins of Bitcoin](#orgdf3fd0b)
    2.  [Network and transactions](#orgacfcae1)
    3.  [The identity problem](#orgcb1435e)
    4.  [The solvency problem](#org1d72b85)
    5.  [Reading Activity](#org3f64c25)
14. [Week 14](#org724ab59)
    1.  [Double spending](#orgf61f20f)
    2.  [Immutability of the blockchain](#orga4f11f8)
15. [Week 15](#orgb9dd383)
    1.  [Data on the blockchain](#org9249290)
    2.  [Programs on the blockchain](#org44097bc)
    3.  [Introduction to ethereum](#orgc05e8db)
16. [Week 16](#org43e93fc)
    1.  [Data on the blockchain case study](#org9608014)
17. [Week 17](#org72c2316)
    1.  [Trusted system and trusted system elements](#org84bff1b)
    2.  [Security policies & Military security policy](#org9533b21)
    3.  [Clark-Wilson security policy](#orgc93c383)
    4.  [Chinese Wall security policy](#orgbf4bd35)
    5.  [Essential Reading](#org5621cff)
18. [Week 18](#orgd30559a)
    1.  [Security models & BellLa Padula model](#org0d844e6)
    2.  [Biba model](#org0485d33)
    3.  [Graham-Denning model](#orgdd4b185)
    4.  [Essential Reading](#org4c5ed9e)
19. [Week 19](#org7218b63)
    1.  [The cryptography dilemma](#org62aad2e)
    2.  [Leaked data](#org6bffebc)
    3.  [Compliance and non compliance](#org5536135)
    4.  [Software backdoors](#orgd589b41)
    5.  [Sabotage](#org43500cf)
20. [Week 20](#org518b31d)
    1.  [Intellectual property](#org27f9dd1)
    2.  [The cost of DRM](#org81a0e1b)
    3.  [Cross site scripting - the company house example](#org9b11c7e)
    4.  [The Snowden revelation](#org965827e)



<a id="orgfa9508a"></a>

# Week 1

Key Concepts

-   Understand the central goals and aspects of computer security.
-   Understand and explain the differences between a range of malware
    types.
-   Identify key examples of malware and their historical
    significance.


<a id="org12f582e"></a>

## Reading: Ethics in information security

Read the following article:

[Ethics in information security](https://www.computer.org/csdl/magazine/sp/2017/03/msp2017030003/13rRUILc8dI), IEEE Security & Privacy, vol.15
May/June 2017, pp.3–4.

You should also familiarise yourselves with the [ACM ethics
guidelines](https://ethics.acm.org/).


<a id="orgf3e6e42"></a>

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


<a id="org34a5a74"></a>

## Types of malicious software 1

Malware is a piece of softwarte designed to disrupt, damange and
destroy an information system. There are many types of malwares,
some of which are discussed in the following subsections


<a id="org6fd2cab"></a>

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


<a id="org61bf925"></a>

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


<a id="org0b3c76a"></a>

### Adware

These display advertisements on your screen during browsing or
online shopping. Possibly the most visible form of malware one can
encounter. Its main purpose is to collect user data.


<a id="orgc3ff095"></a>

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


<a id="orgf319a1a"></a>

### Spyware

Designed to spy on the target machine or the user, it collects
information and sends it back to the hacker for further use or for
sale on the dark web.

The *Dark Hotel* spyware is one famous case which used Hotel Wi-Fi
to target the personal systems of government officials, business
tycoons and political leaders to extract sensitive information.


<a id="orgdba2719"></a>

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


<a id="org4bd1dae"></a>

# Week 2

Key Concepts

-   Explain the key differences between static and dynamic analysis.
-   Explain the usage of sandboxes in malware analysis.
-   Understand the need for a variety of methods of malware analysis.


<a id="org6ac1bc6"></a>

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


<a id="org04ad2c0"></a>

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


<a id="org83a794d"></a>

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


<a id="org022a154"></a>

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


<a id="orga6c3010"></a>

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


<a id="org7796abf"></a>

# Week 3

Key Concepts

-   Describe the CIA objectives of network security.
-   Use real examples to describe how DoS attacks and DDoS attacks
    work including those using botnets.
-   Describe the levels of security in wireless networks and common
    attack vectors.


<a id="orgcb4423e"></a>

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


<a id="org4fb3f7c"></a>

## Paper about CIA

Reading about the conflicting aspects of confidentiality, integrity
and availability:

K. S. Wilson, [Conflicts Among the Pillars of Information Assurance](https://ieeexplore.ieee.org/document/6152082),
in IT Professional, vol. 15, no. 4, pp. 44-49, July-Aug. 2013, doi:
10.1109/MITP.2012.24.


<a id="org7c834b2"></a>

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


<a id="org08611cc"></a>

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


<a id="orgf85787e"></a>

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


<a id="org90097f6"></a>

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


<a id="orgb8668ac"></a>

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


<a id="orgec33fc9"></a>

# Week 4

Key Concepts

-   Describe three types of firewall and reason about the appropriate
    type of firewall to use for a given situation.
-   Explain how intrusion detection systems work and give examples of
    historical and contemporary systems.


<a id="orgdaf7249"></a>

## Firewalls – our first line of defence

-   **Stateless Firewalls:** A type of Access Control Lists (or
    ACL). It checks all traffic against a set of rules;
-   **stateful Firewalls:** More efficient than Stateless
    Firewalls. Once a packet session is allowed, no filters need to
    be applied
-   **Proxy Firewall:** Carries out external network access.


<a id="org5fc7f0e"></a>

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


<a id="orgc7a6b38"></a>

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


<a id="orgab604ac"></a>

# Week 5

Key Concepts

-   Describe the features of a typical operating system, with specific
    details about the Windows system.
-   Explain the core functionality of a file system and why it needs
    to be secure.
-   Identify security features and flaws of contemporary and
    historical versions of Windows operating systems.


<a id="orga4d05fd"></a>

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


<a id="org9ac3243"></a>

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


<a id="org80f8df1"></a>

## Windows Security

-   [Brief History of Windows Security](https://web.archive.org/web/20201007124103/https://resources.infosecinstitute.com/category/certifications-training/securing-windows-ten/windows-ten-security/windows-os-security-brief-history/)

-   [Windows Consumer Security circa Oct 2020](https://web.archive.org/web/20201001021650/https://www.microsoft.com/en-us/windows/comprehensive-security):

-   [Windows Enterprise Security circa Oct 2020](https://web.archive.org/web/20200611221008/https://docs.microsoft.com/en-us/windows/security)


<a id="org3158840"></a>

# Week 6

Key Concepts

-   Use a security auditing tool to identify and solve security
    problems in a Linux operating system.
-   Describe the attack surface presented by a typical Android device.
-   Discuss the issues with containerised systems and explain why this
    is relevant in contemporary internet architectures.


<a id="org34800d3"></a>

## Why is Linux important for security & hardening Linux with Harbian

Linux is, nowadays, used everywhere. It runs on baby monitors,
Azure Sphere devices, Smartphones (Android), the Financial Market,
many of the Top 500 supercomputers, and so on. Securing and
hardening Linux is a very important endeavor.

To that end, we look at Harbian &#x2013; A [Debian](https://www.debian.org/)-based distribution
focused at security &#x2013; and how it can help us hardening a Linux
system.


<a id="orgf3a3e22"></a>

## Harbian on Github

-   <https://github.com/hardenedlinux/harbian-audit>


<a id="org945864e"></a>

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


<a id="org0d9a8c8"></a>

## Smartphone security: an overview of emerging threats.

-   S. Grzonkowski, A. Mosquera, L. Aouad and D. Morss [Smartphone
    security: an overview of emerging threats](https://ieeexplore.ieee.org/document/6914660/), IEEE Consumer
    Electronics Magazine 3(4) Oct 2014, pp.40–44.

-   Wang, Y., W. Cai, T. Gu and W. Shao [Your eyes reveal your
    secrets: an eye movement based password inference on smartphone](https://ieeexplore.ieee.org/document/8798759),
    IEEE Transactions on Mobile Computing 19(11) 2020, pp.2714–2730.


<a id="org8e7811f"></a>

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


<a id="orgb09dcd0"></a>

## Container Security

-   S. Sultan, I. Ahmad and T. Dimitriou, [Container Security: Issues,
    Challenges, and the Road Ahead](https://ieeexplore.ieee.org/document/8693491), in IEEE Access, vol. 7,
    pp. 52976-52996, 2019, doi: 10.1109/ACCESS.2019.2911732


<a id="orgbb0857e"></a>

# Week 7

Key Concepts

-   Familiarise yourself with the basic components that underpin
    cryptography.
-   Consider the application of cryptographic techniques in different
    settings.
-   Explore practical concerns around cryptographic techniques and
    their associated security implications.


<a id="orgc55e9b9"></a>

## What is Cryptography?

Cryptography is all about encoding messages in a manner that can&rsquo;t
be understood if intercepted by an eavesdropper. To motivate the
discussion, let&rsquo;s introduce a scenario:

*Alice* wants to send messages to *Bob* in a secure manner. While
this is happening, *Eve* wants to eavesdrop the communication,
something like shown in figure [1](#org68f1758) below.

\begin{figure}[h]
\label{org68f1758}
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


<a id="org465a492"></a>

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


<a id="org4041554"></a>

## Symmetric cryptography

Using our Alice and Bob scenario again, reproduced in figure
[2](#org328bdbd) below:

\begin{figure}[h]
\label{org328bdbd}
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


<a id="orgf8d73f8"></a>

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


<a id="orgaad8c50"></a>

## Some basic cyptographic techniques

-   Buchanan, W.J. [Cryptography](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193). (Denmark: River Publishers, 2017)
    pp.1–11.


<a id="orgcf16536"></a>

# Week 8

Key Concepts

-   Explore practical concerns around cryptographic techniques and
    their associated security implications.
-   Consider the application of cryptographic techniques in different
    settings.
-   Familiarise yourself with the basic components that underpin
    cryptography.


<a id="org77609c3"></a>

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


<a id="orgf81ba75"></a>

## The basics of transposition cipher

-   <https://en.wikipedia.org/wiki/Transposition_cipher>


<a id="org4ab9b7b"></a>

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


<a id="org1880453"></a>

## Playfair

-   [Buchanan](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), pp.11–16


<a id="org88926e3"></a>

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


<a id="orgf69ea75"></a>

## Vigenère

-   [Buchanan](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), pp.17-19


<a id="org4413ed9"></a>

## Frequency analysis

-   [Buchanan](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), pp.44-48


<a id="org5455d3d"></a>

# Week 9

Key Concepts

-   Consider RSA for practical settings.
-   Identify the strengths and weaknesses of RSA in applied
    cryptography.
-   Practise basic implementations of the RSA algorithm to encrypt and
    decrypt messages.


<a id="org2a36357"></a>

## Intro to RSA: Public key cryptography

RSA is one of the most important cryptographic algorithms
around. It underpins most of today&rsquo;s secure communications.

It&rsquo;s an implementation of asymmetric cryptography, or public key
encryption system. The basis of the system is that if the private
key is used to encrypt, only the public key can decrypt and *vice
versa*.

To send a message, Alice encrypts it with Bob&rsquo;s public key. In
this scenario, only Bob can decrypt it with his private key. The
process is shown in figure [3](#orgae507ab) below.

\begin{figure}[h]
\label{orgae507ab}
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


<a id="org8200b60"></a>

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


<a id="org4a1a9b7"></a>

## Further reading

-   Buchanan, W. J. [Cryptography](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193), River Publishers, 2017, pp.143-152.


<a id="org6d31622"></a>

## Modular arithmetic

\(13 \mod{6} = 1\) is the same as saying that the remainder of
\(\frac{13}{6}\) is 1. Also \((ab) \mod{c} = a\mod{c} \cdot b\mod{c}\)


<a id="org8dcc19e"></a>

## RSA example in practice

Given a message \(M\), Alice encrypts it using Bob&rsquo;s public key,
which is a pair \((e, N)\). The encryption process is given by \(E =
   M^e \mod{N}\). Therefore, Alice sends the ciphertext \(E\) to Bob.

Bob, consequently, decrypts the ciphertext using the process \(D =
   E^d \mod{N} = (M^{e})^{d} \mod{N} = M^{de} \mod{N}\). 


<a id="org16a8450"></a>

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


<a id="orgb88272e"></a>

## Further RSA revision and practice

-   <https://brilliant.org/wiki/rsa-encryption/>
-   <https://www.geometer.org/mathcircles/RSA.pdf>


<a id="org06d6133"></a>

# Week 10

Key Concepts

-   Consider RSA for practical settings.
-   Identify the strengths and weaknesses of RSA in applied
    cryptography.
-   Practise basic implementations of the RSA algorithm to encrypt and
    decrypt messages.


<a id="orga8d8a95"></a>

## 5.6 Beginning the proof, first steps and an introduction to Fermat

Given a message \(M\), Alice encrypts it using Bob&rsquo;s public key,
which is a pair \((e, N)\). The encryption process is given by \(E =
   M^e \mod{N}\). Therefore, Alice sends the ciphertext \(E\) to Bob.

Bob, consequently, decrypts the ciphertext using the process \(D =
   E^d \mod{N} = (M^{e})^{d} \mod{N} = M^{de} \mod{N}\). We want to
show that \(D = M\).

We know that \(e\) is co-prime with \(\Phi(N)\) and \(de \equiv 1
   \mod{\Phi(N)}\).


<a id="orga7d8948"></a>

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


<a id="orgb7b69af"></a>

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


<a id="orgcf90031"></a>

## Guidelines on cryptography

-   Chief Security Office &rsquo;[Security standard - use of cryptography
    (SS-007)](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/882760/dwp-ss007-security-standard-use-of-cryptography-v1.1.pdf)&rsquo;, Department for Work & Pensions (March 2020).


<a id="org6b45fc0"></a>

# Week 11

Key Concepts

-   Be able to describe parity checking and hash functions.
-   Be able to understand the differences between parity checking and
    hash functions.
-   Be able to explain the advantages and disadvantages of hash
    functions and parity checking relating to data security.


<a id="orga11f38c"></a>

## Parity checking

Parity Checking is a simple method for ensuring a given message
hasn&rsquo;t been tampered with.

If we count the number of a *1s* in a binary string, there are two
possible outcomes:

-   **Even Parity:** The number *1s* is even
-   **Odd Parity:** The number of *1s* is odd

A simple error detection method can be constructed by assuming
every message of a given length (e.g. 8-bits) gets one extra bit
for parity. We can put a message rule stating that every message
**must** be of even parity. Therefore, the final 9<sup>th</sup> bit<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>
will be initialized in such a way to guarantee even parity on the
message.

In other words, if our message is the bit-string \(11010011\), which
contains 5 *1s*, our parity bit must be set to *1*, so the number
the *1s* in the message is even. To calculate the value for the
parity bit, the sender can rely on the bitwise Exclusive-Or logical
function, i.e. \(1 \oplus 1 \oplus 0 \oplus 1 \oplus 0 \oplus 0
   \oplus 1 \oplus 1 = 1\).


<a id="org0b2448a"></a>

## Hash functions

A Hash function is a function that has a fixed size output, i.e. it
takes any string as input and always produces another string with a
given length \(n\), or \(H: \Sigma^{*} \to \Sigma^{n}\) where \(\Sigma\)
is the binary alphabet. A Hash function must also be effectively
computable, easy to compute.

The output of a hash function is referred to as a hash value or
simply a hash. The simplest hash function is the 1-bit hash
function:

\[H(x) = \sum_{i=0}^{n} x_i \mod 2\]

Where \(x_i\) is the i<sup>th</sup> bit of the input string \(x\).

By increasing the amount of bits in the hash function, we get
longer strings as output. The main application here is error
detection. In practice, when publishing a certain content, we also
publish the hash value for the content. Anyone downloading our
content can regenerate the hash value and compare with the
canonical value we published<sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>.


<a id="orgc814519"></a>

## Hashing

-   Buchanan, W.J. [Cryptography](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193). (Denmark: River Publishers, 2017)
    pp.87-112.


<a id="org02a7f7c"></a>

# Week 12

Key Concepts

-   Be able to describe hash tables and how they are used.
-   Understand how hash functions can be used for authentication
    purposes.
-   Understand the relevance of bitcoin and why its central design
    goals are so important.


<a id="orgafb3fa8"></a>

## Cryptographic hash functions

We want a cryptographic hash to serve as proof of authenticity for
a document. Our hash must be:

-   **Public:** anyone should be able to use it
-   **Effectively computable and deterministic:** there must be a
    polynomial-time algorithm for computing it and for the same input
    it must produce the same value
-   **One way:** given \(H(x)\) it is computationally infeasible to find
    \(x\).
-   **Target collision resistant:** given \(x\) it&rsquo;s infeasible to find
    \(x'\) that causes a collision
-   **Random-like output:** output looks random

The first two requirements together, mean that if we publish a
hash, anyone can authenticate it.

Given an input \(x\), it is computationally infeasible to find \(x'\)
such that \(x \neq x' \land H(x) = H(x')\). Note that \(x'\) may very
well exist, but a computer can&rsquo;t calculate it in a reasonable
amount of time. In fact, given that the input space in infinite
(i.e. \(\{0,1\}^{*}\), or all possible strings over the binary
alphabet) and output space is finite (i.e. the algorithm maps input
to output of a finite length of e.g. 256 bits).

A small perturbation to input, should match a largely different
output.


<a id="org0dd441c"></a>

## Introduction to Bitcoin

-   Buchanan, W.J. [Cryptography](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5050193). (Denmark: River Publishers, 2017)
    pp.303-311.


<a id="org7c3847c"></a>

# Week 13

Key Concepts

-   Understand how the concepts of hash functions, peer-to-peer
    networks and blockchain are combined in the design of the bitcoin
    network.
-   Be able to describe the &rsquo;identity problem&rsquo; and explain how bitcoin
    solves this problem.
-   Be able to describe the &rsquo;solvency problem&rsquo; and explain how bitcoin
    solves this problem.


<a id="orgdf3fd0b"></a>

## The origins of Bitcoin

In 2008 Satoshi Yakimoto published a paper entitled *Bitcoin: A
Peer-to-Peer Electronic Cash System*<sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup> which establishes a
protocol for decentralized currency transactions which solves the
double-spending problem<sup><a id="fnr.4" class="footref" href="#fn.4">4</a></sup> using a peer-to-peer network. 


<a id="orgacfcae1"></a>

## Network and transactions

In a Bitcoin network there are no Trusted Authorities, whenever Eve
wants to send Bob a transaction such as *&ldquo;I, Eve, give Bob 2.3
Bitcoins&rdquo;*, concerns are raised:

-   **Identity Question:** How can we confirm that Eve initiated the
    transaction?
-   **Affording Question:** Can Eve actually afford/fullfill this
    transaction?
-   **Double-spending Question:** How do we know Eve hasn&rsquo;t already
    spent the money?


<a id="orgcb1435e"></a>

## The identity problem

The identity problem is two-fold:

1.  How do we know that Eve wrote the message?
2.  How do we stop Eve from later denying she sent the message?

Both of these questions can be answered by the application of
Asymmetric key cryptography. In summary, Eve signs the message with
her private key. In fact, each cryptowallet has its own pair of
Private and Public keys. To generate a transaction Eve follows the
process below:

1.  Sign the message with secret key
    
        sig = sign(sk, msg);
    
    where:
    
    -   `sig` is a string containing a hash
    -   `sk` is the secret key
    -   `msg` is the message or transaction
    
    Note that the signature is a function of both the secret key
    `sk` and the message `msg`. This is because if we were to use
    the same signature for every message, it would be easy to
    generate new messages with the same signature.

2.  Verify the signature
    
        verify(pk, msg, sig);
    
    where:
    
    -   `pk` is the public key
    -   `msg` is the message or transaction
    -   `sig` is the signature produced by `sign()`
    
    This verification process will check that the signature is valid
    and indeed matches with Eve&rsquo;s public key. The function
    `verify()` will produce a boolean value (i.e. True or False) to
    encode the validity of the signature.

Both `sign()` and `verify()` are mathematical functions. Unlike
RSA, however, these are not based on modular arithmetic of large
primes but on Elliptic Curves<sup><a id="fnr.5" class="footref" href="#fn.5">5</a></sup>.


<a id="org1d72b85"></a>

## The solvency problem

The question of whether Eve has the money to fullfill the
transaction can be answered by making sure that every transaction
has a reference to where the money came from for that transaction.

Figure [8](#org625b527) below shows a depiction of this:

\begin{figure}[h]
\label{org625b527}
  \centering
  \begin{tikzpicture}[->]
    \tikzstyle{box} = [draw, rectangle,fill=blue!20, rounded corners,
                       minimum height=2cm, minimum width=3cm, ultra thick]

    \node[box] (t0) { \parbox{2.5cm}{$T_0\\A \to B, 29$} };
    \node[box, right of=t0] (t1) { \parbox{2.5cm}{$T_1\\B \to C, 19\\B \to B, 10$} };
    \node[box, above right of=t1] (t2) { \parbox{2.5cm}{$T_2\\C \to C, 12\\C \to E, 5\\ C \to D,2$} };
    \node[box, below right of=t1] (t3) { \parbox{2.5cm}{$T_3\\B \to E, 10$} };

    \draw[ultra thick]
          (t0) edge (t1)
          (t1) edge (t2)
          (t1) edge (t3);

    \draw[gray, dashed, ultra thick]
          (t1) edge[bend right] (t0)
          (t2) edge[bend right] (t1)
          (t3) edge[bend left] (t1);

  \end{tikzpicture}
\end{figure}

When transferring currency from wallet A to wallet B, we use the
hash of the recipient&rsquo;s public key (the wallet&rsquo;s public key, that
is) as the destination address.

The inputs to a transaction are:

1.  Amount
2.  Signature of the account sending the money
3.  Transaction ID: the hash of the transaction


<a id="org3f64c25"></a>

## Reading Activity

-   [Blockchain technologies for the Internet of Things: Research
    issues and challenges](https://ieeexplore.ieee.org/document/8543246)


<a id="org724ab59"></a>

# Week 14

Key Concepts

-   Be able to describe the &rsquo;double spending problem&rsquo; and explain how
    bitcoin solves this problem.
-   Be able to explain the concept of &rsquo;immutability&rsquo; and why it&rsquo;s a
    critically important characteristic for data on the blockchain.
-   Be able to explain the historical importance of &rsquo;The White Paper&rsquo;,
    and how blockchain technology can be used for more than just
    financial transactions.


<a id="orgf61f20f"></a>

## Double spending

How do we know Eve hasn&rsquo;t already spent the money? The way to solve
this is by having a public ledger available to all, meaning that
anyone in the network would be able to spot a double spending
attempt.

This *Public Ledger* **is** the blockchain!

On top of this, there needs to be a consensus to ensure that one
and only one transaction gets accepted and added to the
blockchain. This consensus is based on *Proof of Work*.

Proof of Work is an idea adapted from [Hashcash](https://en.wikipedia.org/wiki/Hashcash). It&rsquo;s essentially a
method for one party, known as the prover, to prove to other
parties, known as the verifiers, that a certain amount of
computational effort has been carried out. One requirement is that
the effort must be high (but doable) from the prover perspective,
but cheap from the verifier perspective.

The way this was adapted to bitcoin was that a node must do work to
earn the right to put things in the blockchain. This is commonly
referred to as *mining*.

Once a node has the right to add transactions to the blockchain,
that allows the node to put a number of transactions into the chain
&#x2013; roughly around 2000 transactions. Such transactions come
together in a structured known as a *block*.

The block contains the list of transactions and also a hash of the
block before it, which makes the chain behave similarly to a linked
list. This is the *chain* part.

The final question is what happens if Even tries to spend the same
money with two different miners and they happen to mine a new
bitcoin at the same time. In this situation, the conflicting blocks
will have to wait until another block is created on top of one of
them. Any following block will always choose the longest chain.


<a id="orga4f11f8"></a>

## Immutability of the blockchain

The blockchain is the immutable. This means that once something is
added to the public ledger, it can&rsquo;t ever be change, this is
because it would break the hashes of the blocks.

While hash collisions are possible, they are very hard to come by,
to the point that it&rsquo;s pointless to try.

Even if an attacker were to re-do the proof of work for an older
block, it would still not help, because newer blocks will always
choose the longest chain.

When it come so the proof of work, the problem involved is as
follows:

Given a cryptographic hash function \(H(x)\) and a block \(B\), find a
value \(n\), referred to as the *nonce*, such that \(H(B \cdot n)\)
results in a hash starting with a least \(T\) zeroes. Where \(T\) is
referred to as the *target*.

In practice, \(H(x)\) is the double application of a standard hash
functions called H256. I.e. \(H(x) = H256(H256(x))\). As \(T\) grows,
the problem has exponentially more difficult. If \(T=1\), then
\(\frac{1}{2}\) hashes will start with 1 zero. If \(T=n\), then
\(\frac{1}{2^{n+1}}\) hashes will solve the problem.


<a id="orgb9dd383"></a>

# Week 15

Key Concepts

-   Explain how arbitrary data can be securely stored on the bitcoin
    blockchain.
-   Define the term &rsquo;smart contract&rsquo; and state the limitations of
    smart contracts on the bitcoin blockchain.
-   Identify differences between the bitcoin and ethereum systems.


<a id="org9249290"></a>

## Data on the blockchain

Data can be stored in the blockchain, usually using the COINBASE
field.


<a id="org44097bc"></a>

## Programs on the blockchain

Programs can be stored on the blockchain. Bitcoin scripts dictate
how the transaction can be verified. These programs are called
*Smart Contracts*. The *[P2PKH](https://en.bitcoin.it/wiki/Script)* (Pay to Public Key Hash) is a
commonly used program for this purpose.


<a id="orgc05e8db"></a>

## Introduction to ethereum

Ethereum was created focussed on data and programs, rather than
currency.

Ethereum consists of the following major concepts:

-   **Blockchain:** Very similar to Bitcoin
-   **Nodes:** Powerful computers that maintain the state of the
    blockchain
-   **Currency:** Nodes gain ETH (the currency) for mining blocks and
    processing transactions
-   **Ethereum Virtual Machine (EVM):** Embedded in the
    blockchain. Transactions can execute tasks on the EVM, which
    changes its state
-   **Accounts:** Hold ETH balance
-   **Transactions:** Transfer ETH from one account to another
-   **Smart Contracts:** Execute tasks on the EVM


<a id="org43e93fc"></a>

# Week 16

Key Concepts

-   Describe a real world system that uses blockchain technology for a
    computer security-related application.
-   State the purpose and motivation for the IPFS distributed
    filesystem and make connections between this and computer security
    concepts.
-   Explain how blockchain technology can be used to incentivise
    different types of activity.


<a id="org9608014"></a>

## Data on the blockchain case study

Information on the web can be updated at any time and there&rsquo;s
little to no *paper trail* of what has been changed and when. In
some cases, it may be necessary to know that a certain piece of
information has (or has not) been modified. Moreover, if the
database system of a major news outlet or financial institution has
been tampered with, there&rsquo;s no way of knowing without a costly
audit.

Timestamped Hashes can help solve this problem. In summary, this
means storying in a blockchain a pair consisting of the
cryptographic hash of the contents of the e.g. webpage in question
and a timestamp of when the hash was generated. If the webpage is
modified somehow, the hash won&rsquo;t match anymore and we know it has
been tampered with.


<a id="org72c2316"></a>

# Week 17

Key Concepts

-   Understand how policies and models are used to design a trusted
    operating system.
-   Be able to describe three key security policies - Military,
    Chinese Wall and Clark Wilson.
-   Be able to understand and compare the advantages/disadvantages of
    policies.


<a id="org84bff1b"></a>

## Trusted system and trusted system elements

An operating system is considered *trusted* if it can be shown to
provide:

-   Memory protection
-   File protection
-   User authentication
-   Object access control

A trusted OS contains the following four basic elements:

-   **Policy:** a description of what the system should do and how to
    do it
-   **Model:** a presentation of the policy which the OS will enforce
-   **Design:** how to implement a security model
-   **Trust:** necessary policy demands are enforced and correctly
    applied


<a id="org9533b21"></a>

## Security policies & Military security policy

The *need-to-know* rule states that sensitivie information is only
available to Objects who need to know it to perform their job. It
was designed to protect classified information.

Each piece of information is ranked at a certain sensitivity level:

1.  Top Secret
2.  Secret
3.  Confidential
4.  Restricted
5.  Unclassified

Top Secret is the most sensitive information and unclassified is
the least sensitive.


<a id="orgc93c383"></a>

## Clark-Wilson security policy

Commercial security policies are focussed on both data integrity
and secrecy. There is no formal concept of a commercial clearance,
i.e. there is no central authority controlling access.

The Clark-Wilson security policy focusses on the accuracy of legal
business procedures. It also aims to maintain consistency between
internal data and external expectations. The order in which
activities are carried out is important.


<a id="orgbf4bd35"></a>

## Chinese Wall security policy

This policy reflects commercial needs for information access
protection. The requirements reflect issues relevant to people in
legal, medical, investment, or accounting firmst who may be subject
to Conflict of Interest.

There are three levels of abstraction in this policy:

-   **Objects:** the lowest level, basic objects such as files
-   **Company group:** intermediate layer. The collection of objects
    concerning a particular company
-   **Conflict classes:** the highest level. Includes all groups of
    objects for competing companies


<a id="org5621cff"></a>

## Essential Reading

-   Clark, D.D. and D.R. Wilson &rsquo;[A comparison of commercial and
    military computer security policies](https://ieeexplore.ieee.org/document/6234890)&rsquo; 1987 IEEE Symposium on
    Security and Privacy

-   Brewer, D.F.C. and M.J. Nash &rsquo;[The Chinese Wall Security Policy](https://ieeexplore.ieee.org/document/36295)&rsquo;
    Proceedings 1989 IEEE Symposium on Security and Privacy.


<a id="orgd30559a"></a>

# Week 18

Key Concepts

-   Be able to describe three key models for a trusted operating
    system (BellLa Padula, Biba, Graham Denning)
-   Be able to understand and compare the advantages/disadvantages of
    these models.
-   Understand how some models better represent certain policies than
    others.


<a id="org0d844e6"></a>

## Security models & BellLa Padula model

Security are defined and used to:

-   Test a policy for completeness and consistency
-   Document a policy
-   Design an implementation
-   Verify that an implementation meets the requirements

The [Bell-LaPadula](https://en.wikipedia.org/wiki/Bell%E2%80%93LaPadula_model) model includes a set of subjects \(S\) and a set
objects \(O\). Each subject \(s \in S\) and each object \(o \in O\) has a
fixed security class \(C(s)\) and \(C(o)\). The classes are ordered by
a relation \(\leq\) (Dominance).

This Dominance relation is used to limit the sensitivity and
content a subject can access.

We say that a subject \(s\) dominates and object \(o\) only if:

1.  the clearance level of the subject is at least as high as that
    of the object; and
2.  the subject has need to know about all compartments for which
    the information is classified.

This model has three security properties:

1.  The Simple Security Property states that a subject at a given
    security level may not read an object at a higher security
    level.
2.  The \* (star)Security Property states that a subject at a given
    security level may not write to any object at a lower security
    level.
3.  The Discretionary Security Property uses an access matrix to
    specify the discretionary access control.


<a id="org0485d33"></a>

## Biba model

The [Biba Model](https://en.wikipedia.org/wiki/Biba_Model) was created to prevent innapropriate modification of
data. It defines *Integrity Levels* which are analogous to the
sensitivity levels of Bell-LaPadula.

Subjects and Objects are ordered by an integrity classification
scheme, denoted \(I(s)\) and \(I(o)\).

This model also has three security properties:

1.  The Simple Integrity Property states that a subject at a given
    level of integrity must not read data at a lower integrity level
    (no read down).
2.  The \* (star) Integrity Property states that a subject at a given
    level of integrity must not write to data at a higher level of
    integrity (no write up).
3.  Invocation Property states that a process from below cannot
    request higher access; only with subjects at an equal or lower
    level.


<a id="orgdd4b185"></a>

## Graham-Denning model

The [Graham-Denning model](https://en.wikipedia.org/wiki/Graham%E2%80%93Denning_model) shows how subjects and objects should be
securely created and deleted. It operates on a set of subjects \(S\),
a set of objects \(O\), a set of rules \(R\), and an access control
matrix \(A\).

The matrix contains one row for each subject and one column for
each subject and object.

This model has eight primitive rules that outline:

-   How to securely create an object
-   How to securely create a subject
-   How to securely delete an object
-   How to securely delete a subject
-   How to securely provide the read access right
-   How to securely provide the grant access right
-   How to securely provide the delete access right
-   How to securely provide the transfer access right


<a id="org4c5ed9e"></a>

## Essential Reading

-   McLean, J. &rsquo;[The specification and modeling of computer security](https://ieeexplore.ieee.org/document/48795)&rsquo;
    Computer 23(1) 1990.

-   Bell, D.E and L.J LaPadula &rsquo;[Secure computer systems: Mathematical
    foundations](http://www-personal.umich.edu/~cja/LPS12b/refs/belllapadula1.pdf)&rsquo; MITRE Technical Report 2547, Volume 1, 1973
    (electronic reconstruction by L. LaPadula).

-   &rsquo;[Integrity considerations for secure computer systems](https://ban.ai/multics/doc/a039324.pdf)&rsquo; MITRE
    Technical Report 3153, 1977.

-   Scott Graham, G. and P.J. Denning &rsquo;[Protection: principles and
    practice](https://dl.acm.org/doi/abs/10.1145/1478873.1478928)&rsquo;, AFIPS &rsquo;72 (Spring): Proceedings of the May 16-18 1972,
    Spring Joint Computer Conference 1971, pp.417-29.


<a id="org7218b63"></a>

# Week 19

Key Concepts

-   Identify some of the key challenges for designing secure systems
    for human beings.
-   Consider some of the risks to secure systems and how to mitigate
    said risks.
-   To identify challenges to computer security around human behaviour
    and society.


<a id="org62aad2e"></a>

## The cryptography dilemma

Cryptography allows us to hide sensitive information from prying
eyes. There may be situations when access to someone&rsquo;s data may be
necessary. The goal is to secure data and provide access in limited
scenarios. Privacy is important for everyone.


<a id="org6bffebc"></a>

## Leaked data

SQL Injection is one method for attacking database server. The
attack consists of exploiting flaws in SQL query builders from
websites. If the input data isn&rsquo;t properly validated or sanitized,
an attacker may *inject* extra SQL statements which may allow the
attacker to cause the database to leak the complete database.

Social Engineering is another method employed to access someone
else&rsquo;s data. It consists of convincing a support personal that you
are the owner of the account and make them give you access to your
account.

Two-factor authentication is a method for mitigating access to
electronic accounts. In summary, there are three types of
authentication:

-   **Something you know:** your regular password; you and only you
    should know it
-   **Something you have:** a generator of One-time-passwords. This is
    where 2FA works. You have an app (such as FreeOTP) to generate
    passwords
-   **Something you are:** Biometric authentication. Fingerprints, eye
    scanning, etc.


<a id="org5536135"></a>

## Compliance and non compliance

-   Bulgurcu, B., H. Cavusoglu and I.  Benbasat &rsquo;[Information security
    policy compliance: an empirical study of rationality-based
    beliefs and information security awareness](https://www.jstor.org/stable/25750690?pq-origsite=summon&seq=1#metadata_info_tab_contents)&rsquo;, MIS Quarterly 34(3)
    2010, pp.523-48.


<a id="orgd589b41"></a>

## Software backdoors

Backdoors are a method for providing an extra means of access to a
system. It&rsquo;s a possible vector of attack for both legitimate and
non-legitimate parties.

An early example was the Back Orifice RAT (Remote Access Trojan)
from 1998. There are many modern examples, particularly in Content
Management Systems and Virtual Learning Environments.

Another type of backdoor is the *Rootkit*. These are very clever
and hard to detect. They utilise techniques such as *hooking* and
hijacking communications at a low level.


<a id="org43500cf"></a>

## Sabotage

Sabotage is bad, mmm&rsquo;kay. Don&rsquo;t sabotage.


<a id="org518b31d"></a>

# Week 20

Key Concepts

-   Identify some of the key challenges for designing secure systems
    for human beings.
-   Consider some of the risks to secure systems and how to mitigate
    said risks.
-   To identify challenges to computer security around human behaviour
    and society.


<a id="org27f9dd1"></a>

## Intellectual property

Intellectual Property, such as brands, logos, SW, HDL, or ideas in
general need to be protected.


<a id="org81a0e1b"></a>

## The cost of DRM

-   A.S. and S. Wicker &rsquo;[Digital rights management: The cost to
    consumers (Point of View)](https://ieeexplore.ieee.org/document/7112268)&rsquo;, Proceedings of the IEEE 103(5) 2015,
    pp.726-33.


<a id="org9b11c7e"></a>

## Cross site scripting - the company house example

-   Corfield, G. &rsquo;[Why, yes, you can register an XSS attack as a UK
    company name. How do we know that? Someone actually did it](https://www.theregister.com/2020/10/30/companies_house_xss_silliness/)&rsquo;, The
    Register October 2020.

-   Eckert, J. &rsquo;[How little Bobby Tables ruined the internet](https://medium.com/@johnteckert/how-little-bobby-tables-ruined-the-internet-d714c20d2ce0)&rsquo; 2018.


<a id="org965827e"></a>

## The Snowden revelation

-   [Edward Snowden Biography](https://www.biography.com/activist/edward-snowden)


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Note that this adds overhead on transmission. Every byte, in
this protocol, is 9 bits long. In other words, for every 8-bits, we
have 1-bit of overhead. This extra bit, allows for 1-bit error
detection, so the overhead is acceptable.

<sup><a id="fn.2" href="#fnr.2">2</a></sup> A simple example is with the tool is the `sha256sum` tool
available on UNIX-like systems.

<sup><a id="fn.3" href="#fnr.3">3</a></sup> <https://bitcoin.org/bitcoin.pdf>

<sup><a id="fn.4" href="#fnr.4">4</a></sup> <https://en.wikipedia.org/wiki/Double-spending>

<sup><a id="fn.5" href="#fnr.5">5</a></sup> <https://en.wikipedia.org/wiki/Elliptic-curve_cryptography>
