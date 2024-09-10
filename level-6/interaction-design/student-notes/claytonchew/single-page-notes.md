## Topic 1: Design Process

### Introduction to the Course
- Design is iterative, formative, and interdisciplinary.
- Interaction Design aims to add value to people's lives through meaningful technology interactions.

### Interaction Design Concepts
- **Goal-oriented Design**: Focuses on achieving tasks effectively.
- **Scenario-oriented Design**: Considers the steps involved in achieving outcomes.
- **Story-oriented Design**: Considers user journeys and experiences.

### Design Terminology

1. **Affordances**: refers to possible actions that an actor can readily perceive.
2. **Metaphor**: visuals or symbols that represent something else by analogy or resemblance. Imagine trashcan.

### Five Dimensions of Interaction Design
1. **Words (1D)**: texts, labels - ensure clear language and consistency.
2. **Visual Representation (2D)**: graphical elements – consistent visuals aid understanding.
3. **Space & Proximity (3D)**: medium through which user interacts – proximity organizes information effectively.
4. **Time (4D)**: media, animation, state that changes with time – signposts/signify changes to prevent confusion.
5. **Behaviour (5D)**: how it reacts to user with users inputs, how does it works.

### History of Interaction Design
- Evolution from specialized to mainstream users.
- WIMP (Windows, Icons, Menus, Pointers) model popularized by Macintosh.

### Aims of Interaction Design
- Usability: Prioritize usability to avoid confusion.
- Be mindful of context and functionality overload.

### Introduction to User-Centered Design
- Iterative design process with explicit understanding of users, tasks, and environments; is driven and refined by user-centered evaluation; and addresses the whole user experience.
- Done in each phase of design process.
- Deliberate discomfort can enhance cultural experiences, i.e. theme parks.

### The Double Diamond Approach
- Two diamonds, each diverge and converge.
- 1st: Design the Right Thing
    - Diverge: Discovery – gather insight into user needs.
    - Converge: Define – decide what problem to fix.
- 2nd: Design the Thing Right
    - Diverge: Explore – explore/test possible solutions
    - Converge: Deliver – final solution

### Jobs to be Done (JTBD) Theory
- Focuses on fulfilling user needs and constraints.
- Designed to upgrade user experiences rather than products.

---

## Topic 2: Models

### Introduction to Models
- Constructs and thinking of a person, thing or system.
- Example, stickman is a model of a human being.

### Unified Modeling Language (UML)
- General-purpose visual modeling language
- Intended to provide a standard way to visualize the design of a system

### Spiral Model
- Iterative approach allowing incremental development and risk management
- **(1) Planning: objectives** and requirements are established
- **(2) Risk Analysis**: identifies potential risks and uncertainties
- **(3) Engineering**: actual development, product is designed, coded and tested
- **(4) Evaluation**: evaluate build product, results influence planning phase of next spiral to further refine and adjust

### Waterfall Model
- Sequential approach, suitable for projects with stable requirements
- Rigid structure, i.e. requirement gathering -> design -> implement -> testing -> go to start or maintenance
- Each steps converges towards the goal

### Modelling Users
- Akin to a computer – input, output and processing power.
- User – sensory inputs, motoric outputs and cognitive processing ability
- **Sensory Inputs**: eyes, ears, haptic feedback through body
- **Motoric Outputs**: manipulate physical objects, gestures, movements
- **Cognitive Processing**: generally has limited memory and processing capabilities

### Fitts's Law
- Allows to predict interaction time based on target size and distance.
- Shorter distance to target = faster, bigger target = faster
- Helps optimise touch targets and interface layout

### GOMS
- Analyse interaction with system using Goals (G), Operators (O), Methods (M), Selections (S)
- S --> {M1, M2, M3} --> G
- M = O1 -> O2 -> O3
- O = f(x)

### GOMS-KLM (Keystroke Level Model)
- Extension to GOMS, helps estimates time.
- O = K1 (keystroke) -> K2 (pointing) -> K3 (button press) -> ... -> Kn (system response time)

### Norman's Action Cycle
- **Gulf of Execution**: how well the users' actions on the system match up to their intentions.
- **Gulf of Evaluation**: How easy it is for the user to decide what to do next based on feedback from the system.
- **Seven Stages of Action**:
    - Goal Formation
        1. **Forming Goal**: does user have sufficient domain or task knowledge to form goal?
    - Execution Stage:
        2.  **Translate goal into unordered tasks**: does user have sufficient domain or task knowledge to formulate tasks?
        3. **Plan sequence of action**: does user have sufficient domain or task knowledge to formulate action sequence?
        4. **Execute the sequence of action**: Is it easy? Does action match up with system? 
    - Evaluation stage:
        5. **Perceive results**: Can user perceive system's state? Does system provide enough feedback?
        6. **Interpret outcome based on expectation**: Can user make sense of the feedback?
        7. **Evaluate what happened against what was intended**: Can user compare what happened with what they hope to achieve?

---

## Topic 3: Understanding Users

### Information We Need
- **User Tasks**: in order to achieve an outcome, user has to complete a task or sets of tasks
    - Identify tasks and their complex nature
    - Identify interaction possibilities on specific tasks
    - Consider user's perspective
    - Granular analysis of tasks, breakdown into detailed steps and stages
    - Consider different routes and tools to complete tasks
