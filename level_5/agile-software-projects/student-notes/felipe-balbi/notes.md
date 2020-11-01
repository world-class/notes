
# Table of Contents

1.  [Week 1](#org1562a4e)
    1.  [1.01 Module introduction](#org413fc40)
    2.  [1.07 The basics of interaction design](#org4146816)
    3.  [1.101 What is a project? What do we mean by ‘manage&rsquo;?](#org613bcf0)
2.  [Week 2](#org6fd9b47)
    1.  [1.301 Tracking progress, Gantt charts, managing resources and time](#org011ade9)
    2.  [1.305 Version control systems](#org28c4fcd)
    3.  [1.401 The process of interaction design](#org414a497)
3.  [Week 3](#org6b7b8e3)
    1.  [2.01 Introduction to requirements and specification](#org29b41f8)
    2.  [2.101 Purpose of gathering requirements](#org4ba0e75)
    3.  [2.102 Introduction to requirements gathering](#org8394e0f)
    4.  [2.201 Modelling requirements](#org336ee7c)
4.  [Week 4](#orgbdb4ffb)
    1.  [2.301 User-centred design](#org1c00007)
5.  [Week 5](#org4341b86)
    1.  [3.01 What is research?](#orgf1ab01b)
    2.  [3.101 Understanding the differences between quantitative and qualitative research](#orga60f447)
    3.  [3.102 Introduction to research methods](#org001f6c9)
    4.  [3.201 Identifying useful sources of information](#orgfbab818)
    5.  [3.202 Team activity and deliverable: doing prerequisite investigation](#org1f8975d)
6.  [Week 6](#org5804c96)
    1.  [3.301 How to analyse the competition and place your ‘solution’ in a space](#org0538996)
    2.  [3.302 SWOT analysis](#org7e7128c)
    3.  [Alternative models](#orgc64d434)
7.  [Week 7](#orgedd49b9)
    1.  [4.01 User-centred design in a nutshell](#org06fb751)
    2.  [4.03 Design and prototyping](#orgb73f277)
    3.  [4.101 Why ‘user-friendliness’ is a false metric](#org0d4a014)
    4.  [4.102 Introduction to user-centred design](#org8381677)
    5.  [4.201 Test early, test often, iterate](#org7e66117)
    6.  [4.202 Heuristics for design](#org85ee240)



<a id="org1562a4e"></a>

# Week 1

Key Concepts

-   Describe events and sequences of actions in a coherent manner.
-   Manage risk.
-   Manage assets and resources.


<a id="org413fc40"></a>

## 1.01 Module introduction

During this course we will study processes involved in Engineering
Software.


<a id="org4146816"></a>

## 1.07 The basics of interaction design

The following reading provides a good introduction to interaction
design:

Sharp, H., J. Preece and Y. Rogers Interaction design: beyond
human-computer interaction. (Indianapolis, IN: John Wiley and Sons
Inc, 2019) Chapter 1 What is Interaction Design, pp.1–34.

Available [here](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446).


<a id="org613bcf0"></a>

## 1.101 What is a project? What do we mean by ‘manage&rsquo;?

Software Project refers to a deliverable component, something we
use.

Software needs to be designed considering the different
manifestations of computers. For example, computers may have
different CPUs, memory size, IP addresses, languages, etc.

Considering the origins of what we consider the modern internet
were built and implement in the 1960s, how is the same technology
still working today?

We can think of the core standards taht enable internet
connectivity as being successful in delivering what is referred to
as a *Minimum Viable Product*, MVP for short.

The Internet is a great example of a successful project, both in
terms of doing what it was supposed to do and supporting
scalability to a massive degree.

One way to ensure a project is successful by its completion, is to
think about our end-users or stakeholders. A simple way to do this
is to consider what our users might be trying to achieve while
using our software.

It&rsquo;s important to consider how we will define our goals for our
intended systems and plan our actions according to our intent. It&rsquo;s
easy to take a small idea and grow it beyond the scope of what
resources we have available, whether that be our budget or
timescale or technical capacity.

This can be a simplified way to think about our project as a trade
off between three different agendas:

-   **Functionality:** The features provided would dictate our design;
-   **Resources:** A project with an infinite number of posibilities or
    permutations, one would need an infinite number of resources to
    build it;
-   **Time:** Projects must have a start and end date. A plan is built
    around this time budget to ensure the project is delivered at the
    correct date.


<a id="org6fd9b47"></a>

# Week 2

Key Concepts

-   Describe events and sequences of actions in a coherent manner.
-   Manage risk.
-   Manage assets and resources.


<a id="org011ade9"></a>

## 1.301 Tracking progress, Gantt charts, managing resources and time

How can we track our progress as we go? We would like to ascertain
where about we are in our process and know what we need to do to
complete certain steps.

Our aims and objectives provide a framing for our goals as they
give us an opportunity to define things at a high level. However,
we have lots of small elements we&rsquo;re working on all the time.

We need to ensure all these small elements are tracked against the
bigger goals. Moreover, our smaller goals is what we&rsquo;re really
interested in while progress tracking because we work on small
increments to achieve a longer goal.

To track progress, there are many tools one might use:

-   Content Management Systems
-   Version Control Systems
-   Divide by process
-   Divide by projects/deliverables
-   Holding regular meetings
-   Integrated tools use as VSCode, Trello, Basecamp, Slack (or a
    combination)

While the specific tool to be used is a free choice, one thing to
remember is that *Failure to plan is planning to fail*.

We must be vigilant against **feature creep**, where the requirements
and scope increase over time. We should also consider dependent
processes and the impact that certain steps will have on other
moving parts.

[Gantt Charts](https://en.wikipedia.org/wiki/Gantt_chart) are a good way to think about a linear breakdown of
a project. They include milestones that define important points in
a project&rsquo;s lifetime. Usually, tasks in Gantt Charts are linked to
their relevant resources and dependencies.

Within a Gantt Chart, we can also embed a **critical path**, which is
a route from start to finish that explores the manifestation of a
project.

A Gantt Chart looks like the table below:

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

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Step</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">H:M:D</th>
<th scope="col" class="org-left">H:M:D</th>
<th scope="col" class="org-left">H:M:D</th>
<th scope="col" class="org-left">H:M:D</th>
<th scope="col" class="org-left">H:M:D</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Step 1</td>
<td class="org-left">Sub Step 1.1</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 1.2</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 1.3</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 1.4</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 1.5</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Step 2</td>
<td class="org-left">Sub Step 2.1</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 2.2</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\green</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 2.3</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\yellow</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 2.4</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\yellow</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 2.5</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\red</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 2.6</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\red</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Step 3</td>
<td class="org-left">Sub Step 3.1</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\red</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Sub Step 3.2</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">\red</td>
</tr>
</tbody>
</table>

In terms of the critical path, we should consider the project in
relation to:

-   All the activities necessary to complete the project
-   Timescaled steps for each state
-   Relationship between states
-   Critical endpoints where a certain state **must** be reached

The critical path is, of course, an estimate. Unexpected events may
occur that change the path of the project or prevent completion of
a milestone. One thing we can do, is build a contingency plan in
our model, which could mean taking a different approach if
something happens that prevents us from completing the original
path.

We should also consider adding what&rsquo;s called **Float Time** to the
critical path. This will help us build robust timelines where
variants can occur. Ideally, we want to start on a process as soon
as we can, so if we complete a task sooner than expected, we can
move on to other tasks.

We might want to allocate an individual to track the process to
ensure accountability.


<a id="org28c4fcd"></a>

## 1.305 Version control systems

Identify each of the commands that you saw in the interactive
plugin. You should find and read about each one of these commands
at the following location:

<https://git-scm.com/docs>


<a id="org414a497"></a>

## 1.401 The process of interaction design

Read Sharp, H., J. Preece and Y. Rogers [Interaction design: beyond
human-computer interaction](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446). (Indianapolis, IN: John Wiley and Sons
Inc, 2019) pp.37–55.


<a id="org6b7b8e3"></a>

# Week 3

Key Concepts

-   Consider the wider implications of building a system for purpose.
-   Explore formal specifications from both a functional and technical
    perspective.
-   Identify key stakeholders, challenges, risks and innovations.


<a id="org29b41f8"></a>

## 2.01 Introduction to requirements and specification

Requirements vary depending on the target audience. While an
average person may require around 2000 Calories per day, a
competitive power lifter may require substantially more. When
thinking about requirements, we need to consider the broad spectrum
of possibilities.

In the case of systems, we generally describe actions in the form
of use cases. We assume a user wants to achieve something with our
product and consider the steps necessary to achieve that goal. We
also think about which steps or tasks are more important than
other, which can be deferred or cancelled.

We need to consider all these details in order to provoke further
considerations.

One way to define requirements is as a need or desired outcome for
or from a system. If we&rsquo;re designing a payment system, it may be
required to process transactions or accept certain payment methods.

Requirements can be specified using formal documentation with a
discernible outcome. In order to write these, we must first a good
formal understanding of what we&rsquo;re trying to achieve, only then can
we specify requirements in a measurable manner.

The process that underpins this is referred to as
Specification. One way to create specification is through modelling
techniques such as UML, or Unified Modelling Language.

UML offers several benefits for specifying systems. For example, we
get a visual representation of the relationships between entities
or objects within our system.

UML has several types of diagrams, for example Use Case Diagrams
and Class Diagrams, which are the most commonly used.


<a id="org4ba0e75"></a>

## 2.101 Purpose of gathering requirements

Gathering requirements helps us understand the scope of the
project. Moreover, requirements help us with:

-   specifying things that can be measured and tracked
-   keeping all stakeholders in the loop
-   formalising contracts and legal obligations
-   defining complex relationships and systems in a meaninful way

In terms of specifications, there are two main categories:

-   **Functional:** concerned with the ability to perform certain
    actions
-   **Technical:** concerned with the manifestation of a system to
    achieve said outcomes

Both types of specifications describe a set of actions, intentions,
systems and outcomes.


<a id="org8394e0f"></a>

## 2.102 Introduction to requirements gathering

Read Sharp, H., J. Preece and Y. Rogers [Interaction design: beyond
human-computer interaction](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446). (Indianapolis, IN: John Wiley and Sons
Inc, 2019) chapter 11 pp.385–418.


<a id="org336ee7c"></a>

## 2.201 Modelling requirements

Use Cases define a set of actions necessary to achieve a goal. This
goal is describe as a **main success scenario**. A user wants to
achieve something and follows a set of steps.

There are many ways to describe use cases, but in general they
representations with a series of systems and how users engage with
those parts of the systems at different levels.

Class Diagrams, on the other hand, describe classes or
objects. They capture the classes&rsquo; attributes and/or operations.

These are very good for defining relationships between objects in a
system and some explicit structure. They can also describe
depedencies and abstraction.


<a id="orgbdb4ffb"></a>

# Week 4

Key Concepts

-   Consider the wider implications of building a system for purpose.
-   Explore formal specifications from both a functional and technical
    perspective.
-   Identify key stakeholders, challenges, risks and innovations.


<a id="org1c00007"></a>

## 2.301 User-centred design

[User-Centered Design or UCD](https://en.wikipedia.org/wiki/User-centered_design) is a framework of processes where
usability goals, user characteristics, environment, tasks and
workflow of a product, service or process are given attention at
each stage of the design process. The main concern is with what a
given user wants to achieve with our system and the means by which
they intend to achieve that.

UCD is a cyclic process. We don&rsquo;t specify some requirement and
carry on with development without thought or care. Instead, our aim
is to constantly refine our designs and developments in relation to
feedback from the users; including processes such as regular
stakeholder meetings, testing and feedback.

There are a number of stages involved in User-Centered Design
process, we may start by identifying a want or need that a user
has. Once we&rsquo;re happy with our ideas, we can begin designing
through a range of fidelities from sketches to interactive
prototypes.

What we&rsquo;re really doing here is a series of iterative steps. Based
on user feedback, we refine our design also considering the broader
implications in terms of universal design and in terms of
accessible design.

During this process, there are some common mistakes we want to
avoid:

-   **Wrong Assumptions:** we can&rsquo;t make assumptions about what our
    users want, need or what their experience might be. Empirical
    methods will help guide the work and provide quality metrics for
    measuring success. *Test early and test often*
-   **Planning too far into the future:** we are unable to consider
    everything from the start. Instead, we can follow a process that
    allows us to adapt to changes in our ecosystem.

We should try to begin with robust requirements:

-   Context of use
    -   Intenttions, goals
    -   Stakeholders
    -   Market forces
-   Constraints and mitigating factors
    -   Mandated constraints
    -   Conventions and formal processes
    -   Knowns and assumptions
-   Scoping
    -   The scope of the work
    -   The scope of the product
    -   Functional and data requirements
    -   Minimum viable product

For each of our design choices, we should consider its impact in
terms of:

-   Aesthetics
-   Usability and accessiblity
-   Performance
-   Operational
-   Maintainability and support
-   Security
-   Cultural
-   Political
-   Legal
-   Ethical
-   Social

Projects may fail and we should remain conscious of project
pitfalls:

-   Risks
-   Costs
-   Documentation and training


<a id="org4341b86"></a>

# Week 5

Key Concepts

-   Identify interesting and valuable sources of information
-   Make decisions based around research findings
-   Consider the wider implications of building a system for purpose.


<a id="orgf1ab01b"></a>

## 3.01 What is research?

We use research methods to explore the contextual implications for
the design and development of our software applications.

The goal is to build an application that adds efficiency and
utility to a given workflow, therefore we must define what
**efficiency** and **utility** mean.

We may want to consider similar products and services that exist in
the market in order to design a product or service that adds value
to our customers.

Research is a systematic investigation into something
unknown. During research, we aim to build knowledge or insights
that relate to our area of application.

Research explores our understanding of a given space in relation to
a number of factors. We tend to focus on things we can measure to
determine their effects on other things.

We aim at isolating variables as best we can in order to avoid
confounding factors that may impact our findings. We have to ensure
that our research is robust and meaningful to our research agenda.

Research also has a **validity** associated with it. This can tell us
whether or not we are measuring what we say we are measuring.

Another important topic is that of **reliability**. We want to ensure
our results have meaning from the context of experimentation.


<a id="orga60f447"></a>

## 3.101 Understanding the differences between quantitative and qualitative research

There are two main types of research:

-   **Quantitative:** explores measures, often relying on mathematical
    models and tools such as statistics. Tends to focus on **what** is
    happening, **who** is involved, **where** it&rsquo;s happening, **when** it&rsquo;s
    happening and so on

-   **Qualitative:** focuses on dynamic realities such as emergent
    themes and behaviors. Often focuses on **how** and **why** things are
    happening


<a id="org001f6c9"></a>

## 3.102 Introduction to research methods

-   Read Sharp, H., J. Preece and Y. Rogers [Interaction design:
    beyond human-computer interaction](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446). (Indianapolis, IN: John Wiley
    and Sons Inc, 2019) chapters 8 and 9 pp.259–34.2


<a id="orgfbab818"></a>

## 3.201 Identifying useful sources of information

-   **Newspapers:** generally a good source of information, however
    most publications probably <span class="underline">do</span> have some intrinsic bias.
-   **Books:** consider the publisher, publication method, reviews,
    suggests (e.g. from educators)
-   **Social Media:** could be anything from very good to very bad
-   **Peer Reviewed Sources:** High barrier to entry for
    publication. In general the process improves quality
-   **Data:** even data can be biased. The method used for sampling may
    impose biases


<a id="org1f8975d"></a>

## 3.202 Team activity and deliverable: doing prerequisite investigation

-   Department for Education [Realising the potential of technology in
    education: A strategy for education providers and the technology
    industry](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/791931/DfE-Education_Technology_Strategy.pdf). (2019).


<a id="org5804c96"></a>

# Week 6

Key Concepts

-   Consider the wider implications of building a system for purpose.
-   Identify interesting and valuable sources of information
-   Make decisions based around research findings


<a id="org0538996"></a>

## 3.301 How to analyse the competition and place your ‘solution’ in a space

A stakeholder is any person who has an interested in what we&rsquo;re
doing. Our employer, for example, or those working on supporting
roles of the business, team members, users and so on.

There&rsquo;s a vast number of people who would be considered as a
*stakeholder* in a system, even for small systems; therefore we
can apply [STEEPLE](https://en.wikipedia.org/wiki/PEST_analysis) analysis to try and understand our external
environment.

STEEPLE is concerned with the following aspects:

-   **Social:** changes in culture, demographics, and attitudes
-   **Technological:** changes in technology that can affect our system
-   **Economic:** financial implications of our decisions
-   **Environmental:** concerned with environmental implications of our
    product
-   **Political:** labour law, taxation obligations, etc
-   **Legal:** legal implications concerning data and privacy, for
    example
-   **Ethical:** besides legal ramifications, we want to ensure our
    approach is ethical


<a id="org7e7128c"></a>

## 3.302 SWOT analysis

[SWOT Analysis](https://en.wikipedia.org/wiki/SWOT_analysis) is a strategic planning technique to help an
individual or organization identify strengths, weaknesses,
opportunities, and threats related to business competition or
project planning.

-   **Strengths:** What&rsquo;s *special* or *unique* about the project?
-   **Weaknesses:** What do we lack that may reflect on the project?
-   **Opportunities:** What environmental or business qualities can we
    exploit to our advantage?
-   **Threats:** What can cause trouble to the project?


<a id="orgc64d434"></a>

## Alternative models

-   [UNICEF SWOT and STEEPLE](https://www.unicef.org/knowledge-exchange/files/SWOT_and_PESTEL_production.pdf)


<a id="orgedd49b9"></a>

# Week 7

Key Concepts

-   Understand user-centred design and what it means to employ said
    methods and strategies.
-   Consider how user-centred design techniques can be used to
    iteratively improve software quality.
-   Formalize your findings and develop them as a series of
    prototypes.


<a id="org06fb751"></a>

## 4.01 User-centred design in a nutshell

As mentioned before, User-centred design is an iterative set of
steps which focus on involving the users in the design process,
development and testing of our software (i.e. our *Software
Development Lifecycle*).

A key concern in UCD is constantly re-evaluating the context of
use. This helps us to specify (using e.g. UML) requirements which,
in turn, help inform our designs.

Because our conceptual understanding of how a system works is, in
general, lacking, UCD provides a process to try and remove biases
during system design an development.

Ultimately, we want to produce better systems. We achieve that by
taking into consideration feedback from our stakeholders. As we
incorporate this feedback, the resulting product tends to better
fit our users&rsquo; requirements.

We also want our designs to fit the widest possible
demographic. This is referred to as **Universal Design**.

The result of all this effort also has tangible socio-technical
benefits. Through an iterative design process we get:

-   **Minimal training requirements:** when users are involved in the
    design of the system, they won&rsquo;t need training afterwards

-   **Minimal resistance to change:** the system embeds users&rsquo; values,
    therefore they will be more willing to adopt the new system

-   **Improved requirements:** because users are involved throughout
    the design and development, we have many chances to clarify
    requirements, which results in a much clearer set of requirements
    for the system


<a id="orgb73f277"></a>

## 4.03 Design and prototyping

-   Sharp, H., J. Preece and Y. Rogers [Interaction design: beyond
    human-computer interaction](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446). (Indianapolis, IN: John Wiley and
    Sons Inc, 2019) chapter 12 pp.421–466.


<a id="org0d4a014"></a>

## 4.101 Why ‘user-friendliness’ is a false metric

User-friendliness is not a universal, measurable metric. Its
meaning changes depending on context.

Our systems will, hopefully, be used by hundreds of different
users from different backgrounds. How can we design a system that&rsquo;s
*friendly* to this myriad of different users? In short, we can&rsquo;t.

We can say that user-friendliness is a **false metric**, considering
that there&rsquo;s no universal truth for what user-friendliness
means. What is friendly to one person could be unfriendly to
another.

This is one reason why we can find so many options of SW doing
roughly the same thing (IDEs, Operating Systems, Text Editor, etc).

Instead of looking at user-friendliness, we should aim at
understanding **Usability**. Here, our primary concerns are:

-   **Effectiveness:** can I complete a task?
-   **Efficiency:** How quickly/easily can I complete a task?
-   **Satisfaction:** Do I enjoy using the system?

Usability grew from the work on pioneers such as Jakob Nielsen,
Donald Norman and Ben Shneiderman. The real revolution, however,
came about with the increase in usage of systems.

Along the way a series of innovations paved the way for big
paradigm shifts. For example, the early Xerox Alto and Windows
operating systems gave us a Graphical User Interface (GUI)
operating system while affordable broadband internet largely
increased the number of internet users. More recently the original
iPhone revolutionized the mobile phone market and MOOCs have
changed the way education is delivered.


<a id="org8381677"></a>

## 4.102 Introduction to user-centred design

-   Sharp, H., J. Preece and Y. Rogers [Interaction design: beyond
    human-computer interaction](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446). (Indianapolis, IN: John Wiley and
    Sons Inc, 2019) chapter 12 pp.471-491.


<a id="org7e66117"></a>

## 4.201 Test early, test often, iterate

Testing is important in all Software Engineering. When we talk
about *Iterative User Testing*, we might think of a test as way to
**verify** the our systems behaves **as specified**.

We can combine our testing methodology with our usability
definition. For example, from an effectiveness and efficiency point
of view, we can collect metrics on whether a user completed a
specific task and how long did it take:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Task</th>
<th scope="col" class="org-left">Completed?</th>
<th scope="col" class="org-right">Time</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Task 1</td>
<td class="org-left">Yes</td>
<td class="org-right">00:23:17</td>
</tr>


<tr>
<td class="org-left">Task 2</td>
<td class="org-left">No</td>
<td class="org-right">N/A</td>
</tr>


<tr>
<td class="org-left">Task 3</td>
<td class="org-left">Yes</td>
<td class="org-right">00:11:46</td>
</tr>
</tbody>
</table>

User satisfaction testing is a bit more subjective. We probably
want to collect more qualitative data regarding user
satisfaction. We could watch people using our system to identify
interaction patterns, or try to identify hesitation to counter user
feedback.

Sometimes, observational data and metrics may paint a different
pictures, we have to resolve these sorts of problems as well.

In order to *frame* our use cases, we may want to create
*Personas*. They are an amalgamation of data that can help us think
about what a typical user might look like. It should help us
targeting users from a particular demographic.


<a id="org85ee240"></a>

## 4.202 Heuristics for design

-   Sharp, H., J. Preece and Y. Rogers [Interaction design: beyond
    human-computer interaction](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5746446). (Indianapolis, IN: John Wiley and
    Sons Inc, 2019) chapter 12 pp.549-576.

