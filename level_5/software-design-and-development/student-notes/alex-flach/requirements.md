<!-- omit in toc -->
# Requirements

Notes are summaries and extracts from Wiegers and Beatty, *Software Requirements*, 3rd edn 2013 unless otherwise stated.

See also Pressman and Maxim, *Software Engineering*, chapters 7 and 8.

- [Conceptual Framework](#conceptual-framework)
  - [What are Requirements?](#what-are-requirements)
  - [Requirements Engineering](#requirements-engineering)
  - [Common Problems](#common-problems)
- [Documenting Requirements](#documenting-requirements)
  - [A Template SRS](#a-template-srs)
- [Writing Good Requirements](#writing-good-requirements)
  - [Writing style](#writing-style)
  - [Level of Detail](#level-of-detail)
  - [Avoiding Ambiguity and Incompleteness](#avoiding-ambiguity-and-incompleteness)
  - [Information representations](#information-representations)
- [Easy Approach to Requirements Syntax (EARS)](#easy-approach-to-requirements-syntax-ears)
  - [The Syntax](#the-syntax)
  - [The Argument](#the-argument)
- [Usability Engineering](#usability-engineering)
  - [Usability Attributes](#usability-attributes)
  - [Usability Process](#usability-process)
  - [Usability Principles (Nielsen)](#usability-principles-nielsen)
- [Usability Questionnaires](#usability-questionnaires)
  - [The System Usability Scale (SUS)](#the-system-usability-scale-sus)
  - [UMUX and UMUX-lite](#umux-and-umux-lite)
- [Accessibility](#accessibility)
  - [Accessibility for Web Development](#accessibility-for-web-development)

## Conceptual Framework

### What are Requirements?

> *Requirements* are a specification of what should be implemented. They are descriptions of how the system should behave, or of a system property or attribute. They may be a constraint on the development process of the system.

*Sommerville and Sawyer, Requirements Engineering, 1997*

> The hardest single part of building a software system is deciding precisely what to build. No other part of the conceptual work is as difficult as establishing the detailed technical requirements, including all the interfaces to people, to machines, and to other software systems. No other part of the work so cripples the resulting system if done wrong. No other part is more difficult to rectify later.

*Brooks, No Silver Bullet, 1987*

Software requirements include three distinct levels, business requirements, user requirements, and functional requirements. In addition, every system has an assortment of nonfunctional requirements. Some common types of requirement information include:

| Term | Definition |
| ---- | ---------- |
| Business Requirement | A high-level business objective of the organization that builds a product or of a customer who procures it. |
| Business Rule | A policy, guideline, standard, or regulation that defines or constrains some aspect of the business. Not a software requirement in itself, but the origin of several types of software requirements. |
| Constraint | A restriction that is imposed on the choices available to the developer for the design and construction of the product. |
| External Interface Requirement | A description of a connection between a software system and a user, another software system, or a hardware device. |
| Feature | One or more logically related system capabilities that provide value to a user and are described by a set of functional requirements. |
| Functional Requirement | A description of a behaviour that a system will exhibit under specific conditions |
| Nonfunctional Requirement | A description of a property or characteristic that a system must exhibit or a constraint that it must respect. |
| Quality Attribute | A kind of nonfunctional requirement that describes a service or performance characteristic of a product. |
| System Requirement | A top-level requirement for a product that contains multiple subsystems, which could be all software or software and hardware. |
| User Requirement | A goal or task that specific classes of users must be able to perform with a system, or a desired product attribute. |

***Business requirements*** describe *why* the organization is implementing the system - the business benefits the organization hopes to achieve. The focus is on the business objectives of the organization or customer who requests the system. Business requirements usually come from the funding sponsor for a project, the acquiring customer, the manager of the actual users, a marketing department, or a product lead. They tend to be documented in a *vision and scope document*, a business case, or a project charter.

***User requirements*** describe goals or tasks the users must be able to perform with the product that will provide value to someone. This domain includes descriptions of product attributes that are important to user satisfaction. They can be represented in use cases, user stories, and event-response tables. Ideally actual users should provide this information. User requirements describe the *what* - what users will be able to do with the system. In a user story format they would also include the user's goal "As a passenger, I want to check in for a flight, so that I can board my plane".

***Functional requirements*** describe the behaviours the product will exhibit under specific conditions. They describe what the developers must implement for users to be able to accomplish their tasks and for the user requirements to be met. They are often written in traditional 'shall' statements - "The passenger shall be able to print boarding passes for all flight segments". They are documented in a *Software Requirements Specification* which describes as fully as necessary the expected behaviour of the system.

***System requirements*** describe the requirements for a product that is composed of multiple components or subsystems. It could encompass hardware and software, or all software. Some system functions might be allocated to people - eg a cashier's workstation in a shop.

***Quality attributes*** are also called quality factors, constraints, or quality of service requirements. They describe product characteristics that are important to users, developers, or maintainers. For example performance, safely, availability, portability.

***Features*** are logically related system capabilities that provide value to a user and are described by a set of functional requirements. A feature can encompass multiple user requirements, each of which means that some functional requirements must be implemented through the feature. These can be modelled in a feature tree (see p. 11).

### Requirements Engineering

***Requirements Engineering*** encompasses the process of *requirements development* and *requirements management* depending on where you are in the development lifecycle.

***Requirements development*** involves the elicitation, analysis, specification, and validation of requirements.

- *Elicitation* encompasses the activities involved with discovering requirements (interviews, workshops, document analysis). The key activities are:
    - Identify the product's expected user classes and other stakeholders.
    - Understand user tasks and goals and their alignment with business objectives.
    - Understand the environment in which the product will be used.
    - Work with representatives of user classes to understand their functionality needs and quality expectations.
- *Analysis* involves reaching a richer and more precise understanding of each requirement. The key activities are:
    - Analyzing the information received from users to distinguish their tasks and goals from functional requirements, business rules, quality expectations, suggested solutions, and other information.
    - Decomposing high level requirements to sufficient detail.
    - Deriving functional requirements from other types of requirements information.
    - Understanding the relative importance of quality attributes.
    - Allocating requirements to components in the software architecture.
    - Negotiating implementation priorities.
    - Identifying gaps in requirements or unnecessary/out of scope requirements.
- *Specification* involves representing and storing the collected requirements knowledge in a well-organized fashion for review.
- *Validation* involves confirming that you have the correct set of requirements information that will enable developers to build a solution to satisfy the business objectives. This entails:
    - Reviewing the documented requirements to correct any problems
    - Developing acceptance tests and criteria to confirm that a product based ont eh criteria would meet customer needs.

***Requirements management*** involves the following:

- Defining the requirements baseline, a snapshot in time that represents an agreed upon, reviewed, and approved set of functional and nonfunctional requirements.

- Evaluating the impact of proposed requirement changes and incorporating approved changes in a controlled way.

- Keeping project plans current with evolving requirements.

- Negotiating new commitments based on estimated impact of requirements changes.

- Defining the relationships and dependencies between requirements.

- Tracing individual requirements to designs, source code, and tests.

- Tracking requirements status and change activity through the project.

### Common Problems

Some common issues with requirements engineering:

***Insufficient User Involvement***. Customers don't understand why it's so hard and laborious to elicit detailed requirements. Developers might not emphasize user involvement because they think they already understand what their users need. Access might be difficult. Surrogates might stand in the way. Insufficient user involvement can lead to late-breaking requirements and incorrect foundations on real business and customer needs.

***Inaccurate Planning***. Vague requirements can lead to optimistic planning estimates. Requirements problems are the biggest cause of planning problems.

***Creeping User Requirements***. As projects run over, scope creep easily sets in. Requirements will change and grow, but must be managed.

***Ambiguous Requirements***. Can the same requirement be interpreted in different ways? Ambiguity can lead to different expectations and surprise down the line. This is common if, in the validation stage, users are left to read and validate requirements alone. Collaborative elicitation and validation is needed to overcome this often.

***Gold Plating***. When the developer adds features that aren't in the spec because they think users will love it. Can be a waste of time and effort. Instead put creative ideas to the user base before implementing them.

***Overlooked Stakeholders***. Most products have several groups of users and it's common for a class to be overlooked, or else lack voice relative to other classes. Make sure all user classes have a voice.

## Documenting Requirements

(notes from ch. 10)

The outcome of requirements development is a documented agreement among stakeholders about the product to be built. Typically a business case or vision document contains the business requirements, and user requirements are captured in the form of use cases or user stories. The product's functional and nonfunctional requirements are documented in a *Software Requirements Specification* or SRS which is delivered to the development team. This may be stored in a database or tool rather than a flat document.

You can represent software requirements in a variety of ways, from natural language to visual models to formal specifications. Structured natural language, augmented with visual models and other representation techniques (tables, mock-ups, etc) are the most practical way for most software projects to document their requirements.

Every requirement needs a unique persistent identifier, so it can be tracked in change requests, modification histories, and requirements traceability matrices. The ID might be a unique sequence number, hierarchical numbering, or hierarchical text tags (eg `Product.Cart.01` and `Product.Discount.Error`).

Incorporating UI designs in the SRS can be powerful to validate requirements with users, but the UI might not itself be a real requirement and users can often not 'unsee' a UI once shown. Regardless screenshots do not replace written user and functional requirements. Conceptual 'sketches' can be a good balance.

### A Template SRS

Here is the scaffolding for what an SRS might look like:

***1. Introduction***

*1.1 Purpose* 

Identify the product whose requirements are specified in the document, intended readers, document purpose.

*1.2 Document Conventions* 

Any standards or typographic conventions relied on in the document.

*1.3 Project Scope* 

A short description of the software being specified and its purpose, related to organizational goals. Refer to separate vision document if available.

*1.4 References* 

Any other related resources on which the SRS relies.

***2. Overall Description***

*2.1 Product Perspective* 

Describe the product context and origin. Include visual models in an ecosystem map if part of a wider system.

*2.2 User classes and characteristics* 

Identify the user classes and their main characteristics, including favoured user classes.

*2.3 Operating Environment* 

Describe the environment in which the software will operate, hardware, OS, location of users and servers, databases, interfaces.

*2.4 Design and Implementation Constraints* 

Should a certain language be used, or library? Any other constraints?

*2.5 Assumptions and Dependencies* 

Any business or operating assumptions that could be important to make explicit. Any software or process dependencies critical for project success.

***3. System Features***

Arrange functional requirements by system feature, or functional area, process flow, use case, mode of operation, etc depending on what makes most sense.

*3.x System feature x* 

State the name of the feature in a few words.

*3.x.1 Feature Description* 

Provide a short description of the feature and its priority.

*3.x.2 Functional Requirements* 

Itemize the functional requirements associated with the feature. Uniquely label each one.

***4. Data Requirements***

Use this section to describe various aspects of the data the system will consume as inputs, process, or create as outputs.

*4.1 Logical data model* 

A visual representation of the data objects and collections the system will process. Entity Relationship Diagrams or UML class diagrams might be used. Not a full database schema though.

*4.2 Data dictionary* 

Defines the composition of data structures and the meaning, type, allowed values of the data elements in those structures. Store as separate artefact.

*4.3 Reports* 

If the application is to generate reports, identify them here and describe their main characteristics.

*4.4 Data acquisition, integrity, retention, disposal* 

Describe how data should be acquired and maintained, policies on deletion, privacy etc.

***5. External Interface Requirements***

Enough information to ensure the system communicates properly with users and external hardware/software elements.

*5.1 User interfaces* 

The logical characteristics of each user interface the system needs. Any interface standards or design style guides that are appropriate. Accessibility requirements would go here.

*5.2 Software interfaces* 

The connections between this software and other components, including applications, databases, operating systems, tools, libraries, websites etc. Service levels for response times, security controls and restrictions would go here.

*5.3 Hardware interfaces* 

Supported device types, data and control interactions with the hardware, hardware inputs and outputs.

*5.4 Communication interfaces* 

Email, web, network protocols if required to communicate.

***6. Quality Attributes***

*6.1 Usability* 

Ease of learning, use, avoidance of errors and recovery. Efficiency of actions, accessibility.

*6.2 Performance* 

Specific performance requirements for system operations.

*6.3 Security* 

Requirements related to security or privacy issues.

*6.4 Safety* 

Requirements concerned with the risk of loss, damage, or harm that could result from the software.

***7. Internationalization and Localization Requirements***

Any requirements around localization, currency, language issues, dates, addresses, spelling conventions etc. Also political and social issues, legal requirements. Should be reused across projects.

## Writing Good Requirements

(notes from chs 11 and 12)

Each requirement should be complete, correct, feasible, necessary, prioritized, unambiguous, and verifiable.

Collections of requirements should be complete, consistent, modifiable, and traceable.

There is no formulaic way to write excellent requirements. Two important goals to always bear in mind:

- Anyone who reads the requirement comes to the same interpretation as any other reader
- Each reader's interpretation matches the author's intended meaning

These outcomes are more important than using any particular style.

Requirements can be written from the pov of something the system does, or something the user can do. The styles can be intermingled: "The system shall...", "The user shall...". A generic template for a requirement (from the system pov) is:

> *[optional precondition] [optional trigger] the system shall [expected system response]*
*Mavin et al, EARS 2009*

For example: *If the requested item is found in stock, the system shall display a list of all outlets that currently have the item in stock*

See the next section of notes for more on the EARS syntax.

A generic template from the user pov is:

> *The [user class or actor name] shall be able to [do something] [to some object] [qualifying conditions, response time, or quality statement]*

*Alexander and Stevens, Writing Better Requirements, 2002*

An alternative would be: *The system shall [let/allow/permit/enable] the [user class] to [do something]*

For example: *The customer shall be able to reorder any item they have in the past by retrieving and editing the order details*.

### Writing style

Put the punchline first (the need/functionality), followed by any supporting details (rationale, origin, priority etc).

Including lists, tables, diagrams etc can help break up the monotonous flow of requirements and can be effective as a communication tool.

Write concisely in complete sentences, keep them and paragraphs short and direct. Avoid jargon, but keep the language appropriate to the user domain. Include a glossary for specialized, contested, or ambiguous terms.

It is conventional to use the keyword ***shall*** to describe some system capability. Some people object as it's unnatural. Sometimes requirements docs use a mix of *must, needs to, should* without clear distinction. Avoid this. Sometimes people use *shall* to mean required, *should* to mean desired, and *may* to mean optional. This is dangerous, risking confusion, use *shall* and assign explicit priority instead.

Write in the active voice to make responsibility explicit. Passive voice - "will be updated" - by who? what? can be ambiguous.

Avoid writing long paragraphs that cover multiple requirements. Distinguish requirements from background info. Words like "and", "or", "additionally", "also", "unless", "except", "but" in a requirement are alarm bells that you may have merged multiple requirements in one. Avoid "and/or" as a compound  altogether.

### Level of Detail

There's no single correct answer to the question "how detailed should our requirements be". They need to provide developers and testers enough detail to build the application, that can vary.

Include more detail when the work is being done for an external client; development or testing will be outsourced; team members are dispersed; testing will be based on requirements; accurate estimates are needed; traceability is important.

Factors pushing for less detail being necessary: work is being done internally; customers are extensively involved throughout development; developers have domain experience; precedents are available (application replacement); a package solution is being used.

Aim for a consistent level of granularity. Representation style can help. Rather than having individual statements for every keystroke (eg *The system shall interpret Ctrl+X as File Save*) include a table.

### Avoiding Ambiguity and Incompleteness

Use terms consistently and as defined in a glossary. Watch out for synonyms, pick a single term and use it consistently.

Avoid words like reasonably, generally, approximately, appropriately, usually, quickly etc, they are unverifiable and could be masking disagreement.

Avoid the *A/B* construct what does *the Delivery/Fulfillment team* mean? One team or two? Synonyms? Alternatives?

Watch for boundary issues around numerical ranges, eg "vacation requests of 5 to 10 days need manager approval".

Avoid negative requirements like *The system shall prevent the user from signing the contract if the contract is not in balance*. Instead rephrase as a positive: *The system shall permit the user to sign the contract only if the contract is in balance*.

Symmetrical operations are a common source of incomplete requirements. For example: *The user must be able to save the contract at any point during manual contract setup*. But what about retrieval? What about validation on save?

Compound logical statements can leave conditional branches undefined. For example: *If the Premium plan is not selected and proof of insurance is not provided, the customer should default to the Basic plan*. What about the other three possible scenarios?

Include likely exceptions. Eg on save, if the default is save with the same name, what if you can't?

See p. 214 for a big table of ambiguous phrases and improvements. and p. 217 for some before/after improvements.

### Information representations

There are a variety of visual ways to represent requirements information that can work together to give a full picture.

| Information Depicted | Representation Techniques |
| -------------------- | ------------------------- |
| System External Interfaces | [Context Diagrams](https://en.wikipedia.org/wiki/System_context_diagram); [Use Case Diagrams](https://en.wikipedia.org/wiki/Use_case_diagram); [Data Flow Diagrams](https://en.wikipedia.org/wiki/Data-flow_diagram); [Ecosystem map](https://servicedesigntools.org/tools/ecosystem-map); [Swim lanes](https://en.wikipedia.org/wiki/Swim_lane) |
| Business Process Flow | [Activity Diagrams](https://en.wikipedia.org/wiki/Activity_diagram); [Data Flow Diagrams](https://en.wikipedia.org/wiki/Data-flow_diagram); [Swim lanes](https://en.wikipedia.org/wiki/Swim_lane) |
| Data Definitions and Relations | [Entity-Relationship Diagrams](https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model); [Class Diagram](https://en.wikipedia.org/wiki/Class_diagram); [Data Dictionary](https://en.wikipedia.org/wiki/Data_dictionary) |
| System and Object States | [State Diagrams](https://en.wikipedia.org/wiki/State_diagram); [State tables](https://en.wikipedia.org/wiki/State-transition_table); [Event Response table](https://www.modernanalyst.com/Resources/Articles/tabid/115/ID/2932/Modeling-System-Events.aspx)|
| Complex Logic | [Decision Tree](https://en.wikipedia.org/wiki/Decision_tree); [Decision Table](https://en.wikipedia.org/wiki/Decision_table) |
| User Interfaces | [Dialogue Maps](https://medium.com/swlh/improve-the-user-experience-with-dialog-maps-f3b91a2b021); [Storyboards and wireframes](https://uxmag.com/articles/storyboarding-in-the-software-design-process); Prototypes |
| User Task Descriptions | [User Stories](https://en.wikipedia.org/wiki/User_story); [Swim lanes](https://en.wikipedia.org/wiki/Swim_lane) |
| Quality Attributes | Natural language (risky); [Planguage](https://www.modernanalyst.com/Resources/Articles/tabid/115/ID/2926/Specifying-Quality-Requirements-With-Planguage.aspx) |

See ch. 12 for examples and details of the different diagrams.

## Easy Approach to Requirements Syntax (EARS)

Notes from Mavin et al, 'EARS (Easy Approach to Requirements Syntax)', 2009.

### The Syntax

The syntactic ruleset outlined in the paper is as follows:

***1. Generic Syntax:*** `<optional preconditions> <optional trigger> the <system name> shall <system response>`

The syntax forces the author to separate the conditions in which the requirement can be invoked (preconditions), the event that initiates the requirement (trigger), and the necessary system behaviour (system response). The order of the clauses follows temporal logic.

The generic syntax is specialized into five types of requirement: ubiquitous; event-driven; unwanted behaviours; state-driven; and optional features.

***2. Ubiquitous Requirements:*** `The <system name> shall <system response>`

A ubiquitous requirement has no preconditions or trigger. It is always active, not invoked by an event detected at the system boundary or in response to a defined system state.

*Example:* "The control system shall prevent engine overspeed"

***3. Event-driven Requirements:*** `WHEN <optional preconditions> <trigger> the <system name> shall <system response>`

A requirement initiated only when a triggering event is detected at the system boundary. The keyword *when* is used to signify that the system response is only required when the stated event is detected.

*Example:* "When continuous ignition is commanded by the aircraft, the control system shall switch on continuous ignition"

***4. Unwanted Behaviours:*** `IF <optional preconditions> <trigger>, THEN the <system name> shall <system response>`

The syntax is derived from event-driven requirements. "Unwanted behaviour" is used to cover all situations that are undesirable - eg failures, disturbances, deviations from desired user behaviour. Given a special syntax because they are often missed from early requirements gathering so it is helpful to easily identify them.

*Example:* "If the computed airspeed fault flag is set, then the control system shall use the modelled airspeed"

***5. State-driven Requirements:*** `WHILE <in a specific state> the <system name> shall <system response>`

System response is required at all times the system is in the specified state. The keyword "during" can be substituted for "while" for readability, though semantics should be preserved.

*Example:* "While the aircraft is in-flight, the control system shall maintain engine fuel flow above XXlbs/sec"

***6. Optional Features:*** `WHERE <feature is included> the <system name> shall <system response>`

Applicable only in systems that include a particular feature and where the functionality only makes sense where the feature is included.

*Example:* "Where the control system includes an overspeed protection function, the control system shall test the availability of the overspeed protection function prior to aircraft dispatch"

The syntax does allow for complex statements to be built by multiple keywords, for example combining the state and event-driven keywords to form a compound requirement that responds to an input when in a given state.

### The Argument

The paper identifies a number of issues with requirements written in unconstrained natural language: ambiguity, vagueness, complexity, omission, duplication, wordiness, untestability, inappropriate implementation.

It then identifies issues with translating requirements into existing formal notations, including error introduction, training overhead, and language barriers between developers and stakeholders.

*Hypothesis:* "Introducing a small set of simple requirement structures would be an efficient and practical way to enhance the writing of high-level stakeholder requirements."

*Method:* A certification specification for engines was taken as a starting point. A group of engineers analysed the source text, breaking it down into constituent parts to isolate natural language requirements, and then rewriting those requirements in the syntax developed during the project (outlined above). The problems identified with NL requirements were tested against the results and comparisons drawn. 

*Results:* The output scored better. There were more, shorter individual requirements that were easier to test, implement, less ambiguous etc.

*Limitations:* The sample size was small, only 36 original requirements. The study was limited to high-level safety requirements. Some of the metrics, eg vagueness, can be subjective. Not all the issues were resolved, there was some residual ambiguity for example.

## Usability Engineering

Notes from Ferre et al, Usability Basics for Software Engineers, 2001

> [Usability is] the extent to which a product can be used by specified users to achieve specified goals with effectiveness, efficiency, and satisfaction in a specified context of use.

*ISO 9241, part 11*

Usability in this understanding is tied to specific conditions, needs, and users and requires defining levels of usability according to its constituent attributes (effectiveness, efficiency etc). ***Requirements Engineering*** defines the target usability level of an application in advance and ensures that the software developed reaches that level.

> [Requirements engineering]  is a process through which usability characteristics are specified, quantitatively and early in the development process, and measured throughout the process.

*Hix and Hartson, Developing User Interfaces, 1993*

Usability is not just limited to the UI, but should influence the whole system design. Eg if the user requires feedback while a long backend process is executing, you will need to design that backend process to push out feedback.

### Usability Attributes

Usability is too abstract a term to study directly, so it is usually divided into constituent parts. The importance of those parts, and usability goals, will differ between applications. the needs of a museum kiosk (learnability) are not those of a bank cashier's system.

The five usability attributes outlined in the paper are:

***1. Learnability:*** How easy is it to learn the main system functionality and gain proficiency to complete the job. This can be assessed by measuring the time a user spends working with the system before that user can complete certain tasks in the time it would take an expert to complete the same tasks. Important attribute for novice users, or systems like the museum kiosk with passing users.

***2. Efficiency:*** The number of tasks per unit of time that the user can perform using the system. Looking for the maximum speed of user task performance. The higher system usability is, the faster the user can perform the task and complete the job. Can be divided into subattributes like *performance in normal use* and *advanced feature usage*.

***3. User retention over time:*** It is critical for intermittent users to be able to use the system without climbing the same learning curve from scratch each time. This attribute reflects how the system works after a period of nonusage.

***4. Error rate:*** This contributes negatively to usability. It does not refer to system errors, but the number of errors the user makes while performing the task. Good usability implies a low error rate.

***5. Satisfaction:*** This quantifies a user's subjective impression of the system. Can be divided into subattributes like *first impressions*.

These attributes can conflict, eg learnabilty and efficiency influence each other negatively typically. This means you can't just sum the scores for an overall usability score, you have to set each attribute target individually.

### Usability Process

Often usability is treated like other testing processes and left to the end. This is wrong, a pure waterfall approach to development makes introducing usability techniques fairly impossible. The paper outlines a suggested usability process:

<!-- omit in toc -->
#### Phase One: Usability Analysis

First get to know the users and their needs, expectations, behaviours, responsibilities etc.

*User analysis:* Site visits, focus groups, surveys, derived data. Observe the users in their working environment, using the system to be replaced, or performing their tasks manually. Interview the users to understand their motivations. A structured way of doing this is *contextual inquiry*.

*Task analysis:*  Describes a set of techniques people use to get things done. A task is an activity that is meaningful to the user. Analyzing tasks can then drive and test UI design. Focusing on a small set of prioritized tasks helps rationalize development effort and prevent feature creep.

*Usability benchmarks:* Set usability benchmarks as quantitative usability goals, defined before system design begins. These are based on the five usability attributes. The benchmarks have to be calculable through a usability test or user satisfaction questionnaire. Takes task analysis as an input and bases the benchmarks around tasks specified in that analysis. Example usability specification table:

| Attribute | Measuring Instrument | Value to be Measured | Current Level | Worst Acceptable Level | Target Level | Best Possible Level | Observed Results |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Performance in Normal Use | "answer request task" | Length of time taken to successfully perform the task | 2m 53s | 2m 53s | 1m 30s | 50s | |
| First Impression | Questionnaire | Average Score (range [-2,2]) | - | 0 | 1 | 2 | |

<!-- omit in toc -->
#### Phase Two: Usability Design

A first attempt at a UI conceptual design.

*Conceptual design:* Define the basic user-system interaction, its context,  and the objects in the UI. Deliverables: typically paper prototypes and a spec describing the behaviour. The most important step. Recommended reading: *Norman, The Design of Everyday Things, 1990*.

*Visual design:* Define the UI's appearance. Deliverables: Prototypes for testing, exact spec of UI design, spec for any UI widgets. Recommended reading: *Cooper: About Face, 1995*, *Constantine and Lockwood, Software for Use, 1999*, *Mullet and Sano, Designing Visual Interfaces, 1994*.

<!-- omit in toc -->
#### Phase Three: Prototyping

Users understand tangible system prototypes much better than abstract specs.

At the beginning we might use paper mock ups, pencil drawings. Other techniques include 'Wizard of Oz' where a human responds to user requests; storyboarding, scenarios, design snapshots.

<!-- omit in toc -->
#### Phase Four: Usability Evaluation

Determine the current usability level and whether the design works. Involves:

*Usability Testing:* Testing with real users, in a controlled environment.

*Formative Assessment (Thinking aloud):* Ask the test participant to reason aloud while using the system. This is 'formative' assessment, as you go along, rather than simply 'summative' assessment at the end of the test.

*Heuristic Evaluation:* Expert feedback based on their own experience. Usually a shortcut before end user testing.

*Collaborative Usability Inspection:* A systematic examination of a finished system from the end-user's viewpoint. These typically uncover more usability defects than usability testing.

### Usability Principles (Nielsen)

Notes from Molich and Nielsen, 'Improving a Human Computer Dialogue', *Communications of the ACM*, 1990.

The same list is used in the 1989 paper mentioned in the video. Note that these aren't the principles discussed in the video, as discussed below.

The paper is based around a usability survey. As part of that survey the authors develop a checklist of usability considerations as follows:

- ***Simple and Natural Dialogue*** Dialogues should not contain irrelevant or rarely needed information. Information should appear in a natural and logical order.

- ***Speak the User's Language*** Dialogue should be expressed clearly in words, phrases and concepts familiar to the user.

- ***Minimize the User's Memory Load*** The user should not have to remember information from one part of the dialogue to the other. Instructions for use should be visible or easily retrievable. Complicated instructions should be simplified.

- ***Be Consistent*** Users should not have to wonder whether different words, situations, or actions mean the same thing. A particular system action  - where appropriate - should always be achievable by one particular user action.

- ***Provide Feedback*** The system should always keep the user informed as to what is going on by providing feedback.

- ***Provide Clearly Marked Exits*** A system should never capture users in situations that have no visible escape.

- ***Provide Shortcuts*** Features that make a system easy to learn can be cumbersome to experienced users. Clever shortcuts can cater to them

- ***Provide Good Error Messages*** Defensive, precise, and constructive. Never criticize the user and provide meaningful suggestions.

- ***Error Prevention*** Prevent user errors in the first place and design accordingly.

Note the principles in the paper don't line up with MYK's video. 

The usability principles in the video are taken from a revised set of 10 that Nielsen developed a few years later than the papers given as reading. MYK's list in the video is taken from these later principles discussed [here](https://www.nngroup.com/articles/ten-usability-heuristics/)

The academic paper is not in the library I don't think, so he cited an older version of the principles as reading instead.

In the video he mentions these updated principles:

- ***1. Visibility of system status*** [Full article](https://www.nngroup.com/articles/visibility-system-status/)

- ***2. Match between the system and the real world*** [Full article](https://www.nngroup.com/articles/match-system-real-world/)

- ***3. User Control and Freedom*** [Full article](https://www.nngroup.com/articles/user-control-and-freedom/)

- ***4. Maintain Consistency and Standards*** [Full article](https://www.nngroup.com/articles/consistency-and-standards/)

- ***5. Prevent User Errors*** [Full article](https://www.nngroup.com/articles/slips/)

- ***6. Recognition not Recall*** [Full article](https://www.nngroup.com/articles/recognition-and-recall/) 

- ***7. Flexibility and Efficiency of Use*** [Full article](https://www.nngroup.com/articles/flexibility-efficiency-heuristic/)

- ***8. Aesthetic and minimalist design*** [video explanation](https://www.nngroup.com/videos/less-is-more/)

- ***9. Help Users Recognize, Diagnose, and Recover from Errors*** [Error messaging advice](https://www.nngroup.com/articles/error-message-guidelines/)

- ***10. Provide Help and Documentation*** [Full article](https://www.nngroup.com/articles/help-and-documentation/)

## Usability Questionnaires


### The System Usability Scale (SUS)

Notes from Brooke, 'SUS -- a quick and dirty usability scale', 1996 and Brooke, 'SUS -- a retrospective'. Both available on researchgate.

SUS is a [Lickert scale](https://en.wikipedia.org/wiki/Likert_scale) designed to provide a quick and dirty survey method for assessing a system's usability. Users respond to the ten questions on a scale of 1 (strongly disagree) to 5 (strongly agree)

1. I think I would like to use this system frequently

2. I found the system unnecessarily complex

3. I thought the system was easy to use.

4. I think that I would need the support of a technical person to be able to use this system.

5. I found the various functions in this system were well integrated.

6. I thought there was too much inconsistency in this system.

7. I would imagine that most people would learn to use this system very quickly.

8. I found the system very cumbersome to use.

9. I felt very confident using the system.

10. I needed to learn a lot of things before I could get going with this system.

The responses are taken after use of the system and before debriefing or discussion.

Scores are calculated as follows:

- Each question will have a score contribution of 0 to 4.
- For questions 1,3,5,7,9 the score is the scale position minus one. 
- For questions 2,4,6,8,10 the score is five minus the scale position.
- Multiply the sum of scores by 2.5 for the overall value (between 0 and 100).

The questions alternate positive and negative sentiments to avoid response biases, especially as the questionnaire invites rapid responses.

The scores are adjusted to a 0-100 scale for marketing purposes. Consumers of the score are more likely to think it matters on a 0-100 scale than on a 10-50 scale.

There is a positive version of SUS, where all questions are phrased positively. Empirically this has not been found to increase biases and reliability is similar. It is argued the positive version reduces misunderstanding and mis-labelling.

### UMUX and UMUX-lite

Notes from Lewis et al, 'UMUX-Lite: When there's no time for the SUS', 2013.

UMUX is a four question survey claimed to be an adequate proxy for the ten question SUS. The questions are:

1. The system's capabilities meet my requirements.

2. Using this system is a frustrating experience.

3. This system is easy to use.

4. I have to spend too much time correcting things with this system.

Responses are given on a scale of 1 (strongly disagree) to 7 (strongly agree).

As an even shorter alternative, only the positive items can be used, as a UMUX-lite. Arguably the four item UMUX produces bidimensional results, mixed on the positive and negative scores. In the paper the UMUX and UMUX-lite were found, with a bit of statistical jiggling, to map pretty closely to the SUS score.

## Accessibility

Notes from MYK's lectures.

> [Usability is] the extent to which a system, product, or service can be used by specified users to achieve specified goals with effectiveness, efficiency and satisfaction in a specified context of use.

*IEEE Systems and Software Engineering Vocabulary, 3.4451*

> [Accessibility is] the extent to which products, systems, services, environments and facilities can be used by people from a population with the widest range of characteristics and capabilities to achieve a specified goal in a specified context of use.

*IEEE Vocab, 3.41*

So usability specifies a group, but accessibility targets the broadest range of users possible. Think of usability as a subset of accessibility.

A related definition from the legal requirements around public bodies' duties to make services accessible.

> [The] accessibility requirement means the requirement to make a website or mobile application accessible by making it perceivable, operable, understandable, and robust.

[*UK Statutory Instrument*](https://www.legislation.gov.uk/uksi/2018/952/contents/made) (see part I. 3)

So perceivable - can the user sense it (see it, hear it); operable - can a wide group operate the application; understandable - provide sufficient explanations as needed; robust - maybe 'consistent' would be better.

How many people are affected by problems that could lead to accessibility barriers? Government statistics of self-reported disabilities (ie "long standing illness, disability or impairment which causes substantial difficulty with day-to-day activities").

| Impairment | 2016/17 |
| ---------- | ------- |
| Mobility | 7.1 |
| Stamina/breathing/fatigue | 5.4 |
| Dexterity | 3.9 |
| Mental Health | 3.4 |
| Memory | 2.4 |
| Hearing | 2.1 |
| Vision | 1.7 |
| Learning | 2 |
| Social/behavioural | 1.1 |
| Other | 2.1 |

Figures all in millions. Trends are upwards. 

Memory might play in to app design - clear user interface tells user current state.

Bottom line, millions of people are affected by conditions that would affect application design.

### Accessibility for Web Development

In the context of web development, see the [MDN accessibility guides](https://developer.mozilla.org/en-US/docs/Web/Accessibility)

Think about:

- *visual impairments* Many users will use screen magnifiers - physical or software. Many will rely on screen readers. The WHO estimate 285 million people are visually impaired, 39 million are blind, and 246 million have low vision.

- *hearing impairments* Many users will rely on textual alternatives to audio content if available. WHO estimate 466 million people have hearing loss to a disabling level.

- *mobility impairments* Many disabilities concerning movement can affect users such that exact hand movements to control eg a mouse are impossible. Voice control or keyboard control (eg tab navigation) would be relied on. US estimates of 16% of adults have some mobility impairments.

- *cognitive impairments* There are a great variety of cognitive impairments that can affect users, such that they would encounter difficulty in understanding content, remembering tasks, or be confused by inconsistent page layouts.

Some general tips for cognitive accessibility:

- Deliver content in more than one way

- Make content easily understood, eg by using plain language standards

- Focus attention on important content and minimize distractions like adverts

- Keep page layout and navigation consistent

- Rely on standards for familiarity (like link highlighting)

- Divide complex processes into logical, discrete steps with progress indicators

- Make authentication as easy as possible without sacrificing security

- Make forms easy to complete with clear error messages and simple recovery

See the W3C's [accessibility guidelines] (https://www.w3.org/WAI/standards-guidelines/wcag/glance/) and [quick reference](https://www.w3.org/WAI/WCAG21/quickref/) for a lot more on this.

Other guidelines from MDN:

- Use [semantic html](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML). This will help screen readers. With [accessible tables](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML#accessible_data_tables); use the browser support for [UI controls](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML#ui_controls); provide [text alternatives](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML#text_alternatives) to image or other media.

- Make sure [links are accessible](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML#more_on_links). They are by default.

- [CSS guidance](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/CSS_and_JavaScript#css) examples include: text should contrast well with background; headings should stand out from body text; font sizes and spacing should aid readability. Examples of good forms, tables etc are provided.

- [JavaScript guidance](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/CSS_and_JavaScript#javascript). Don't generate your html with client JS if at all possible, save your shiny JS for the widget that needs it. Follow unobtrusive JS principles. Be wary of mouse-specific events, duplicate functionality with focus and blur events for keyboard users.

- Use the [WAI-ARIA](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/WAI-ARIA_basics) standard to provide additional semantics for screen readers where you cannot rely on native semantic html (eg legacy markup). The [full spec](https://www.w3.org/TR/wai-aria-1.1/) goes into detail on goals and format. Some examples include labelling non-semantic UI components eg buttons; labelling dynamic content; enabling auto-alert functionality to read out changes to specific nodes (eg forms).

- Create [accessible multimedia](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/Multimedia) eg custom controls to counter issues in html video players. Provide audio transcripts and video text tracks.

- For mobile, accessibility is pretty good, but make sure input is kept as simple as possible, interface works OK on touch, and the design is responsive. See more [here](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/Mobile) including mobile screen readers.