- **Environment and Other Systems**: environment has influence to user and tasks
    - consider impacts of the environment, i.e. touch screen device in rain can be challenging
    - designing for environmental context, i.e. adaptive backlighting for sunny conditions
    - adapt to environments, i.e. user covers PIN when using ATM for privacy
    - contextual implications, i.e. impolite to use phone during dinner
    - consider conformity to standards (legal, social and contextual standards)
- **Data**: data can help make valuable decisions
    - **Quantitative Data**: tells us about numerical representation of things.
        - Pros: 
            1. Can provide objective, reliable, and generalizable results.
            2. Can be analysed using statistical and mathematical methods
            3. Can be generalised to larger population
            4. Easier to compare
        - Cons:
            1. Lack of depth – doesn't provide insights into the "why".
            2. Less descriptive.
            3. May oversimplify or ignore meanings, motivations, emotions or experiences of participants
    - **Qualitative Data**: contextually-rich data about specific things, i.e. transcripts, video footages, rich accounts.
        - Pros:
            1. Richer, deeper and more detailed.
            2. More diverse
            3. Easier to gather
        - Cons:
            1. Difficult to compare
            2. Subjective and Inconsistent
            3. Harder to compare and analyse
            4. Hard to generalise to larger population, as it may be specific, unique or contextual
    - **Combining both approaches**: use both quantitative and qualitative is recommended. Leverage on each other's benefits.

### Data Collection
- **Interview**: One-To-One conversation
    - Advantages
        - **Real-time Expression**: enable participants to immediately express thoughts
        - **Flexible**: allows adaptability, explore interesting tangents raised by participants
    - Types:
        - **Unstructured Interviews**: Open-ended with no pre-defined list of questions. Ideal for early project stages when questions aren't clear.
        - **Structured Interviews**: Predefined list of questions and follows specific order. Allows for consistency and data comparison.
        - **Semi-Structured Interviews**: Balance between the two, has list of predefined questions but can probe further based on participant's response.
    - Tips:
        - **Avoid correction trap**: resist the urge to correct participants, it hinders interview process.
    - How to run an Interview:
        1. Choose the right type.
        2. Design clear questions, ensure it contributes to research goals
        3. Reflect after each interview, how it went and is adjustment needed for future interview
        4. Consider alternative to Interview and whether it is suitable.
        5. Choose participants who best represent your target users.
        6. Offer reimbursement for participant's time and effort
        7. Ensure comfort during interview
        8. Obtain consent for audio recording
        9. Take contemporaneous notes on important detail.
        10. Prioritise question, prepare to skip if time constraint arise.
        11. Offer participants that they can end interview at any time.
        12. Consider use of tools or props to spark conversations.
        13. Ice breaking – start interview with few non-invasive small talks.
- **Focus Group**: One-to-Many conversation
    - Advantages:
        - **Idea Generation**: can spark off ideas from collaborative discussion
        - **Common Consensus**: help identify shared opinions
        - **Efficient**: able to collect data from many participants in a single session
        - **Less Intimidating**: focus as a group rather than a single person.
    - Challenges:
        - **Groupthink**: opinions gradually converge, losing diversity of perspective.
        - **Loud dominant voices**: one or few person can dominate discussion, quieter participants not participating
        - **Required facilitation**: to provide all the chance to express views and manage dynamics.
    - Tips:
        - Be clear about logistic and arrangements
        - Use audio recording
        - Prepare list of questions to guide, have both necessary and nice-to-have questions.
        - Be prepared to adapt and manage on the fly
        - Ensure everyone gets an opportunity to share
        - Use tools or artifacts to manage dynamics of the group and avoid groupthink.
- **Questionnaires / Survey**
    - Advantages:
        - **Flexible**: Can collect both quantitative and qualitative data. Can adapt to research objectives.
        - **Standardisation**: Structured response, makes it easier to compare and analyse responses
        - **Efficient**: able to collect from large number of participants
        - **Scalable**: able to reach diverse groups
        - **Anonymity**: participants can remain anonymous, encouraging more honest and unbiased responses
    - Tips:
        - **Closed** vs **Open** Questions: consider and choose
        - Ensure questions is clear, unambiguous and unbiased.
        - Sequence of question should be logical and organised, to mantain engagement and prevent fatigue
        - Use Likert scales (score 1 to 5), use of odd number to give middle ground option if suitable, even number to have more decisive answer.
        - Ensure questions are designed to measure what is intended
- **Observation**: Observe people
    - Observing in their natural environment, like office, is valuable for collecting rich, real-world data.
    - Problems with this:
        - Hawthorne Effect: well-known phenomenon – refers to changes in behaviour or performance when individuals knows they are being observed.
        - Affects validity of data collected – may not represent natural or typical actions.
        - Leads to inaccurate or biased data
        - This is due to people become more self-conscious, anxious or motivated to perform better.
        - Confounding variables – experimental variable can introduced changed behaviour, i.e. putting a chair or observer's presence
        - Ethical considerations – informed consent, privacy, potential impacts; it is essential for participants to be comfortable
    - **Auto-ethnography**: Observe self
        - immerse yourself in real-life settings
        - engage in introspection to gain a deeper understanding of own patterns, behaviours and experiences
        - study own actions and interactions from personal and scientific perspectives
        - can provide rich data about owns actions, habits and daily routines.
        - can uncover subtle nuances and motivations that drive personal actions

