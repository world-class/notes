# Week 2 - Malware analysis

There are two ways to analyse malwares: static and dynamic analysis. The goal of these analysis is to find `IOC` or Indicator of compromise. These analysis help analyst address and understand functionality, origin, impact and intent of the malicious software.

## Static analysis
Type of analysis where file is not actually run or executed. The most common method is calculating hash of a file and checking if it matches known database of malicious software.
This is how most anti-virus softwares do static analysis. Typical hashing methods include MD5, SHA1 or SHA256. VirusTotal uses SHA256 hash.

MD5 is not considered a safe option for integrity verification anymore because of known hash-collisions and multiple known incidents where this was exploited: https://en.wikipedia.org/wiki/MD5#Collision_vulnerabilities

If file publishers also upload file hashes then users can also use same hash-verification techniques to verify if file they've downloaded is same or if it has been tempered with. This is however not 100% safe as malicious actors coudl've changed the published hashes too. In such cases, file's digital signatures can also be verified.

Tools like https://www.virustotal.com/ allow uploading a file and getting it checked by multiple anti-virus softwares.

## Dynamic analysis

Some malwares are clever enough to dodge the static analysis methods. More over, changing the hash of a file is not a difficult task hence static analysis methods are not effective against skilled adversaries.

Dynamic analysis uses a sandboxed environment to run malware and study its behaviour and find its IOC. This helps uncover functionality of malware. E.g. to study a keylogger, we can run it in safe sandboxed environment, see where logs files are created, where those files are sent etc.

### Sandboxes
Sandbox is a virtualized environment used for dissecting and analyzing malwares. It contains virtual networking, services, storage etc to simulate real system.
There are two main types of sandboxes:
1. Agent-based - require software on every computer to be monitored. E.g. Cuckoo, threatexpert, bitblaze and comodo.
2. Agent-less - Monitors computer without needing to be installed on every device. e.g. VMRay, Analyzer and SNDBOX.

Some research suggests agent-less sandboxes are more effective. [citation needed]

Windows has tool `Procmon` which can be used for monitoring registry, filesystem, network, running processes etc.

## Ethics
- We have some responsibility as user and as creator of softwares.
- If we discover vulnerability, then we must notify stakeholders in reasonable way.
- Some creators would award such behaviour with bug bounties, some might not like getting their work poked around.
- There are no set de facto guidelines but we must notify creator of software first about vulnerability and give them some time to fix.
- If it is not fixed, it is also our duty to let end users know about vulnerability.
- Think about consequences of your actions.
- Consider legal ramifications of your actions based on your local law and international laws that apply if any.

Read more: https://en.wikipedia.org/wiki/Responsible_disclosure
Example security policy: https://www.tesla.com/about/security

## Passwords
Designing truly secure system is hard work.

- Leaked data has a market and become a viable means for making money.
- Password reuse is common problem. One breached service can imply all other services where user had same passwords is at danger.
- A good system design balances accessibility with security and usability.

If you're responsible for designing system around passwords you should acquaint yourself with industry practices:

Summary of some suggestion by standards including example of one of most prolific leak:
- https://nakedsecurity.sophos.com/2013/11/20/serious-security-how-to-store-your-users-passwords-safely/
- https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html


## Social Engineering
> "The weakest link in the Cybersecurity chain is often sitting between the keyboard and chair" - unknown

Social engineering is one of the most common type of attack vector and does not rely on technical manifestation of attacks.

Popular examples include phishing, vishing and impersonating someone. The trick in all social engineering methods is to gain trust of target to achieve something. e.g. Entering premises with fake outfit, getting user to click malicious link in email or getting information out of someone by faking identity. Common attack methods include impersonating as customer service, delivery person, tech support or maintenance staff.

One way to fight against social engineering attack is to train employees and expose them to simulated social engineering situations.

Extra reading:
- Social Engineering, Chris Hadnagy
- Comprehensive description of various social engineering techniques - https://www.social-engineer.org/framework/general-discussion/
