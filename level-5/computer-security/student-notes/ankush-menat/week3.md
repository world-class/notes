# Week 3 - Network security

## Reading and references
- K. S. Wilson, "Conflicts Among the Pillars of Information Assurance," in IT Professional, vol. 15, no. 4, pp. 44-49, July-Aug. 2013, doi: 10.1109/MITP.2012.24.
- Source code of Mirai botnet - https://github.com/jgamblin/Mirai-Source-Code
- A. Woodiss-Field and M. N. Johnstone, "Assessing the Suitability of Traditional Botnet Detection against Contemporary Threats," 2020 Workshop on Emerging Technologies for Security in IoT (ETSecIoT), Sydney, Australia, 2020, pp. 18-21, doi: 10.1109/ETSecIoT50046.2020.00008.  https://ieeexplore.ieee.org/document/9097759
- Scott R. Fluhrer, Itsik Mantin, and Adi Shamir. 2001. Weaknesses in the Key Scheduling Algorithm of RC4. In Revised Papers from the 8th Annual International Workshop on Selected Areas in Cryptography (SAC '01). Springer-Verlag, Berlin, Heidelberg, 1–24. https://dl.acm.org/doi/10.5555/646557.694759
- Hal Berghel and Jacob Uecker. 2005. WiFi attack vectors. Commun. ACM 48, 8 (August 2005), 21–28. https://dl.acm.org/doi/10.1145/1076211.1076229
- K. Lounis and M. Zulkernine, "Attacks and Defenses in Short-Range Wireless Technologies for IoT," in IEEE Access, vol. 8, pp. 88892-88932, 2020, https://ieeexplore.ieee.org/abstract/document/9090905
- H. Sinanović and S. Mrdovic, "Analysis of Mirai malicious software," 2017 25th International Conference on Software, Telecommunications and Computer Networks (SoftCOM), Split, 2017, pp. 1-5, doi: 10.23919/SOFTCOM.2017.8115504. https://ieeexplore.ieee.org/document/8115504

## CIA triad - Confidentiality, Integrity and Availability

Network security - set of policies and practises to protect a network.
E.g. Policy - no one should be allowed to access network without authenticating themselves. Practice - implementing authentication server.

- Confidentiality i.e. who should allowed 'read'
- Integrity i.e. who should be allowed to write or modify
- Availability i.e. reliability, maintainability, redundancy

## Denial of service (DoS)
Definition: Overloading a service with flood of request to "deny" services to actual users.

DoS attack can be mounted on multiple layers of typical 7 layer OSI network model.

Examples:
1. ARP (Address Resolution Protocol) flood, layer 2, data link layer. ARP is request for mac address from IP. All devices on network receive ARP, relevant host respond flood to it.
2. ICMP ping flood, Layer 3, Network layer. ICMP pings are used for diagnosing network connection.
3. TCP-SYN flood, Layer 4, Transport layer. TCP connections are established by a handshake that start with SYNchronize message, which is responded with ACKnowledge. Attackers flood the server with SYN message without acknowledging them, which ends up wasting resources on server and denies service to actual users when it is overloaded.

## DDoS and botnets
Denial of service attack is not very effective as it only uses a single attacker. Most services have infrastructure that can not be loaded by single attacking machine.

    Typical DOS scenario
                            +-------------------+
                            |                   |
    +----------+            |                   |
    | attacker +----------->+      service      |
    +----------+            |                   |
                            |                   |
                            +-------------------+

To effectively deny a service attackers might mound a Distributed DoS attack (DDoS) to overload the service.

                        +-------------+
                        | attacker #5 |
                        +------+------+
                               |
                               |
                               v
                      +--------+----------+       +-------------+
                      |                   +<------+ attacker #4 |
    +----------+      |                   |       +-------------+
    | attacker +----->+      service      |
    +----------+      |                   +<--+
                      |                   |   |   +-------------+
                      +---------+---------+   +---+ attacker #3 |
                                ^                 +-------------+
                                |
                         +------+------+
                         | attacker #2 |
                         +-------------+

Botnets are typical means of mounting a DDoS attack. As it is very difficult for attackers to co-ordinate and mount DDoS attack they infect others machine and create a network of machines ("bots") which are controlled by central "Command and Control" (C&C) server which co-ordinates the attacks. Typical DDoS attacks can use millions of infected bots to mount attack.


### Problem with Internet of Things
Traditional computers and phones can be and often are patched for vulnerabilities. Same is not the case with IoT devices, many of whom are not very secure and some of the vulnerabilities can't even be patched. These devices are also often poorly configured or have bad defaults for sake of simplifying user experience.
Such IoT devices when they are infected and become part of botnet they can be used to mount attack similar to botnet full of regular computers. It's also very difficult to detect that IoT device is infected for regular users.

E.g. Mirai botnet (refer recommended reading)
Mirai used C&C server to co-ordinate attacks, each infected machine would have 10 different DoS attacks configs, it would kill other running malwares and servers to gain resources and scan the network for more potential infectable machines. Infected machines send the details of more vulnerable machines to C&C server which uses another service to deliver payload and enroll new machines into the botnet.


You can use services like shodan.io to explore vulnerable devices and also see if something on your network is vulnerable.


## Wireless attacks

- Wifi alliance is network of companies working together so various wireless transmitter/receivers are interoperable. There are several Wifi standards. 802.11 Major rev. {a,b,g,n,ac,nx}
- Wifi security timeline:
    - WEP,  1997
    - WPA,  2003
    - WPA2, 2004
    - WPA3, 2020
- WEP had very horrible security flaws. Hence it should never be used anymore. It was vulnerable to dictionary attacks and Fluhrer, Mantin and Shamir attack (which is famous encryption breaking hack for WEP)
- Since wireless networks are working in open air and do not have physical barrier to stop intruders they are more difficult to secure.
- Replay attacks: capture packets, modify them and resend it.
- PRGA attack / Packet tempering attack: Masquerading as another device.