### Existing Data
- **Desired Path**: refer to most efficient or preferred route, often deviates from designated or expected path.
- Using existing data:
    - Log Data: website analytics
        - provides insight into how user interacts with system
        - identify both positive and negative experiences
        - analyse exit points can be crucial
        - not context-rich, but can be valuable source for identifying trends and patterns
    - Review Pre-existing Products: competitors or own
        - get insights into what matters to users
        - extract features, both positive and negative
        - can be used to design new systems, by amalgamate most favourable features
- Understanding and analysing existing data can serve as foundation for designing new systems, by learning and avoid mistakes.
- Existing data can be used to validate assumptions.
- Efficient and practical way to inform design decisions.

---

## Topic 4: Starting Design

### Design Guidelines
- Guidelines and rules are used interchangeably, are more general in application yet flexible - useful to get us started.
- Schneiderman's Golden Rules
    1. **Consistency**: ensure uniformity in design of interfaces; maintain consistent look and feel throughout; encapsulate existing knowledge and practices to minimise confusion
    2. **Usability for All**: cater to both novice and experts, i.e. provide shortcuts for experts while still providing easy way to novice.
    3. **Feedback**: establish two-way interaction with user; system response, hover, responsive
    4. **Dialogue**: maintain on-going conversation; progress bar; provide assurances that system is functioning
    5. **Error Handling**: promote elegant failure by explaining errors; guide user to return to safe state; offer information on nature of errors to aid user
    6. **Reversibility**: allow to undo or reverse actions; i.e. undo / redo function; allow backtrack without disruption
    7. **Internal Locus of Control**: give user options and control over the system; prevent user from feeling helpless; empower user
    8. **Reduce Short-Term Memory Load**: minimise cognitive load; provide info in an iterative and staged manner; allow users to navigate without excessive memory demands

### Design Standard
- Standards are more formal and are high in authority, has specific applications.
- Exist in both the hardware and software domain.
- Crucial for safety and reliability; example: ISO13407/ISO 9241-210 are most common for UCD.
- Published by respected industry institutions, IEEE and ISO; provide common framework for practitioners ensuring consistency and optimal outcomes; examples: HTTP and HTML
- Challenges:
    - Standards can be rigid, limiting innovation and deviation from established procedures
    - Lack detailed information about specific application spaces or circumstances

### Design Patterns
- Focus on "what" tasks need to be accomplished within a specific context
- Encapsulate good design properties, serving as templates for achieving desired outcomes
- Borrowed from various fields – adoption ensures adherence to proven practices
- Benefits:
    - Easy and Efficient to achieve specific design goals
    - Task-oriented, emphasising the "what" than "why" – practical and easy to implement
    - Enable us to borrow successful techniques from existing examples
- Examples – drag and drop, breadcrumbs, "home" link on logo

### Information Architecture
- Refers to organisation and structuring of information in a meaningful way
- Strategies:
    - **LATCH technique**: simple and effective way to organise information that makes sense
        - **(L) Location**: organised based on geographic locations, i.e. subway map, diagram of human body
        - **(A) Alphabet**: alphabetical organisation, i.e. music library
        - **(T) Time**: organised chronologically, i.e. flowchart, dates
        - **(C) Category**: organised by on relationship they share, i.e. grocery store organise products
        - **(H) Hierarchy**: organised by ranks or importance, i.e. organisational chart
    - **Card Sorting**: involve users in defining and describing relationship with items
        - General Process:
            1. Users are given cards representing different pages or components of system
            2. Users then free to organise them that make sense to them
        - Types:
            - **Open** – flexible option, free to organise that makes sense to users, rename cards or make their own suggestion.
            - **Closed** – categories or labels are fixed, useful for understanding how users fit them into existing structure.
        - The goal is to improve labelling, grouping and organisation of information.
        - Best suited to organising content – i.e. grocery sites
        - Not suited for designing task-oriented systems – i.e. airline booking.

### Generating Requirements
- Process of collating data and highlight importance of transforming data into usable information.
- Three Levels of Representation (pyramid) – 
    - **Data (base)**: starting point, often rich, may have irrelevant or excessive data
    - **Information (mid)**: data converted to usable information, i.e. functional requirements (define functional elements of the system), technical specifications (hardware needs, display devices)
    - **Knowledge Management System (KMS)**: At some point, information may be used to create KMS, provide additional way to use data in more meaningful way
- Purpose of Requirements
    - **User Needs and Goals**: identify a set of needs and goals the user aims to achieve
    - **Aligning with User**: aligning with user needs leads to positive outcome.
    - **Ensure Inclusive Design**: considering users with different levels of experience, catering to diverse users (novice and expert)
    - **Measurable**: ensures they are robust, meaningful and formalised as a set of standards, allow to measure and verify success, and eventual convergence to goal over time 
- Formalising Requirements
    - Various formalisation strategies – UML, use cases and class diagrams
    - Traditionally often treated as checklist allowing for verification and validation by checking items off on completion
    - Types
        - **Functional Requirements**: focus on what system can do, emphasising action and achieving goals – centered around input and outputs
        - **Non-Functional Requirements**: focus on underlying architecture, system environment and quality aspects – usability and reliability addressing broader, high-level consideration
    - Capturing Requirements:
        - various techniques, use cases, interviews, observations, prototypes to capture user wants and needs
    - Requirements should be:
        - clear, structured and measurable, enabling verification against success criteria
        - specificity and granularity, not vague
    - Challenges:
        - can change over time, requiring adaptability
        - breaking down into small, iterative steps, helps manage changes

