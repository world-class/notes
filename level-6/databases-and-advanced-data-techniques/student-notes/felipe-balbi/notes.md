
# Table of Contents

1.  [Week 1](#org9a0b841)
    1.  [1.005 Reading list](#orgfc46b45)
    2.  [1.101 Where does data come from?](#org0aa4ee4)
    3.  [1.103 Ordering some data: What&rsquo;s on the menu?](#org10d415c)
    4.  [1.105 What does your data look like?](#org364501d)
    5.  [1.201 Bringing data sources together](#orgb2b336e)
    6.  [1.203 Licenses, sharing and ethics](#org8c89c0d)
    7.  [1.204 Licensing](#orgc12e8fa)
2.  [Week 2](#org08d12bd)
    1.  [1.301 What shape is your data? Introduction](#org97f1b38)
    2.  [1.302 What shape is your data? Tables](#orgc5e4db0)
    3.  [1.304 What shape is your data? Trees](#org7f50dc7)
    4.  [1.306 What shape is your data? Other](#orga3cad23)
    5.  [1.402 Further reading](#orga4a86fb)
3.  [Week 3](#org6d067d6)
    1.  [2.001 Welcome to Relational Databases](#orge39a98c)
    2.  [2.101 Drawing a database I: Basic Entity-Relationship diagrams](#orgcc8a25a)
    3.  [2.104 Speaking to databases I: Basic SQL](#org7d75300)
4.  [Week 4](#org7d1ce8e)
    1.  [2.201 Introducing Joins](#orgd6d45be)
    2.  [2.203 Drawing a database II: More about joins](#org21294e1)
    3.  [2.204 E/R diagrams summary](#org0d3369c)
    4.  [2.301 Database integrity and the role of keys](#org47ef2f2)
    5.  [2.303 Speaking to Databases II: SQL for joins and keys](#org131bb32)
    6.  [2.402 Further reading](#org9e25e8b)
5.  [Week 5](#org1007623)
    1.  [3.001 Introduction to data Integrity and security](#org58c9218)
    2.  [3.103 Normalisation and the normal forms I](#org536bb4b)
    3.  [3.104 Normalisation and the normal forms II](#org2be0be3)
    4.  [3.105 On the normal forms](#org9fb02f7)
6.  [Week 6](#orged2d897)
    1.  [3.201 On ACID: Guaranteeing a DBMS against errors](#org17e0778)
    2.  [3.203 Transactions and serialisation](#org570705c)
    3.  [3.204 More depth on ACID and integrity risks](#org69eb1c4)
    4.  [3.301 Malice and accidental damage](#org48520e7)
    5.  [3.303 Security and user policies with SQL](#org4aaab68)
    6.  [3.402 Further reading](#orgb7c4256)
7.  [Week 7](#orgd88a53e)
    1.  [4.004 Getting practice with MySQL (Lab introduction)](#org808d612)
    2.  [4.007 Connecting to an SQL RDBMS](#org796acc5)
8.  [Week 8](#orga22ae2c)
    1.  [4.201 Using libraries to update data in a database](#orga9999bb)
    2.  [4.402 Further reading](#org014a83b)
9.  [Week 9](#orgb5dc201)
    1.  [5.101 Query efficiency](#orgad7e7c3)
    2.  [5.103 Removing the safety net: denormalisation](#org1bf9287)
10. [Week 11](#orgb4e9cbd)
    1.  [6.001 Introduction to distributed databases and alternative database models](#orgaf768ea)
    2.  [6.101 Approaches to distributing RDBMS](#org308bbd0)
    3.  [6.103 Distributed database tradeoffs: gains and losses](#org1eb14de)
    4.  [6.201 Key/Value databases and MapReduce](#org6fcedff)
    5.  [6.202 Jeffrey Dean and Sanjay Ghemawat introducing MapReduce](#org2b40481)



<a id="org9a0b841"></a>

# Week 1

Key Concepts

-   Find, describe and evaluate sources of data

-   Understand different forms in which data may come

-   Evaluate data-related access and reuse rights


<a id="orgfc46b45"></a>

## 1.005 Reading list

-   Chen, P. ‘[The Entity-Relationship Model – Toward a Unified View
    of Data](https://dl.acm.org/doi/10.1145/320434.320440)’, ACM Transactions on Database Systems 1(1) 1976,
    pp.9–36.

-   Codd, E. &rsquo;[A relational model of data for large shared data
    banks](https://dl.acm.org/doi/10.1145/362384.362685)&rsquo;, Comms of the ACM 13/6 1970, pp.377–87.

-   Codd, E. &rsquo;[Normalized data base structure: a brief tutorial](https://dl.acm.org/doi/10.1145/1734714.1734716)&rsquo;. In
    Proceedings of the 1971 ACM SIGFIDET (now SIGMOD) Workshop on
    Data Description, Access and Control (SIGFIDET&rsquo;71). Association
    for Computing Machinery, New York, NY, USA (1971) pp.1–17

-   Date, C.J. [Database Design and Relational Theory](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5997273). (Healdsburg,
    CA: Apress, 2019) Chapter 4. FDs and BCNF (informal)

-   Härder, T and A. Reuter ‘[Principles of Transaction-Oriented
    Database Recovery](https://dl.acm.org/doi/10.1145/289.291)’, ACM Surveys, 15/4 1983

-   Katie Rawson and Trevos Muñoz, ‘[Against Cleaning](https://dhdebates.gc.cuny.edu/read/untitled-f2acf72c-a469-49d8-be35-67f9ac1e3a60/section/07154de9-4903-428e-9c61-7a92a6f22e51#ch23)’ from Matthew
    K. Gold and Lauren F. Klein Debates in the Digital Humanities, 5
    (University of Minnesota Press, 2019).

-   Lewis, D. CO2209 Database systems


<a id="org0aa4ee4"></a>

## 1.101 Where does data come from?

Data can come from different sources:

-   **New Data:** created for the sole purpose of the current
    application

-   **Pre-existing Data:** data that already existed prior to the
    application being created. Perhaps it&rsquo;s internal *legacy* data,
    or it&rsquo;s external data that can be acquired from another supplier.

When it comes to new data, we can take different approaches:

-   **Adding data on-demand:** For example, a hairdresser has bookings
    with clients. Either of these appointments is a new datum that
    gets added to the database *on-demand*, i.e. only the customer
    makes an appointment.

-   **Bulk data entry:** Some systems can&rsquo;t afford to have only parts
    of the data available. In such cases, we can either pay for data
    entry services or rely on some form of crowd-sourcing.

-   **Pre-existing data:** Whenever we have pre-existing data, it
    usually needs to be manipulated somehow in order to fit the new
    system. Some forms of data manipulation are:
    -   **Extraction:** data may already be in a spreadsheet or database
        and needs to be recovered, or extracted from the original
        source.
    
    -   **Conversion:** data may need to be converted into a new format
        or structure in order to fit new requirements.
    
    -   **Cleaning:** data may contain erroneous or unnecessary
        information. These need to be removed in order to prevent
        problems.

External sources of data are interesting because they amortize the
cost of data entry or quality checks. When data is *purchased* from
a supplier, it comes pre-cleaned and in a format that&rsquo;s easy to
consume. Moreover, we can also have the opportunity of acquiring
data produced by experts in a given field.

Conversely, when we acquire data from an external source, we
relinquish control over the quality of the data and its
structure. The data may also be incomplete and/or ambiguous from
our point view; i.e. the level of detail to which a particular
piece of information is encoded may be different from what we
need. As a final concern, there may be concerns of trustworthiness
with regards to the data.


<a id="org10d415c"></a>

## 1.103 Ordering some data: What&rsquo;s on the menu?

-   Post 1: Trevor Munoz, &rsquo;[What IS on the menu](http://trevormunoz.com/notebook/2013/08/08/what-is-on-the-menu-more-work-with-nypl-open-data-part-one.html)&rsquo;

-   Post 2: Trevor Munoz, &rsquo;[Refining the problem](http://trevormunoz.com/notebook/2013/08/19/refining-the-problem-more-work-with-nypl-open-data-part-two.html)&rsquo;


<a id="org364501d"></a>

## 1.105 What does your data look like?

When modelling real-life data, we must consider what sort of
information is necessary for the application.

To motivate the problem, we look at the example of a book. The data
required for a book may be:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left"><b>Type</b></td>
<td class="org-left">Book</td>
</tr>


<tr>
<td class="org-left"><b>Weight</b></td>
<td class="org-left">557g</td>
</tr>


<tr>
<td class="org-left"><b>Height</b></td>
<td class="org-left">172mm</td>
</tr>


<tr>
<td class="org-left"><b>Colour</b></td>
<td class="org-left">Red and Green</td>
</tr>


<tr>
<td class="org-left"><b>Title</b></td>
<td class="org-left">Gardener&rsquo;s Calendar</td>
</tr>


<tr>
<td class="org-left"><b>Authors</b></td>
<td class="org-left">Thomas Mawe, John Abercrombie</td>
</tr>


<tr>
<td class="org-left"><b>Date</b></td>
<td class="org-left">1803</td>
</tr>


<tr>
<td class="org-left"><b>Edition</b></td>
<td class="org-left">17<sup>th</sup></td>
</tr>
</tbody>
</table>

Some questions arise when it comes to which form of e.g. the title
to store. From the point of view of finding it in a shelf
&ldquo;Gardener&rsquo;s Calendar&rdquo; is enough, from the point of view of
comparison against other similar titles, a long form may be
required.


<a id="orgb2b336e"></a>

## 1.201 Bringing data sources together

-   [Linked Jazz](https://linkedjazz.org/)

-   Pratt Institute, [How Mapping Relationships Between Jazz Musicians
    Elevates Unsung Histories](https://www.pratt.edu/news/view/how-mapping-relationships-between-jazz-musicians-elevates-unsung-histories)


<a id="org8c89c0d"></a>

## 1.203 Licenses, sharing and ethics

In academic and government circles, it&rsquo;s common to make data as
openly available as possible. That, however, doesn&rsquo;t apply to all
parts of government of commercial world. There are legal
restrictions regarding the use of data which need to be considered.

The [Linked Open Data](https://lod-cloud.net/) Cloud project produces a graph of all the data
openly available published in the Linked Data format. Considering
the size of the graph which contains but a subset of all openly
available data, the question to ask is *Why is so much data being
shared for free if information is so valuable?*

To put into perspective, a furniture catalog from any given
furniture company will contain many details about every item:
price, sizes, materials, photos. In principle, the furniture could
be copied from information that can be gathered from catalogues and
manuals. However, the furniture company needs their products to be
easy to find if they want to sell them. The same argument can be
used for many other industries: music industry, electronics,
streaming services, etc.

To summarize some of the reasons to share open data:

-   To drive sales

-   For the common good

-   Contract requirements

-   Interoperability

Conversely, here are some reasons **not** to share open data:

-   Restrictions on source data

-   Control of use

-   Value of the data


<a id="orgc12e8fa"></a>

## 1.204 Licensing

-   Alex Ball, [How to License research data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data)


<a id="org08d12bd"></a>

# Week 2

Key Concepts

-   Find, describe and evaluate sources of data
-   Understand different forms in which data may come
-   Evaluate data-related access and reuse rights


<a id="org97f1b38"></a>

## 1.301 What shape is your data? Introduction

Data is structured in some form, and we have to be concerned about
that. There are different *levels* of structure which can be
considered:

-   **Programming Languages:** Data types (`float`, `int`, `double`,
    etc) impose a certain structure to the data.

-   **Data Models:** Relations between different data. Think databases.

-   **Data Serialization:** Data formats used for transmission using
    e.g. a network connection.

-   **Exchange Protocols:** Some form of standardization for
    information exchange using e.g. Unix Sockets, Named Pipes, shared
    memory or similar methods.

-   **User Interfaces:** Data is user interfaces is structured in a way
    that&rsquo;s comfortable for humans to consume.

Some of the *shapes* of data we will deal with are:

-   Tables

-   Trees

-   Graphs

-   Media (raw data)

-   Documents & objects


<a id="orgc5e4db0"></a>

## 1.302 What shape is your data? Tables

A table has cells with a number of rows and columns. In our case,
every row represents a *thing*. Each column represents a type of
information about that *thing*. Table [2](#org0a1cc62) shows an
example of such a table:

<table id="org0a1cc62" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 1:</span> Sample Table</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Food</b></th>
<th scope="col" class="org-right"><b>Water (g)</b></th>
<th scope="col" class="org-right"><b>Fat (g)</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Avocado</td>
<td class="org-right">72.5</td>
<td class="org-right">19.5</td>
</tr>


<tr>
<td class="org-left">Butter</td>
<td class="org-right">14.9</td>
<td class="org-right">82.2</td>
</tr>
</tbody>
</table>

Tables are easy to understand and structure. They&rsquo;re also very
direct in how they communicate information. Tables are very
important to Relational Databases. However, they&rsquo;re not very good
at communicating or structuring data that branches or has
hierarchy. A better suited representation for such data would be
Trees.


<a id="org7f50dc7"></a>

## 1.304 What shape is your data? Trees

A tree is Computer Science is based on the metaphor of a real
tree. Figure [1](#org036b087) below shows an example of a simple tree
structure. Every tree has a root node, every branch in the tree has
a path to the root.

Some vocabulary is necessary, the following refers to the tree
from figure [1](#org036b087).

-   The *root* of the tree is node *a*
-   Nodes *e*, *g*, *i*, *k* *l*, *m*, *n*, *o*, *p*, *r*, *s*, and
    *u* are *leaf nodes*
-   Node *f* is a parent of *l*, *m*, and *n*
-   Nodes *l*, *m*, and *n* are children of node *f*
-   Nodes *a*, and *b* are ancestor of nodes *l*, *m*, and *n*
-   Nodes *i*, *j*, and *k* are sibblings
-   Nodes *b*, *c*, *d*, *h*, and others are internal nodes

\begin{figure}[h]
\label{org036b087}
  \centering
  \begin{tikzpicture}[
       level 1/.style={level distance=2cm,sibling distance=5cm},
       level 2/.style={level distance=2cm,sibling distance=2cm}]

    \node {a}
      child {node {b}
        child {node {e}}
        child {node {f}
          child {node {l}}
          child {node {m}}
          child {node {n}}
        }
      }
      child {node {c}
        child {node {g}}
        child {node {h}
          child {node {o}}
          child {node {p}}
        }
      }
      child {node {d}
        child {node {i}}
        child {node {j}
          child {node {q}
            child {node {s}}
            child {node {t}
              child {node {u}}
            }
          }
          child {node {r}}
        }
        child {node {k}}
      };
  \end{tikzpicture}
\end{figure}


<a id="orga3cad23"></a>

## 1.306 What shape is your data? Other

One limitation of trees is that each and every node can have a
single parent node. What happens when we need to represent a node
with more than one parent? Perhaps we can reach the same child node
through different paths. If we were dealing with a filesystem,
whenever we add a *symbolic link* to a file, we would break the
representation of the filesystem as a tree. It&rsquo;s clear we need
another structure to represent these sorts of structures. That
structure is a graph.

Figure [2](#org5f3ddea) shows a \(K_8\) complete graph. A complete
graph is that where each vertex is connected to every other
vertex. The vertices in a graph could be web pages and the edges
could be links between them, or perhaps each node is a file with
the edges being a filesystem path.

\begin{figure}[h]
\label{org5f3ddea}
\centering
\begin{tikzpicture}
  \graph[nodes=state, radius=4cm] { subgraph K_n [n=8, clockwise] };
\end{tikzpicture}
\end{figure}

Blobs are *raw* data representations without a perceivable
structure. Raw sound samples fall into this category. Features are
pieces of information derived from blobs, for example the sample
rate from a raw audio file.

Table [3](#org2bf91c8) shows a summary of the structures discussed so
far:

<table id="org2bf91c8" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 2:</span> Summary of structures</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Structure</b></th>
<th scope="col" class="org-left"><b>Description</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Table</td>
<td class="org-left">General purpose</td>
</tr>


<tr>
<td class="org-left">Tree</td>
<td class="org-left">Heterogenous and hierarchical, structured data</td>
</tr>


<tr>
<td class="org-left">Graph</td>
<td class="org-left">Heterogenous, non-hierarchical, structured data</td>
</tr>


<tr>
<td class="org-left">Blobs</td>
<td class="org-left">Inaccessible data for storage</td>
</tr>


<tr>
<td class="org-left">Features</td>
<td class="org-left">Searchable information derived from blobs</td>
</tr>


<tr>
<td class="org-left">Documents</td>
<td class="org-left">Rich, but not interrelated data</td>
</tr>
</tbody>
</table>


<a id="orga4a86fb"></a>

## 1.402 Further reading

-   Katie Rawson and Trevos Muñoz, ‘[Against Cleaning](https://dhdebates.gc.cuny.edu/read/untitled-f2acf72c-a469-49d8-be35-67f9ac1e3a60/section/07154de9-4903-428e-9c61-7a92a6f22e51#ch23)’ from Matthew
    K. Gold and Lauren F. Klein Debates in the Digital Humanities, 5
    (University of Minnesota Press, 2019).


<a id="org6d067d6"></a>

# Week 3

Key Concepts

-   Create and explore relational databases using SQL
-   Design a database using Entity/Relationship diagrams
-   Explain core concepts of relations and relational theory


<a id="orge39a98c"></a>

## 2.001 Welcome to Relational Databases

A relational database implements the Relational Model. By model we
mean by model is that it serves as an abstraction to the complex
real-world. Usually we will abstract data.

A relational database uses tables to represent data. [Relation](https://en.wikipedia.org/wiki/Relation_(database)), in
this case, as defined by E. F. Codd., is a set of tuples \((d_1,
   \ldots, d_n)\) where each element \(d_j\) is a member of \(D_j\)

Relational Databases are an implementation of [Relational Algebra](https://en.wikipedia.org/wiki/Relational_algebra), a
theory for modelling data and defining queries on such data.

The following, summarizes a set of rules for Relational Databases.

1.  Everything is a **relation**
    -   All operations use the relational model
    
    -   All data is represented and accessed as relations
    
    -   Table and database structure is accessed and altered as
        relations

2.  The system is unnaffected by its implementation
    -   If the hardware changes
    
    -   If the operating system changes
    
    -   If the disks are replaced
    
    -   If data is distributed

The Relational Model is not the same as the Entity Relationship
Model. An ER Model helps us model concepts, usually as part of
the design of a Relational Database.

SQL is a *partial* of the relational model.


<a id="orgcc8a25a"></a>

## 2.101 Drawing a database I: Basic Entity-Relationship diagrams

An *Entity* is the thing we want to model, it must be uniquely
idenfiable and it may have attributes. Of this, there are two
subtypes:

-   **Weak Entity:** its existence depends on the continued existence
    of other entities. For example, a customer&rsquo;s bank account depends
    on the existence of the account holder. This entity type is
    depicted in figure [3](#orga2a333a).

-   **Strong Entity:** the one which is **not** weak. This entity type is
    depicted in figure [4](#org2ed8cd4).
    
    \begin{figure}[h]
    \label{orga2a333a}
      \centering
      \begin{tikzpicture}[
       every attribute/.style={fill=green!20, thick},
       every entity/.style={fill=blue!20, thick},
       every relationship/.style={fill=red!20, thick}]
    
      \node[entity, double] (account)   {Account};
    
      \end{tikzpicture}
    \end{figure}
    
    \begin{figure}[h]
    \label{org2ed8cd4}
      \centering
      \begin{tikzpicture}[
       every attribute/.style={fill=green!20, thick},
       every entity/.style={fill=blue!20, thick},
       every relationship/.style={fill=red!20, thick}]
    
      \node[entity] (student)   {Student};
    
      \end{tikzpicture}
    \end{figure}

An *Attribute* is an information that describes one aspect of an
entity. Attributes can be characterised in various ways (described
below and depicted in figure [5](#org4b5e1a7)):

-   **Simple vs composite:** A **simple attribute** is atomic or scalar
    (a simple integer or string). A **composite attribute** has
    internal structure that can be broken down into further
    attributes. For example, a *Date* attribute can be broken down
    into *day*, *month*, and *year*.

-   **Single or multi-valued:** A **single-valued attribute** is one that
    won&rsquo;t change. For example a student is unlikely to have multiple
    full names at the same time. A **multi-valued attribute** is that
    which an entity can have multiples of it. It&rsquo;s depicted in a
    diagram with a double border line. An easy example is a phone
    number: a student can have multiple phone numbers.

-   **Base or derived:** a **derived attribute** can be deduced from
    other attributes already present. They are depicted in a diagram
    with a dotted or dashed border line. An example would be
    someone&rsquo;s age can be computed from their date of birth. A **base
    attribute** cannot be deduced from other attributes.

-   **Primary key:** an attribute that uniquely identifies an instance
    of the entity type. In a diagram, it&rsquo;s shown underlined.

\begin{figure}[h]
\label{org4b5e1a7}
  \centering
    \begin{tikzpicture}[
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity] (student)   {Student};
    \node[attribute, above of=student] (personal) {Personal Details};
    \node[attribute, above of=personal, dotted] (age) {Age};

    \node[attribute, above left of=personal] (dob) {Date Of Birth};
    \node[attribute, above of=dob] (month) {Month};
    \node[attribute, above left of=dob] (year) {Year};
    \node[attribute, above right of=dob] (day) {Day};

    \node[attribute, above right of=personal] (nationality) {Nationality};

    \node[attribute, below of=student] (contact) {Contact Details};
    \node[attribute, below of=contact] (address) {Address};
    \node[attribute, double, below left of=contact] (phone) {Contact Phone};

    \node[attribute, below left of=student] (studentID) {\underline{StudentID}};
    \node[attribute, below right of=student] (degree) {Degree};

    \path (student) edge (personal)
                    edge (contact)
                    edge (studentID)
                    edge (degree);

    \path (contact) edge (phone)
                    edge (address);

    \path (personal) edge (age)
                     edge (dob)
                     edge (nationality);

    \path (dob) edge (day)
                edge (month)
                edge (year);

  \end{tikzpicture}
\end{figure}

A *Relationship* is a connection or dependency between two
entities. Entities involved in a relationship are referred to as
*participants*. A relationship is depicted as a diamond labelled
with the name of the relationship. If one entity in the
relationship is strong and the other weak, we draw the diamond with
double line. Figure [6](#orgc0c873c) shows the relationship types
in a simple ER Diagram.

\begin{figure}[h]
\label{orgc0c873c}
  \centering
  \begin{tikzpicture}[
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]
    \node[entity, double] (account) {IT account};
    \node[relationship, double, above of=account] (has) {Has};
    \node[entity, right of=has] (student) {Student};
    \node[relationship, right of=student] (enrolled) {Enrolled};
    \node[entity, below of=enrolled] (degree) {Degree};

    \path (has) edge (account)
                edge (student);

    \path (enrolled) edge (degree)
                     edge (student);
  \end{tikzpicture}
\end{figure}


<a id="org7d75300"></a>

## 2.104 Speaking to databases I: Basic SQL

*SQL* has commands for manipulating structure, such as `CREATE`,
`DROP`, `TRUNCATE`, `ALTER`; as well as commands for manipulating
data, such as `INSERT`, `SELECT`, `UPDATE`, and `DELETE`.

To retrieve information from the database, we use the SQL `SELECT`
command:

    SELECT PlanetName FROM Planets;

We can add a constraint to this query:

    SELECT PlanetName FROM Planets WHERE DayLength > 200;

To create a table in an existing database, we use the `CREATE`
query:

    CREATE TABLE Planets (
           PlanetName	CHAR(8),
           DayLength	INT,
           YearLength	INT,
           PRIMARY KEY (PlanetName)
    );


<a id="org7d1ce8e"></a>

# Week 4

Key Concepts

-   Create and explore relational databases using SQL
-   Design a database using Entity/Relationship diagrams
-   Explain core concepts of relations and relational theory


<a id="orgd6d45be"></a>

## 2.201 Introducing Joins

Joins are used to make queries that collect data from two
tables. Figure [7](#org996e346) shows a diagram for the
tables we will use to illustrate how to use Joins.

\begin{figure}[h]
\label{org996e346}
  \centering
  \begin{tikzpicture}[auto,
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity, pin={[attribute]15:Name},
          pin={[attribute]345:DayLength}]  (planet) {Planet};
    \node[relationship, below of=planet]   (rel1)   {has planet};
    \node[entity, pin={[attribute]15:Name},
          pin={[attribute]345:HasLiquidWater},
          below of=rel1]                   (moon)   {Moon};

    \path (rel1) edge (planet)
                 edge (moon);
  \end{tikzpicture}
\end{figure}

The simplest form of a `JOIN`, called a *Cross Join* or a
*Cartesian Join*, consists of simply listing all the tables we want
to collect data from:

    SELECT Lead.name, Rhythm.name,
           Bass.name, Drums.name
    FROM   Lead, Rhythm, Bass, Drums;

The total number of results is the product of all entries in all
tables, i.e. it essentially carries out a Cartesian Product of all
the sets (tables) involved. E.g. if we have 3 Lead guitarists, 2
Rhythm guitarists, 5 Bass guitarists, and 7 Drum players, the total
number of results will be \(3 \cdot 2 \cdot 5 \cdot 7 = 210\) rows of
results. Because the number of results grows so fast, we should
carefuly consider our constraints in the `WHERE` clause to limit
the results.

The example below is another way of executing a `JOIN`, called an
*Inner Join*.

    SELECT Planet.Name, Moon.Name, HasLiquidWater
    FROM   Planet, Moon
    WHERE  Planet.Name=Moon.HasPlanet
    AND    DayLength < 11;

A more explicit version of the *Inner Join* is shown below

    SELECT Planet.Name, Moon.Name, HasLiquidWater
    FROM   Planet INNER JOIN Moon
    ON     Planet.Name=Moon.HasPlanet
    WHERE  DayLength < 11;

The *Outer Join* is another type of `JOIN`. Its syntax is shown
below.

    SELECT Planet.Name, Moon.Name, HasLiquidWater
    FROM   Planet LEFT JOIN Moon
    ON     Planet.Name=Moon.HasPlanet;

Figures [8](#org73d5e65), [9](#orgf618e4a), and [10](#org47cae6e), give a visual
representation of some what results will be returned for the joins.

\begin{figure}[h]
\label{org73d5e65}
  \centering
  \begin{tikzpicture}
   \begin{scope}
     \clip \firstcircle;
     \fill[filled] \secondcircle;
   \end{scope}
   \draw[outline] \firstcircle node {$A$};
   \draw[outline] \secondcircle node {$B$};
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{orgf618e4a}
  \centering
  \begin{tikzpicture}
   \begin{scope}
     \clip \firstcircle;
     \fill[filled] \secondcircle;
   \end{scope}
    \begin{scope}
      \clip \firstcircle;
      \draw[filled, even odd rule] \firstcircle
                                   \secondcircle;
    \end{scope}
    \draw[outline] \firstcircle node {$A$}
                   \secondcircle node {$B$};
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org47cae6e}
  \centering
  \begin{tikzpicture}
   \begin{scope}
     \clip \firstcircle;
     \fill[filled] \secondcircle;
   \end{scope}
    \begin{scope}
      \clip \secondcircle;
      \draw[filled, even odd rule] \firstcircle
                                   \secondcircle;
    \end{scope}
    \draw[outline] \firstcircle node {$A$}
                   \secondcircle node {$B$};
  \end{tikzpicture}
\end{figure}


<a id="org21294e1"></a>

## 2.203 Drawing a database II: More about joins

Cardinality tells us how many rows in each of the tables
participating in the join matches with how many rows on each of the
table. It&rsquo;s often expressed in terms of a ratio, some of which are
shown below:

-   **1:n:** one row in table \(x\) joins with **zero, one or more** rows
    in table \(y\).
    
    In this case we want to use a Foreign Key by placing the primary
    key of the table \(x\) into the table \(y\). Figure [11](#org5d01f13)
    shows a depiction of this case in an ER Diagram. If we want to
    show that at least one moon will be available, we use a double
    edge to connect the entity to the relation, as shown in figure
    [12](#org098fa84).
    
    In this situation, the Moon table would be declared like so:
    
        CREATE TABLE Moons (
               MoonName   CHAR(20)
               PlanetName CHAR(10),
               Diameter   INT,
        
               PRIMARY KEY (MoonName),
               FOREIGN KEY (PlanetName)
               REFERENCES  Planets(PlanetName)
        );

-   **1:1:** one row in \(x\) joins with exact one row in table \(y\)
    
    This can be implemented as the case above, but we should consider
    implementing it as a single entity with attributes. Figure
    [13](#org7b50e98) shows an ER Diagram for this case.
    
    The Project table would be declared like so:
    
        CREATE TABLE Projects (
               Student VARCHAR(100)
               Title   VARCHAR(100),
               Mark    INT,
        
               PRIMARY KEY (Student),
        );
-   **m:n:** any number of rows from table \(x\) joins with any number of
    rows in table \(y\)
    
    This is impossible to implement with the Relational Model. We
    must add a new entity/relation. A depiction of the ER diagram is
    shown in figure [14](#org01a3426). The fix for this case is shown in
    figure [15](#org49ddd4f), it consists of adding a *Link Table*
    to the model.
    
    The link table is created as shown below:
    
        CREATE TABLE TutorRole (
              Student VARCHAR(100)
              Tutor   VARCHAR(100),
        
              PRIMARY KEY (Student, Tutor),
        );

\begin{figure}[h]
\label{org5d01f13}
  \centering
  \begin{tikzpicture}[auto,
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity]                        (planet) {Planet};
    \node[relationship, right of=planet] (rel1)   {has planet};
    \node[entity, right of=rel1]         (moon)   {Moon};

    \path (rel1) edge node[above, near end] {$1$} (planet)
                 edge node[above, near end] {$m$} (moon);
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org098fa84}
  \centering
  \begin{tikzpicture}[auto,
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity]                        (planet) {Planet};
    \node[relationship, right of=planet] (rel1)   {has planet};
    \node[entity, right of=rel1]         (moon)   {Moon};

    \path (rel1) edge node[above, near end] {$1$} (planet)
                 edge[style={double,double distance=2pt}]
                      node[above, near end] {$m$} (moon);
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org7b50e98}
  \centering
  \begin{tikzpicture}[auto,
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity]                         (entity1) {Project};
    \node[relationship, right of=entity1] (rel1)    {is by};
    \node[entity, right of=rel1]          (entity2) {Student};

    \path (rel1) edge node[above, near end] {$1$} (entity1)
                 edge node[above, near end] {$1$} (entity2);
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org01a3426}
  \centering
  \begin{tikzpicture}[auto,
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity]                         (entity1) {Student};
    \node[relationship, right of=entity1] (rel1)    {has tutor};
    \node[entity, right of=rel1]          (entity2) {Tutor};

    \path (rel1) edge node[above, near end] {$m$} (entity1)
                 edge node[above, near end] {$m$} (entity2);
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org49ddd4f}
  \centering
  \begin{tikzpicture}[auto,
     every attribute/.style={fill=green!20, thick},
     every entity/.style={fill=blue!20, thick},
     every relationship/.style={fill=red!20, thick}]

    \node[entity]                         (entity1) {Student};
    \node[relationship, above of=entity1] (rel1)    {has tutor};
    \node[entity, right of=rel1]          (entity3) {Tutor Role};
    \node[relationship, right of=entity3] (rel2)    {is tutor};
    \node[entity, below of=rel2]          (entity2) {Tutor};

    \path (rel1) edge node[left, near end]  {$1$} (entity1)
                 edge node[above, near end] {$m$} (entity3);

    \path (rel2) edge node[left, near end]  {$1$} (entity2)
                 edge node[above, near end] {$m$} (entity3);
  \end{tikzpicture}
\end{figure}


<a id="org0d3369c"></a>

## 2.204 E/R diagrams summary

-   Lewis, D. CO2209 Database systems. (London: University of London,
    2016).


<a id="org47ef2f2"></a>

## 2.301 Database integrity and the role of keys

By analyzing what could go wrong, we can design a database system
that guarantees some error patterns won&rsquo;t happen. To motivate the
discussion, we look at our planets and moons again. Assume we have
entry shown below:

    MoonName:	Deimos
    PlanetName:	Mars
    Area:		495

*PlanetName* could be mistyped as *Mers* or set to *NULL*. This
planet doesn&rsquo;t exist, so our queries will produce erroneous
results. *Area* should never negative, so we should disallow
negative values. Some of these problems that can arise are
detectable and preventable if we design the database for that.


<a id="org131bb32"></a>

## 2.303 Speaking to Databases II: SQL for joins and keys

Integrity Constraints can help us solve a few of the errors
proposed before. Below we can find a list of common errors and
their solution with integrity constraints.

-   **Join fields must match:** We should use a `FOREIGN KEY`. A
    subsequent `INSERT` with wrong value will fail.

-   **One some values of a field are valid:** Use `CHECK` column
    constraint.

-   **Tables values should not be inconsistent:** Avoid repeating
    information in a database. `PRIMARY KEY` guarantees
    uniqueness. Avoid storing calculated values.

-   **Changes should not cause inconsistency:** Use `FOREIGN KEY`
    rules to enforce correct behavior (i.e. `ON DELETE CASCADE`).

-   **Table values should not be inconsistent:** Remove **functional
    dependencies**.


<a id="org9e25e8b"></a>

## 2.402 Further reading

-   Chen, P. ‘The Entity-Relationship Model – Toward a Unified View
    of Data’, ACM Transactions on Database Systems 1(1) 1976,
    pp.9–36.


<a id="org1007623"></a>

# Week 5

Key Concepts

-   Control database access with appropriate security policies
-   Explain other risks for data reliability and their management
-   Describe the risks of repeated data in databases and design using
    normalisation as a tool to reduce those risks


<a id="org58c9218"></a>

## 3.001 Introduction to data Integrity and security

Sources of Error:

-   **Bad input data:** Automated integrity checks greatly improve the
    situation

-   **Poor application logic:** Can be mitigated with normalization

-   **Failed database operations:** Usually cause the biggest
    problems. Easy to handle for atomic operations; very hard
    otherwise. Database snapshots and transactional database helps

-   **(Malicious) User activity:** Control of user privileges help


<a id="org536bb4b"></a>

## 3.103 Normalisation and the normal forms I

&ldquo;*Non-loss decomposition* is the decomposition of a single relation
into two or more relations such that a join on the separate
relations reconstructs the original.&rdquo;

&ldquo;*Functional dependency* states that an attribute \(Y\) is
functionally dependent on attribute \(X\) if for any legal value of
\(X\) there is exactly one associated value of \(Y\)&rdquo;.


<a id="org2be0be3"></a>

## 3.104 Normalisation and the normal forms II

Given a dataset, we can follow a progressively tighter list of
constraints to ensure the data is sound while importing. That list
of constraints, or requirements, is referred to as Normal Forms.

Before looking into the Normal Forms proper, we need a few extra
concepts:

-   **Heath&rsquo;s Theorem:** states that a relation with attributes \(A\),
    \(B\), and \(C\) with a functional dependency \(A \to B\) is equal to
    the join of \(\{ A, B \}\) and \(\{ A, C \}\). In other words if \(A
         \to B\), then \(B\) can be moved to a separate look-up table.

-   **Transitive Dependency:** if \(A \to B\), and \(B \to C\), then \(A \to
         C\).

-   **Multi-value dependency:** \(A\) and \(B\) are two disjoint sets of
    attributes in a relation. There is a multi-value dependency if
    the set of values for \(B\) depend only on the values of \(A\).

The Normal Forms are:

-   **First Normal Form (1NF):** The table is a relation. All of its
    attributes are scalar values.

-   **Second Normal Form (2NF):** The table is in 1NF. Every non-key
    attribute is **irreducibly** dependent on the primary key.

-   **Third Normal Form (3NF):** The table is in 2NF. Every non-key
    attribute is non-transitively dependent on the primary key.

-   **Boyce-Codd Normal Form (BCNF):** Table is in 3NF. All non-trivial
    functional dependencies depend on a super key.

-   **Fourth Normal Form (4NF):** Table is in 3NF. For every muti-value
    dependency \(A \twoheadrightarrow B\), \(A\) is a candidate key.


<a id="org9fb02f7"></a>

## 3.105 On the normal forms

-   Lewis, D. CO2209 Database systems. (London: University of London,
    2016).

-   Codd, E. &rsquo;A relational model of data for large shared data
    banks&rsquo;, Comms of the ACM 13/6 1970, pp.377–87.


<a id="orged2d897"></a>

# Week 6

Key Concepts

-   Control database access with appropriate security policies
-   Explain other risks for data reliability and their management
-   Describe the risks of repeated data in databases and design using
    normalisation as a tool to reduce those risks


<a id="org17e0778"></a>

## 3.201 On ACID: Guaranteeing a DBMS against errors

To motivate the discussion, we create a scenario of a banking
application handling money transfers. The stages for a transfer of
£100 from A to B might be similar to the one illustrated in figure
[16](#org259058f) below.

\begin{figure}[h]
\label{org259058f}
  \centering
  \begin{tikzpicture}[node distance=4cm]
    % nodes
    \node[state] (checkA) {$A$};
    \node[state, accepting, below of=checkA] (done) {Done};

    \node[state, right of=checkA] (checkB) {$B$};
    \node[state, right of=checkB] (checkAmtA) {$A \geq £100$};
    \node[state, right of=done] (creditB) {$B + £100$};
    \node[state, right of=creditB] (debitA) {$A - £100$};

    % edges
    \draw[->] (checkA)    edge[bend left]
                   node[pos=0.5, sloped, above]
                     {A exists}            (checkB)
              (checkB)    edge[bend left]
                   node[pos=0.5, above, sloped]
                     {B exists}            (checkAmtA)
              (checkAmtA) edge[bend left]
                   node[pos=0.5, below, sloped]
                     {A has at least £100} (debitA)
              (debitA)    edge[bend left]
                   node[pos=0.5, below, sloped]
                     {Debit £100 from A}   (creditB)
              (creditB)    edge[bend left]
                   node[pos=0.5, below, sloped]
                     {Credit £100 to B }   (done);
  \end{tikzpicture}
\end{figure}

It should be clear that any one of these states can fail, at a
minimum we can lose power mid-transfer. The issue here is the
entire set of state transition only makes sense as a full block. If
anything fails, we need to roll everything back, somehow.

Another bigger problem would be if A has two outstanding
transactions happening at the same time. What happens if, e.g., A
has exactly £900 in the account and schedules two simultaneous
transactions, one for B of £100 and another for C of £900?

The formalization for the resolution of this class of problems is
given by the *[ACID properties](https://en.wikipedia.org/wiki/ACID)*.

*ACID* is an acronym for Atomicity, Consistency, Isolation,
Durability, which is a set of properties of database transactions
intended to guarantee validity of data despite any possible errors
that may arise, including power outages.

A group of databases operations that, together, satisfy the ACID
properties is referred to as a *transaction*.

Further describing the purpose of each of the 4 tenets of ACID we
have:

-   **Atomicity:** guarantees a group of operations is treated as a
    single unit. This means that if any operation in the transaction
    fails, the entire transaction is considered to fail and the
    database is left unchanged.

-   **Consistency:** guarantees that a transaction can only migrate a
    database from one **valid** state to another **valid** state,
    maintaining any invariants.

-   **Isolation:** guarantees that concurrent transactions leave the
    database in the same state as if they were executed sequentially.

-   **Durability:** guarantees that once a transaction is committed it
    will remain committed even in the evren of system failure
    (i.e. transactions are recorded in non-volatile memory).


<a id="org570705c"></a>

## 3.203 Transactions and serialisation

In figure [17](#orge6b2bd0) we should a 3-stage transaction.

\begin{figure}[h]
\label{orge6b2bd0}
  \centering
  \begin{tikzpicture}
    \tikzset{db/.style={draw, shape border rotate=90,
                                cylinder, ultra thick,
                                minimum height=1.5cm,
                                minimum width=1.25cm}}
    \node[db, fill=green!30]                 (a) {};
    \node[db, fill=red!30, below right of=a] (b) {};
    \node[db, fill=red!30, below right of=b] (c) {};
    \node[db, fill=green!30, below right of=c] (d) {};

    \draw[->] (a.east) edge[bend left]
                       node[pos=.5, right] {Operation 1} (b.north)
              (b.east) edge[bend left]
                       node[pos=.5, right] {Operation 2} (c.north)
              (c.east) edge[bend left]
                       node[pos=.5, right] {Operation 3} (d.north);
  \end{tikzpicture}
\end{figure}

The database is only valid on *green* states, that is, either
before starting operation 1 of after completing operation 3. The
other two intermediary states must be considered invalid states and
the database system should protect against those in the event of
system failure.

Starting with *Isolation*, we can restrict access to data that
might be affected by any operation in the block. In practice, the
database system implements a lock that must be held in order to
modify that particular set of data. This lock guarantees that no
concurrent access to the data happens, thus forcing serialization.

*Atomicity* requires the implementation of rollback, as shown in
figure [18](#orgd997aee). This ensures that in case an operation in a
block fails, we must be able to rollback to the state immediately
before the block was started. In other words, we guarantee that the
database returns to a *green* state in the event of a failed
operation.

\begin{figure}[h]
\label{orgd997aee}
  \centering
  \begin{tikzpicture}
    \tikzset{db/.style={draw, shape border rotate=90,
                                cylinder, ultra thick,
                                minimum height=1.5cm,
                                minimum width=1.25cm}}
    \node[db, fill=green!30]                 (a) {};
    \node[db, fill=red!30, below right of=a] (b) {};
    \node[db, fill=red!30, below right of=b] (c) {};
    \node[db, fill=green!30, below right of=c] (d) {};

    \draw[->] (a.east) edge[bend left]
                       node[pos=.5, right] {Operation 1} (b.north)
              (b.east) edge[bend left]
                       node[pos=.5, right] {Operation 2} (c.north)
              (c.east) edge[bend left]
                       node[pos=.5, right] {Operation 3} (d.north)
              (b.west) edge[bend left, ultra thick, dashed, red]
                       node[pos=.5, left] {} (a.south)
              (c.west) edge[bend left, ultra thick, dashed, red]
                       node[pos=.5, left] {Rollback} (a.south);
  \end{tikzpicture}
\end{figure}

Durability means that valid states are reliably recorded. The
obvious way of achieving that is to write both states to persistent
(i.e. non-volatile) storage as shown in figure
[19](#org2d1fbbb) below.

\begin{figure}[h]
\label{org2d1fbbb}
  \centering
  \begin{tikzpicture}
    \tikzset{db/.style={draw, shape border rotate=90,
                                cylinder, ultra thick,
                                minimum height=1.5cm,
                                minimum width=1.25cm}}
    \tikzset{storage/.style={draw, rounded corners,
                                rectangle, ultra thick,
                                minimum height=0.75cm,
                                minimum width=2cm}}

    \node[db, fill=green!30]                 (a) {};
    \node[db, fill=red!30, below right of=a] (b) {};
    \node[db, fill=red!30, below right of=b] (c) {};
    \node[db, fill=green!30, below right of=c] (d) {};

    \node[storage, fill=gray!30, right=8cm of a] (storage) {\textit{disk}};

    \draw[->] (a.east) edge[bend left]
                       node[pos=.5, right] {Operation 1} (b.north)
              (b.east) edge[bend left]
                       node[pos=.5, right] {Operation 2} (c.north)
              (c.east) edge[bend left]
                       node[pos=.5, right] {Operation 3} (d.north)
              (b.west) edge[bend left, ultra thick, dashed, red]
                       node[pos=.5, left] {} (a.south)
              (c.west) edge[bend left, ultra thick, dashed, red]
                       node[pos=.5, left] {Rollback} (a.south)
              (a.north) edge[bend left, ultra thick, dotted, blue]
                       node[pos=.5, above] {Store} (storage.north)
              (d.east) edge[bend right, ultra thick, dotted, blue]
                       node[pos=.5, right] {Store} (storage.south);
  \end{tikzpicture}
\end{figure}

Consistency comes as a result of restricting access to intermediate
states of the database. Only store initial and final states. In
practice, we only give operations access to the database if we know
they won&rsquo;t suffer side effects from this known inconsistent
(intermediary) state of the database. The mechanism to do that is
called a *Transaction*. Once we decide that group of operations
must be atomic, or carried out as a block, we declare them as a
transaction by using `START TRANSACTION;` command. With that, any
operations placed next until a call to `COMMIT;` will be treated as
intermediate states of the database. In case of any errors, we can
use the `ROLLBACK;` command to undo the inconsistent states.

Some details to keep in mind:

-   Data Definition Language can cause problems

-   Checkpoints may not be as frequent as transactions

-   Table locking is not absolute

*Inconsistent Analysis* is when two transactions access the same
data. One has multiple queries which give inconsistent information.


<a id="org69eb1c4"></a>

## 3.204 More depth on ACID and integrity risks

-   Lewis, D. CO2209 Database systems. (London: University of London,
    2016).


<a id="org48520e7"></a>

## 3.301 Malice and accidental damage

If we make our structures and logic explicit, it&rsquo;s far easier for
human or system errors to be handled appropriately or avoided. Some
actions can still cause trouble to the system, examples of which
are discussed below:

-   **SQL Injection:** adding malicious code into normal operations

-   **Privilege Escalation:** malicious agent gaining direct access to
    the database

-   **User Error:** use intends to do one thing but does something
    entirely different

-   **Non-confidential data sharing:** confidential data being shared
    inappropriately


<a id="org4aaab68"></a>

## 3.303 Security and user policies with SQL

Users in SQL have fine grained control of privileges:

-   Create, edit users

-   Create, edit, use databases

-   Create, edit, use tables

-   Create, edit, use data

A user policy <span class="underline">must</span> be defined in advance if we want to avoid
common pitfalls with regards to access control. A consideration
should be given to whether a particular user needs separate
*roles*.

The format for controlling access permissions is very simple:

    GRANT privilege
    ON    resource
    TO    username;

For example, if we want user `JonDoe` to be able to `SELECT` data
from tables `Planets` and `Moons`, we would write:

    GRANT SELECT
    ON    Planets, Moons
    TO    JonDoe;

If `JonDoe` also requires permissions to `INSERT` data into these
tables, the previous can be amended to:

    GRANT SELECT, INSERT
    ON    Planets, Moons
    TO    JonDoe;

A `DROP`<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup> permission would allow `JonDoe` to delete those
tables:

    GRANT SELECT, INSERT, DROP
    ON    Planets, Moons
    TO    JonDoe;

With the addition of `WITH GRANT OPTION`, we let `JonDoe` grant the
same privileges to other users:

    GRANT SELECT
    ON    Planets, Moons
    TO    JonDoe
    WITH GRANT OPTION;

Privileges can be revoked with the `REVOKE` command:

    REVOKE ALL
    ON    Planets, Moons
    FROM  JonDoe;

Roles can be created to streamline user access control. Instead of
granting each permission to every relevant table, we can create a
role and just assign users to that role. This means that any user
assigned to that role will have the exact same set of permissions.

For example, if we&rsquo;re building a system for Astronomers, we may
create a role `Astronomer`:

    CREATE ROLE Astronomer;

And assign permissions to that role:

    GRANT INSERT, SELECT
    ON    Planets, Moons
    TO    Astronomer;

Whenever a new Astronomer joins the team, we assign the username
the `Astronomer` role:

    GRANT Astronomer
    TO    JonDoe;

As a final thought, the goal of all this is grant users the
**minimum** set of privileges required to carry out the intended use
of the system, thus reducing impact of error or malice.


<a id="orgb7c4256"></a>

## 3.402 Further reading

-   Date, C.J. [Database Design and Relational Theory](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5997273). (Healdsburg,
    CA: Apress, 2019) Chapter 4. FDs and BCNF (informal)


<a id="orgd88a53e"></a>

# Week 7

Key Concepts

-   Use database interactions in a data analysis context
-   Use database queries in node and PHP web applications
-   Connect to an SQL-based database from a range of clients


<a id="org808d612"></a>

## 4.004 Getting practice with MySQL (Lab introduction)

SQL has a few Aggregate Functions which are very useful for
generating summary of data. The general structure is:

    SELECT   BoughtFor,
    	 SUM(Price)
    FROM     Shopping
    GROUP BY BoughtFor;

Some of the available functions are:

-   **SUM:** Computes a regular sum of the group

-   **AVG:** Computes the average of the group

-   **STD:** Computes the standard deviation of the group

-   **VARIANCE:** Computes the variance of the group

-   **MAX:** Produces the maximum values of the group

-   **MIN:** Produces the minimum value of the group

-   **COUNT:** Produces a count of the number of things we have
    aggregated in our group

-   **COUNT(DISTINCT):** Produces a count of the distinct items in the
    group

-   **GROUP\_CONCAT:** Valid for string data, concatenates the entire
    group into a single string


<a id="org796acc5"></a>

## 4.007 Connecting to an SQL RDBMS

Database libraries help us create a persistent connection to the
database and exchange queries and results.

In most cases, to connect to database we will follow one of the two
paradigms shown below:

    conn = newConnection(host, username, password, database);
    conn.connect();

or

    conn = connect(host, username, password, database);

To send queries, the common paradigms are as follows:

    resource = conn.execute(query);
    resource.fetchData();

or

    result = conn.query(query);

In general, a response is an iterable container.


<a id="orga22ae2c"></a>

# Week 8

Key Concepts

-   Use database interactions in a data analysis context
-   Use database queries in node and PHP web applications
-   Connect to an SQL-based database from a range of clients


<a id="orga9999bb"></a>

## 4.201 Using libraries to update data in a database

Any query to the database works the same as any other. For example,
an `INSERT` can be carried out as shown below.

    const addActor = `INSERT INTO Actors
    Values ("${actor.name}, ${actor.gender},
    	 ${actor.birthdate}");`;
    
    connect.query(addActor);

Any input must be sanitized to avoid SQL Injection attacks.


<a id="org014a83b"></a>

## 4.402 Further reading

-   [nodejs](https://github.com/mysqljs/mysql#readme)

-   [PHP](http://www.php.net/mysqli)

-   [Python](https://dev.mysql.com/doc/connector-python/en/connector-python-introduction.html)


<a id="orgb5dc201"></a>

# Week 9

Key Concepts

-   Evaluate and explain the strengths and limitations of
    Normalisation
-   Analyse a database and assess strategies for optimisation for
    speed or reliability


<a id="orgad7e7c3"></a>

## 5.101 Query efficiency

The most expensive operations in a database are:

-   **Searching:** often involve checking values on every entry in a
    table

-   **Sorting:** ordering data by a given column, ascending or
    descending

-   **Copying:** reading and writing a subset of the data points

When our queries start to get slow, these are the things to look
out for; i.e. these are the places where we&rsquo;re likely to find
optimization opportunities.

For example, when searching, if we know our data is already sorted,
we can use Binary Search for finding what the row we&rsquo;re looking
for.

Using sorted tables like mentioned above has the benefits of being
as fast as tree indexes and requiring no extra space, however we
can only choose one column to be the primary key.

Another option is use indexes, which usually is implemented as a
[B-tree](https://en.wikipedia.org/wiki/B-tree) or as a [Hash table](https://en.wikipedia.org/wiki/Hash_table). The index can also be much smaller than
the table itself, which may let us keep it in memory, rather than
in disk.

B-trees generalize the concept of Binary Search Trees to nodes with
more than two children, as such, it maintains all BST properties of
space and time complexity. These properties are summarized below:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Complexity</b></th>
<th scope="col" class="org-left"><b>Average</b></th>
<th scope="col" class="org-left"><b>Worst</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left"><i>Space</i></td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
</tr>


<tr>
<td class="org-left"><i>Search</i></td>
<td class="org-left">\(\mathcal{O}(\log n)\)</td>
<td class="org-left">\(\mathcal{O}(\log n)\)</td>
</tr>


<tr>
<td class="org-left"><i>Insert</i></td>
<td class="org-left">\(\mathcal{O}(\log n)\)</td>
<td class="org-left">\(\mathcal{O}(\log n)\)</td>
</tr>


<tr>
<td class="org-left"><i>Delete</i></td>
<td class="org-left">\(\mathcal{O}(\log n)\)</td>
<td class="org-left">\(\mathcal{O}(\log n)\)</td>
</tr>
</tbody>
</table>

B-trees also support range searching and approximate searching. In
comparison, Hash tables are very fast, as summarized below.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Complexity</b></th>
<th scope="col" class="org-left"><b>Average</b></th>
<th scope="col" class="org-left"><b>Worst</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left"><i>Space</i></td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
</tr>


<tr>
<td class="org-left"><i>Search</i></td>
<td class="org-left">\(\mathcal{O}(1)\)</td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
</tr>


<tr>
<td class="org-left"><i>Insert</i></td>
<td class="org-left">\(\mathcal{O}(1)\)</td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
</tr>


<tr>
<td class="org-left"><i>Delete</i></td>
<td class="org-left">\(\mathcal{O}(1)\)</td>
<td class="org-left">\(\mathcal{O}(n)\)</td>
</tr>
</tbody>
</table>

Hashing algorithms can be algorithms and hash tables can&rsquo;t support
range searching or approximate searching.


<a id="org1bf9287"></a>

## 5.103 Removing the safety net: denormalisation

Normalisation can reduce disk reads by only reading the portion of
data that is necessary for our application. It can also reduce
integrity checks and reduces storage requirements. However, it
increases the use of joins which can be expensive.

One approach to mitigate the problem of joins is to cache some
joined selects in memory. That way, future joined selects can be
immediately returned from the cache, rather than hitting the
backing store again. While this can give us some performance
benefits, it&rsquo;s risky for highly dynamic data.

An alternative approach is to employ *Views*. A View will act as a
virtual table from which we can request data using regular queries.


<a id="orgb4e9cbd"></a>

# Week 11

Key Concepts

-   Explain the principles of distributed databases
-   Describe the Map/Reduce algorithm
-   Discuss relative merits of local, relational databases and
    distributed databases


<a id="orgaf768ea"></a>

## 6.001 Introduction to distributed databases and alternative database models

With the rise of Web and Big Data, grew the need for distributed
databases. In a distributed database system, the user should not be
aware that a distributed database is being used. It should behave
the same way as if data was held all in one place.

There are a few reasons why distributing the database may become an
interesting proposition. Some of which are shown below.

-   **Parallelization:** By distributing the data, we can enable
    parallelization of our operations without locks getting in the
    way.

-   **No single point of failure:** If one instance of the database
    fails, we can replace it with another system on the fly with
    minimal to no user impact.

-   **Dividing large dataset:** In case of a large dataset, we may not
    want to process it all in one place.


<a id="org308bbd0"></a>

## 6.101 Approaches to distributing RDBMS

Requirements for distributing databases.

-   **Local autonomy:** Sites should operate independently, i.e. one
    site should <span class="underline">not</span> be able to interfere with another&rsquo;s
    operations. Moreover, no site should <span class="underline">rely</span> on another for its
    own operation.

-   **No centralization:** No single site should be able to control
    transactions or operations. No single site failure should break
    the system.

-   **Continous operation:** The system is available most of the time
    and reliable.

-   **Location independence:** The user should not know <span class="underline">where</span> the
    data might be located. Data can be moved from one location to
    another without changing functionality.

-   **Partition independence:** The user doesn&rsquo;t need to know how the
    data is partitioned and the data can be partitioned without
    changing functionality.

-   **Replication independence:** Distributed databases often required
    duplicate copies of data. The user need not be aware that
    replication is used.

-   **Distributed queries:** Execute queries close to the data.

-   **DBMS independence:** In theory, we should be able to distribute
    data over different DBMS systems.

-   **Others:** other important requirements
    -   Hardware independence
    -   OS independence
    -   Network independence

A few important concepts are summarized below:

-   **Partitioning:** How will the data be divided? Sometimes called
    *fragmentation*.
    -   **Vertical partitioning:** Dividing table by columns
    -   **Horizontal partitioning:** Dividing table by rows
-   **Catalogue management:** How is information about the data
    distributed?
-   **Recovery control:** Transactions usually use *two-phase
    protocol*. This requires on site to act as a **coordinator** in any
    given transaction.
-   **Brewer&rsquo;s Conjecture:** Three goals (CAP) in tension.
    -   **Consistency:** All parts of the database should converge on a
        consistent state
    -   **Availability:** Every request should result in a response
        eventually
    -   **Partition tolerance:** If a network flaw breaks the network
        into separate subnets, the database should run and recover


<a id="org1eb14de"></a>

## 6.103 Distributed database tradeoffs: gains and losses

-   Brewer, E. &rsquo;[CAP Twelve Years Later: How the &ldquo;Rules&rdquo; have
    Changed](https://ieeexplore.ieee.org/document/6133253)&rsquo;, Computer 45(2) 2012, pp.23-29.


<a id="org6fcedff"></a>

## 6.201 Key/Value databases and MapReduce

*If distributing databases is complex, simplify your data
structures.*

When using key-value databases, we only have two columns. One
column for the key and one for the value associated with that
key. By doing this, we do away with the concept of integrity and
foreign keys, which greatly simplifies the process of distributing
the database.

Key-value databases imply the following:

1.  Easy parallel processing
2.  Easy partition
3.  Partition is always horizontal
4.  Processing must happen near the data where possible

[MapReduce](https://en.wikipedia.org/wiki/MapReduce) is an example of an algorithm for processing key-value
datasets. It consists of a *map* procedure, which performs
filtering and sorting, and a *reduce* procedure, which performation
a summary operation.

The *map* phase is carried out with direct access to the
data. Usually, it loops over all the data. The output of this phase
is a new key-value set.

The *reduce* phase is carried out by reducer workers. They
summarize the data based on a key. We can assign reducer workers
based on key, which enables highly parallel processing.

MapReduce is a very simple algorithm which enables easy data
distribution and parallel processing. It can also recover from
failure of all bu the coordinating node easily.


<a id="org2b40481"></a>

## 6.202 Jeffrey Dean and Sanjay Ghemawat introducing MapReduce

-   Dean, J. and S. Ghemawat &rsquo;MapReduce: a flexible data processing
    tool&rsquo;, Communications of the ACM 53 (1) 2010.


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> `DROP` permission should be granted with care
