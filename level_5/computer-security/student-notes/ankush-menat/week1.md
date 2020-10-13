# Week 1

## Research checklist
This checklist is useful while researching a topic online/offline.

1. Relevance
    1. check for relevance by reading overview, abstract or intro.
    2. Does it match your needs?
2. Objective
    1. Do the writer state their position on issue in overview/intro?
    2. Do they use emotive or clickbait language?
    3. Do they have vested interest?
3. Research method
    1. is it clear how was data collected?
    2. were the methods appropriate?
    3. Do you trust them?
4. Current
    1. is information up to date?


## Reading about ethics

- "ACM Code of ethics and professional conduct" - https://ethics.acm.org/
- "Ethics in Information Security" - https://www.computer.org/csdl/magazine/sp/2017/03/msp2017030003/13rRUILc8dI

## Security threats
Learning outcomes:
- Central goals and aspects of computer security
- Understand differences between range of malwares
- Identify key examples of malware and historical significance.

## Computer security
security is asset protection, so computer security is protection against an attacker or threat as well as ensuring secure usage of computer hardware/software.

### Goals:
1. Prevention
2. Detection
3. Reaction.

### Aspects:
1. Policy: Confidentiality, Integrity and availability. e.g. "Only TA should be able to read grade files"
2. Threat models: assumptions about ability of malicious attacker. e.g. guess passwords, steal hardware
3. Mechanisms: software and hardware to enforce policy. e.g. Authentication system, permission management system, encryption

### Negative Goal
Computer security is hard because of its "negative goal". Example of a positive goal is "User should be able to access the file", which is rather easy to achieve. However, "Only authorized user should be able to access the file" has open ended threat models.

"A system is only as good as its weakest link."

### Definitions:
- Attack: activity harmful to computer systems.
- Risk: possibility of damage due to attack.
- ZeroDay - vulnerability used before being discovered by developer.
- Exploit - software used to take advantage of vulnerability.
- Hacker:
    - Whitehat: Good ones. Help find vulnerabilities. They often work with proper permission from their "victim".
    - Blackhat: Bad ones. Gain unauthorized access. Harm operations or steal operations or just want to watch the world burn.
    - Greyhat: Somewhere in between

## Types of malicious software
**Virus**: Malicious software that attaches itself to other software or files and spreads with them. e.g. Creeper virus from ARPANET era.

**Worm**: Like malware but can replicate without attaching themselves to any existing software. e.g. Stuxnet

**Adware**: display unwanted advertisements and collect user data. E.g. Microsoft Windows /s

**Trojans**: Misleads user into believing it does something else, while silently does malicious activities. e.g. DarkComet RAT

**Spyware**: Specifically designed to spy on target. While some spyware may not damage users, this still violates user's privacy. Often these are used by nation states for espionage. e.g. keyloggers.

**Botnets**: Type of malware that joins target's machine into a network of infected machines, controlled by command and control (C&C) server. These networks are then utilized to steal data, perform DDoS on another bigger target.


**Rootkits**: A rootkit gives access to "root" parts of computer to the attacker, working on very high privilege level which implies it can hide itself from detection very well. Sometimes these could also be running outside of operating system altogether e.g. Intel management engine exploits.



## Suggested extra resources that I found on internet
- ["Threat models"](https://www.youtube.com/watch?v=GqmQg-cszw4&list=PLUl4u3cNGP62K2DjQLRxDNRi0z2IRWnNh) MIT OCW, 1st lecture in "Computer systems security"
- [Sec+ training course for SY0-501](https://www.youtube.com/playlist?list=PLG49S3nxzAnnVhoAaL4B6aMFDQ8_gdxAy)  - relevant for whole module

## Examples to read

Following are some examples of famous hacks and vulnerabilities. Some are from MIT lecture, rest are my addition.
- http://en.wikipedia.org/wiki/Sarah_Palin_email_hack
- http://www.wired.com/gadgetlab/2012/08/apple-amazon-mat-honan-hacking/all/
- https://medium.com/p/24eb09e026dd
- https://lasec.epfl.ch/memo/memo_des.shtml
- https://www.schneier.com/blog/archives/2013/12/more_about_the.html
- https://factorable.net/weakkeys12.extended.pdf
- https://www.nytimes.com/2011/06/14/technology/14security.html
- https://bitcoin.org/en/alert/2013-08-11-android
- https://en.wikipedia.org/wiki/Stuxnet
- https://en.wikipedia.org/wiki/Democratic_National_Committee_cyber_attacks
- https://www.sans.org/security-resources/malwarefaq/conficker-worm
- https://www.synopsys.com/blogs/software-security/heartbleed-bug/
- https://meltdownattack.com/
- https://en.wikipedia.org/wiki/Shellshock_(software_bug)