### Using Personas and Scenarios
- Remember the User: going back to UCD 
  (keeping users in mind)
    - **Overgeneralisation is bad** – can hinder designing for individual use cases, we should be respectful of individual differences and consider diverse user needs
    - **User Characteristics** – user can be experts, novices (or in between)
    - **Different Expectations** – user have different perception and expectation based on experience
    - **Universal Design** – by designing for small groups of people, we can extrapolate up; designing specific needs can lead to generalised solutions for larger group.
    - **Breadth vs Depth** – balancing breadth (considering wide range of users) and depth (addressing specific use case) is crucial
- **Ultimate goal** – to design system that encapsulate the needs, wants and desires of most users.
- **Personas**: a great way to think about users
    - Characterise a set of individuals – properties, characteristics, wants, needs and desires
    - Data Sources:
        - Can be drawn from data or analytics – usage and use cases
        - Surveys, questionnaires, observations, analytics from existing systems
    - Facilitate Better Design:
        - helps understand problems, challenges, needs of specific user groups
        - understand why certain groups are having positive experiences with the system
        - help focus on typical users in specific context and scenarios to enhance experiences
- **Scenarios**: bring personas to life!
    - Comprehensive understanding of users, scenarios and the wider context of use is crucial for making informed design decision.
    - Example:
        - Sally, a 38-year-old with two small children struggles to navigate a store with a double buggy.
        - **Not to do**: Remove door (affects other individuals)
        - **Solution**: Build wider aisles (benefits larger group facing similar challenges)
    - **Conflicting Objectives** – some user have conflicting needs or preference –> we may need to compromise, find alternative or conduct cost/benefit analysis to determine best solution.
    - **Embracing Complexity** – view complexity as an opportunity to create interesting and robust design


---

## Topic 5: Prototyping

### What is Prototyping
- Manifestation of a system, representing some version of it.
- Helps give us a sense of tangible elements of the system.
- **Fidelity** – ranging from 
    - **Low** (basic and minimal); to
    - **Medium** (some descriptive quality); to
    - **High** (full functionality with aesthetic components)
- **Low-fidelity**
    - are quick to produce, involve less time and cost.
    - Advantage – quickly exploring ideas, making changes and converging on better concepts.
- **High-fidelity**
    - closer approximation to final product
    - require more time and resources.
    - risky if starting it too early – making design assumption without validation can lead to wasted time and resources
- **Iterative Process**
    - Starts from low, gradually increase fidelity, validation assumptions along the way. (linear path in increasing fidelity)
    - Correct design assumptions helps prevents major revisions later.
- **Purpose** – serves as a tool for evidence-based reasoning, allowing designers to make informed decision. helps to design, get feedback and adapt (iterative way and continual improvement).
- **Types**
    - Paper Prototype – basic sketch of how system might look like.
        - ease of making changes, improvements and getting quick feedback
        - collaborative nature – able to involve multiple team members
        - adaptability and throwaway nature – valuable at early stage, ease of discarding
        - **challenges** – inability to represent complex gestures or animations
    - complex, interactive version of the things we build
- **Validating Prototypes** – i.e. through focus groups, interviews

### Prototyping User Journey
- consider the user journey and user experience when prototyping
- mapping user expectation with the system design
- Analysing Peaks and Troughs:
    - illustrate a user journey with stages, highs and lows
    - during prototyping, examine specific stages and identify what causes positive or negative experiences – make improvements accordingly

---

## Topic 6: Accessibility

### What is Accessibility
- Aims to make systems usable by everyone, inclusivity in design is crucial to minimize barriers to entry.
- **Considerations**
    - **Technical Constraints**, i.e. hardware limitation, internet connectivity
    - **Human Factors**, i.e. visual or cognitive impairments
    - Accessibility challenges vary based on context of use.
- **Impact of Poor Design**
    - Impose disabilities on users
    - Hinder users' abilities to interact effectively
- Common Strategies
    - **Design Best Practices** – adhering to convention ensure ease of use
    - **Clear Communication** – use accessible language minimises cognitive challenges, benefits users with diverse backgrounds and abilities

### Terminology in Accessibility
- Care must be taken when discussing about terminology to avoid offensive or restrictive language.
- How such language used can also be seen as not being inclusive, i.e. saying blind person excludes other visually impair persons. Better language example would be using "Low Vision"
- Languages used in discussing accessibility can change over time.
- Communities that we support can help us define things, or understand how we can use language better.
- Using clinical diagnosis can provide widely accepted terminology for specific attributes, it helps in creating inclusive and accessible language.

### Types of Accessibility
- **Temporal Accessibility**: temporary issues that are not permanent
    - Not resulted from long-lasting / permanent disabilities
    - **Example** – wearing headphones, which limits auditory perception
- **Long-Lasting Accessibility**: permanent issues 
    - Due to permanent disabilities
    - **Example** – bound to wheelchair
- **Design Considerations**
    - consider both of these cases being equally relevant
    - employ diverse formats or aids to accommodate various perceptions levels
    - provide alternative while not restrict access but enhance it
    - design inclusive systems addressing both long-lasting and temporary accessibility needs

### Accessibility Requirements
- **Legal Requirements vs. Ethical Considerations** – While legal obligations exist, ethical reasons for inclusivity are paramount – ensuring access for all users leads to better user experiences and broader reach.
- **Impact of Neglecting** – lead to exclusion of certain group.
- **Community Engagement** – involve diverse group in design process improves accessibility and usability.
- **Pragmatic Approach** – designing for smaller subset of users benefits broader user groups.
- **Scope of Accessibility** – affects more than a billion people globally, both permanent and temporary challenges.

### Web Content Accessibility Guidelines (WCAG)
- WCAG provide guidelines (fairly substantial) ensuring accessibility, with aim to design inclusive web experience
- **Background** – web landscape evolves rapidly, necessitate updated accessibility standards
- **Tools** – browser developers can help identify accessiblity barriers
- **Core Principles of WCAG** – POUR
    - **(P) Perceivability**: means user can identify content and interface elements by means of the senses.
    - **(O) Operability**: means user can successfully use controls, buttons, navigation, and other interactive elements.
    - **(U) Understandability**: users should be able to comprehend the content, and learn and remember how to use your site.
    - **(R) Robustness**: content must be robust enough that it can be interpreted reliably by a wide variety of users. ability to choose own technology to access content.
- Practical Consideration
    - design for various interaction styles – mouse, voice, assistive technology
    - css and javascript modification by tailoring the browsing experience to enhance accessibility

### Inclusive Design
- Design entails considering diverse user needs and experiences. Humans are diverse.
- Categories of Exclusion – **Long-Term** and **Short-Term** (injuries) or **Isolated incidents** (navigating unfamiliar environments). Exist on a spectrum.
- **Inclusive Design Process**
    - **Building In** (Outset)
        - design early in the process, involving users at every stage
    - **Bolting On** (Retrofitting)
        - happens in the end, often required drastic redevelopment
    - **Consultation**
        - spend time talking to users about their experience, past and present. design and test iteratively.
    - **Empathy**
        - putting yourself in user's shoes
    - **Challenge the norm**
        - consistently check things work in given context
        - ask questions and offer critique

### Assistive Technology
- Help to support people in interactive processes
- Tools
    - Visual Assistive Technologies – text-to-speech, magnification, colour filtering, tactile interaction (i.e. braille)
    - Hearing Assistive Technologies – hearing aids, innovative device (jaw-based headphone which offer alternative for hearing without covering ears)
    - Mobility Technologies – assist in movement and interaction, i.e prosthetics
    - Motor Control Solution – stylus, custom solution for wrist mobility
    - Cutting-Edge – brain-computer, wearable technology (fitbit), automation (kitchen appliances)

---

## Topic 7: Human Error

### Understanding Human Error in Design
- Errors are inevitable.
- **Factors** – memory limitation
- **Importance** – categorised based on impact and characteristics, aid in identify patterns

### Slip vs Mistakes
- **Definition of Error** – system fails to achieve the intended outcome of planned sequence of activities, whether mental or physical
- **Slips**
    - **Definition**: incorrect executive of a correct action sequence
    - **Example**: follow steps 1, 2, 3 but mistake happen in step 2, leading error in step 3
    - **Manifestation**: accidental and unintentional, due to mistyping, misinterpretation or momentary lapse
    - **Considerations**: can be complex, requires nuanced approaches, design for forgiveness and ease of correction to help mitigate
- **Mistakes**
    - **Definition**: correct execution of an incorrect sequence of actions
    - **Example**: deletes an item, later regrets.
    - **Manifestation**: results from flawed decision-making or inadequate understanding of the situation
    - **Consideration**: more straightforward to address, address through informative design, warning, signposts or prompts to reconsider action. 

### Fixing Slips
- Using Norman's Action Theory
    - Goal: Delete a file
    - Problem: Despite attempting, it remains unchanged.
    - Steps
        1. Observation: The screen doesn't change after attempted delete.
        2. Perception: Action did not produce expected outcome.
        3. Assessment: Concluding that nothing meaningful has occurred.
        4. Evaluation: Determine the need for an alternative approach to delete file.
        5. Intention: Decide to use the "Delete" key on keyboard as alternative.
        6. Plan: Select the file, press the delete key, in sequence
        7. Implementation: Perform planned action
        8. Feedback: Receiving feedback from system, either confirming success or error.
        9. Iteration: If desired outcome is not achieved, repeat cycle again until success or frustration occurs.

### Types of Slips
- Capture Slip
    - automatic activation of a familiar routine overrides current intentions (auto-pilot)
    - **Example** – driving to work is habitual
    - **Implication** – ensure systems prompt conscious decision-making to prevent autopilot behaviour.
- Description Error:
    - applying wrong task to a similar situation
    - quite similar to Perceptual Confusion but distinct.
- Perceptual Confusion Slip
    - applying incorrect mental schemas to similar (perceived) looking objects
    - **Example** – mistaking chilli sauce for eye drop
    - **Implication** – avoid overly similar design element to mitigate confusion
- Omission Slip
    - step in sequence omitted due to distraction or interruption
    - **Example** – forgetting an ingredient after a phone call
    - **Implication** – provide reminders or prompts to aid in task completion
- Repetition of Action
    - doing same task more than once
    - **Example** – did a form, forgot every did, did form again
- Loss of Activation
    - forgot original goal or objective, getting distracted
- Crosstalk (sequential)
    - switch steps between current and previous task
    - **Example**: information persist from previous task, interceded in current task.
- Crosstalk (Concurrent)
    - switch steps between two tasks
    - **Example**: writing email and having phone conversation

### Post Completion Errors
- post-completion error occurs when a goal has achieved, but issue arises after completion of task
- **Example** – ATM machine, after withdraw money, forgot take card.
- **Analysis** – error results from a lapse in memory for goal, attention shifts away after goal is accomplished.
- Implication – highlights the importance to consider the entire user journey and potential pitfalls
- **Addressing Post-Completion Errors**
    - Restructure sequence of steps in the task
        1. **Original Process:** Insert card -> enter pin -> withdraw cash -> retrieve card
        2. **Redesigned Process:** Insert card -> enter pin -> retrieve card -> withdraw cash
    -  Using Cues
        - serve as indicators, guide user and alert them, e.g. form validators with meaningful message or prompt for user confirmation
        - **Benefits** – prevent errors, improve task completion rates, reduce frustration and confusion
        - **Disadvantage** – overuse can lead to fatigue or annoyance

### Lockouts
- controversial technique – temporarily restrict access to system or process
- Benefits
    - in situation where users repeatedly make errors or fail to comply with instruction, encourage user to reconsider their actions and adhere to correct procedures
    - prevent user from engaging risky behaviour, i.e. brute-force password or bypass security measures
- Challenges
    - prolonged lockout periods may lead users to disengage from task or seek alternative

---

## Topic 8: Controlled Experiments

### What is an experiment
- systematic and scientific method for exploring (in interaction design)
    - concepts (validate assumptions)
    - hypotheses (test)
    - relationships between variables (insights)
- Anatomy of an Experiment
    - typically involves comparing variables or conditions to understand their effects on each other
    - structured processes designed to measure and analyse the relationship between independent and dependent variables
    - hypotheses guide experiments by predicting expected outcomes
- Types of Experiment
    - prove or disprove hypotheses, validate assumption or explore novel concepts
    - discovery-based experiment – focus on exploring scenarios and understanding complex interactions
- Considerations In Experiment Design:
    - should be rigorous and systematic
    - require control confounding variables to isolate effects of variables being studied
    - must measure, avoiding the influence of extraneous factors
- Rigor and Robustness
    - involves systematic procedures and controls, ensuring accurate and valid result
    - designed in a way that allows other to replicate and achieve consistent outcomes

### Making Hypothesis
- hypothesis testing crucial to evaluate the effectiveness of design changes and validate assumptions, 
- whether observed differences or effects are statically significant or occurred by chance
- Defining Hypotheses – state the expected relationship between variables
- Types of Hypothesis Testing
    - **Null Hypothesis** (H₀): Assumes no significant difference between variables or conditions – i.e. "no sig. difference in user efficiency between two website design"
    - **Alternative Hypothesis** (H₁): (opposite of null) Suggests a significant difference exists between variables or conditions – i.e. rejecting null hypothesis leads to accepting the alternative hypothesis.
- Significance Level and p-values
    - Significance Level (α) is typically set at 0.05 (5% chance of incorrectly rejecting the null hypothesis)
    - p-values represent the probability of observing the data if null hypothesis were true (lower p-value indicate stronger against null hypothesis)
    - p-value ≤ α – reject null hypothesis – significant difference.
    - p-value > α, accepts the null hypothesis – no significant difference.

### Designing a Controlled Experiment
- Choose Variables
    - Types
        - **Independent Variables** – variable that can be manipulated or change
        - **Dependent Variables** – outcome or variable that is affected by change of independent variables
    - Considerations
        - variables should be defined clear and specific
        - avoid introducing unnecessary complexity or overloading with multiple variables
- Choose Participants
    - Types
        - **Random Sampling** – selecting from population at random
            - reduce bias
            - requires using mathematical randomness rather than arbitrary methods
        - **Convenience Sampling** – selecting based on availability or accessibility
            - often used in educational settings
            - can introduce bias
        - **Purposive Sampling** – selecting based on specific culture or characteristics relevant to research question
            - represents population of interest effectively
            - useful for studying specific groups – experts, extreme characteristics
        - Other Sampling Techniques – quota sampling, stratified sampling and snowball sampling
    - Considerations
        - mindful of bias, both intentional and unintentional, can affect validity
- Design
    - Types
        - **Within-Subject Design** – all participate in all conditions, each go thru conditions in same sequence
            - **Benefits** – allow direct comparison across conditions
            - **Limitation** - susceptible to learning effects where participants improve in efficiency or understanding subsequent condition
            - **Alternative** – Randomisation can mitigate learning effects to some extent
        - **Between-Subject Design** – different participants assigned to different conditions, each experience only one condition
            - **Benefits** – eliminates risk of learning effects
            - **Limitation** – unable to directly compare performance across conditions

### Recording Variables
- HCI experiment often assess effectiveness and efficiency
- Data Collection Methods
    - **Traditional** – collecting metrics such as time and completion rates
    - **Novel Technologies** – eye tracking to measure focus and attention
    - **Electrodermal Activity** – measure galvanic skin response and heart rate, insights into physiological responses (stress, anxiety)
- Considerations
    - depends on study's objectives and intended analysis
    - leveraging diverse measurement methods and technologies can gain valuable insights

### Statistical Analysis
- Quantitative Data
    - numerical values or counts
    - **Example** – height and weight, categorical data
    - **Advantages** – easier to analyse and categorise
    - **Limitation** – lacks richness and descriptive quality
    - **Types of Data**
        - Nominal Data
            - categories, labels, without inherent order or significance
            - Examples – place of residence, gender
        - Ordinal Data
            - categories with clear order or ranking
            - Examples - finishing position, exam grades
        - Interval Data
            - intervals between successive points, no true zero point
            - Examples – temperature, IQ scores
        - Ratio Data
            - has true zero points
            - Examples – height, weight, age, time (seconds, minutes)
- Qualitative Data
    - descriptive accounts, narratives, observations
    - **Example** – transcripts, video footage, anecdotal evidence
    - **Advantages** – offers depth and context
    - **Limitation** – challenging to codify and analyse due to subjective nature
- Utilising Both Data Types
    - usually employs mixed methods
    - quantitative data used to quantify trends or patterns
    - cross-validate both source can enhance robustness of analyses and draw more meaningful conclusion

### Descriptive Statistics
- essential tools to summarise and analyse data
- helps identify outliers, understand data distributions, assess variability
- Common Descriptive Measures
    - **Mean**: average, summing all values and dividing by total number of observations – measure of central tendency
    - **Median**: middle value in a dataset, less affected by extreme value, provide robust measure of central tendency
    - **Mode**: value happens most frequently in the dataset
    - **Other descriptive measures** – percentiles, ranges, standard deviation, variance

### Inferential Statistics
- draw conclusions about general population from sample data
- allows to extrapolate beyond available data to fill in missing information or predict outcomes
- Common Techniques – Hypothesis Testing, Variance Analysis, Regression Modelling
- Advantages over Descriptive Statistics
    - able to draw deeper insights and conclusions
    - make predictions, assess relationships

---

## Topic 9: Late Stage Evaluation

### Late Stage Evaluation
- involves assessing a nearly finished product to reflect on its effectiveness and identify areas for improvements
- using evidence-based reasoning and multiple techniques
- **Importance**
    - identify design flaws
    - assessing user satisfaction
    - ensuring final product meets users need and expectation
- **Iterative Improvement Process**
    - is part of iterative improvement
    - continuous feedback and refinement leads to converging on design goals and overall quality over time
- **Key Questions for Evaluation**
    - **Basic Functionality** – does it work?
    - **Utility and Efficiency** – can users perform efficiently and enjoyably?
    - **Room for Growth** – where can it improve? is there potential for enhancement?
- **Challenges**
    - has less room for major changes
    - becomes context-driven, considering interconnections between different elements of the system
- Types of Evaluation
    - **A/B Testing**
        - evidence-based reasoning technique for evaluating small elements systematically
        - involves making minor variations, having users sample the variations and analysing impacts
    - **Think Aloud**
        - involves users verbalising their thoughts while interacting
        - Benefits
            - can result in rich qualitative data
            - ability to uncover hidden issues
            - uncover complex cognitive processes and challenges users face
        - Challenges
            - can be mentally exhausting for users
            - challenging to encourage users to verbalise their thoughts
        - Mitigating Challenges
            - record the session and have users provide commentary
            - provide clear and concise instruction help alleviate stress
    - **Cognitive Walkthroughs**
        - assess the learnability and memorability of systems with the need for user testing
        - **Benefits**
            - no requirements for users – no need to recruit
            - task-oriented focus – well-suited for evaluating specific tasks
            - lightweight and quick feedback – ability to provide rapid and actionable insights
        - **Running a Cognitive Walkthrough**
            1. evaluator assumes the role of user
            2. systematically walks through the system, imagine action and response of typical user
            3. each step is analysed, considering the state of system and how user action affects system behaviour
        - **Disadvantages / Challenges**
            - can be difficult for evaluators to recognise potential usability challenges with limited experience
            - while suitable for linear tasks, may not be suitable for complex non-linear or immersive experience
            - can be inherently biased
            - can be time-consuming and labor-intensive to analyse each step and potential interaction
        - **Designing a Cognitive Walkthrough**
            - Preparation
                - Identify tasks – ensure reflect real user needs
                - Utilise personas – use personas to understand user characteristics and tailor accordingly
            - Execution
                - focus on sequential actions and outcome
                - assess the flow of tasks and interactions
                - consider how changes in system state impact progression
            - Collaborate
                - involve stakeholders and evaluators with diverse background to gain varied insights and perspective
            - Note-taking
                - record observations and issues during walkthrough
        - **Evaluation Criteria**
            - **Match between Expectations and Reality** – is user expectations aligns with system behaviour
            - **Clarity of Next Steps** – can user intuitively understand next action?
            - **Meaningful interaction feedback** – does each interaction results in meaningful feedback?
            - **Visibility of Progress** – does it has visual cues like progress bar to indicate advancement?
        - **Standardising Feedback**
            - Yes/No Criteria – establish clear criteria for evaluation
            - Reflection – identify areas for improvement
    - **Heuristic Evaluation**
        - powerful technique for assessing design usability based on established principles or heuristics, i.e. Jakob's Law
        - **Advantages**
            - Lightweight and cost-effective
            - Experts from various domain can participate
            - Flexibility – can be applied at various stages of design process
        - **Challenges**
            - **Domain Expertise Bias**: Evaluators with specific domain knowledge may identify more issues compared to non-experts – potentially skew evaluation results
            - **Limited Rigor**: Lacks the systematic rigor of experimental designs like A/B testing and multivariate testing, less comprehensive in pinpointing specific issue
            - **Expert Availability**: Recruit experts can be challenging and expensive. However, training domain experts can be cost-effective.
        - **Overcoming Challenges**
            - **Multiple Evaluators**: Involving diverse evaluations with varying background can help uncover wider range of issues and mitigate bias
            - **Contextual Consideration**: Recognise inherent limitation of heuristic evaluation, supplement with other evaluation methods for comprehensive insights.
        - **Running a Heuristic Evaluation**
            - **Variety of Techniques**: Identify various techniques developed by different experts – Jakob Nielsen, Donald Norman, Ben Shneiderman.
            - **Contextual Specificity**: tailor to particular domain or specialised systems or can be more generalised.
            - **Scope Definition**: Define specific elements or aspects of a system rather than evaluating the entire system at once to manage time and resources
            - **Criteria Selection**: Established clear evaluation criteria.
            - **Recruit and Train**: Recruit evaluators based on expertise or provide training to ensure standardised evaluation process
            - **Evaluation Process**:
                - **Identify Issue** – explore the system, note instances where design feature deviates from established heuristics
                - **Implication Analysis** – consider the implications of identified issues
                - **Document Feedback** – document and categorise based on severity – red, amber, yellow, green.
                - **Prioritise**: prioritise issue based on severity.

---

## Topic 10: Affective Computing and Social Interaction & The future of Interaction Design

### Huh? Affective?
- focuses on understanding human emotions and how it can be used to designing interactive experiences
- Interaction Paradigm
    - Bi-Directional Interaction – recognising users' emotional state, responding to it can create positive and engaging interactions
- Measuring Emotions
    - Facial Expression – computer vision technique can analyse facial expression to infer emotional state
    - Physiological Responses – measuring sweating or changes in voice can indicate emotional arousal, galvanic skin response capture physiological reactions
    - Data Collection – gathering various data points, produce comprehensive understanding of user emotions
- Challenges
    - Subjectivity – complex and subjective, human responds differently
    - Multi-Faceted Reactions – emotional responses from human can vary widely.
- Usage
    - Enhancing Experience – use to design more adaptive and personalised experience
    - Expressive Interface – convey emotions through various mechanism allow for richer and engaging interactions
    - Improve Understanding – aid in understanding emotions, foster better communication and emphathy

### Social Computing
- diverse array of technologies and platforms aims at facilitating social interactions and communications among users
- modern advancements enables communication beyond text-based platforms, fosters the formation of online communities on shared interest
- Focus
    - resolves around conversational dynamics
    - emphasise on user engagement in dialogue and information exchange
    - organically emerge communities
- Opportunities
    - augment social interactions
    - facilitating communications
    - fost collaborations
    - proliferation of user-generated contents
- Computer-Mediated-Communication (CMC)
    - the intricacies of how technology facilitates interactions between individuals
    - requires various conventions and modalities to convey message effectively, unlike face-to-face interactions
    - Conventions
        - Social conventions, such as liking post or using abbreviations – LOL, GG
        - Emojis – visual cues to augment textual communication, enabling users to express sentiments and reactions more vividly
    - Key Design Features
        - Content Creation and Interaction – encourage users to share content, engage with others and participate actively
        - User Engagement – employs various tactics, i.e. prompts, notifications and interactive elements, to prompt users to contribute and interact
        - Data Collection & Profiling – behind the scenes, collects user data, to tailor contents and advertisement
    - Positive Aspects
        - Facilitate communication, collaboration and community-building
        - Connect with others globally, sharing experience and interest
        - Offers diverse opportunities for engagement, events and media sharing
    - Negative Aspects
        - Pressure to share – inadvertently promote sense of obligation or pressure to share or maintain certain online persona
        - Online Trolling – anonymity and accessibility led to increase online trolling and harassment
        - Dark Design Patterns – employ deceptive or manipulative design tactics to encourage user engagement or extract sensitive information
        - Nefarious Activities – can harbor nefarious communities and illegal activities.
    - Addressing Ethical Concern
        - critically assess the implications of the platform, prioritise user well-being and privacy.
        - implement transparency, user control features and robust data protection measures

### Crowdsourcing and Remote Working
- collective efforts of individuals worldwide to contribute various endeavors
- harnessing collective intelligence and efforts of individuals worldwide
- democratize access to information
- Examples
    - SciStarter - connecting individuals with citizen science projects
        - Features - explore and join various projects across different domains
        - Implication – democratising access to scientific endeavors
    - CAPTCHA Technologies – primarily used for distinguishing human from bots, but also serve as data collection tools and training datasets for ML
        - Usage – image labeling and selection helps generate valuable data in text corpus generation, image recognition and behavioral analysis
        - Implication - incorporation of data into ML applications through crowdsource contribution
    - Crowdsource Research Studies – leverage crowdsource like Prolific Academic and Amazon Mechanical Turk to recruit participants for studies
        - Benefits – access to diverse participant demographics, enabling rich data and insights
        - Consideration - must establish criteria and controls to ensure data quality, maintaining rigor and validity.
    - Wikipedia – collaborative knowledge creation
        - Features – open editing model encourages active participation from expert to enthusiasts
        - Impact – democratise access to information
    - OpenStreetMap – community-driven mapping
        - Purpose – provide collaborative platform for mapping and geospatial data collection, alternative to proprietary mapping services
        - Features – users can contribute data, i.e. GPS traces and point of interest and up-to-date maps
        - Usage – fuels urban planning, transportation management, disaster response and community development efforts.
