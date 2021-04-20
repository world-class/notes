
# Table of Contents

1.  [Week 1](#orgf084678)
    1.  [1.005 Reading list](#orgd443732)
    2.  [1.101 Where does data come from?](#org4bcf1fd)
    3.  [1.103 Ordering some data: What&rsquo;s on the menu?](#org8c7ab9a)
    4.  [1.105 What does your data look like?](#orgb368f8d)
    5.  [1.201 Bringing data sources together](#orgfe3380b)
    6.  [1.203 Licenses, sharing and ethics](#org3f2d451)
    7.  [1.204 Licensing](#org2ddb784)
2.  [Week 2](#org5f344e0)
    1.  [1.301 What shape is your data? Introduction](#orgdcd5345)
    2.  [1.302 What shape is your data? Tables](#org62e40a2)
    3.  [1.304 What shape is your data? Trees](#orgdb41ee0)
    4.  [1.306 What shape is your data? Other](#orga3d9d0c)
    5.  [1.402 Further reading](#org6f79232)
3.  [Week 3](#org184b8a4)
    1.  [2.001 Welcome to Relational Databases](#orgfb50737)
    2.  [2.101 Drawing a database I: Basic Entity-Relationship diagrams](#org948ed7e)
    3.  [2.104 Speaking to databases I: Basic SQL](#org2408c90)
4.  [Week 4](#org4765a18)
    1.  [2.201 Introducing Joins](#org1e0290c)
    2.  [2.203 Drawing a database II: More about joins](#org5f453aa)
    3.  [2.204 E/R diagrams summary](#orge01963c)
    4.  [2.301 Database integrity and the role of keys](#orgf4c8098)
    5.  [2.303 Speaking to Databases II: SQL for joins and keys](#orga4d3ae9)
    6.  [2.402 Further reading](#orgc81e4a2)



<a id="orgf084678"></a>

# Week 1

Key Concepts

-   Find, describe and evaluate sources of data

-   Understand different forms in which data may come

-   Evaluate data-related access and reuse rights


<a id="orgd443732"></a>

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


<a id="org4bcf1fd"></a>

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


<a id="org8c7ab9a"></a>

## 1.103 Ordering some data: What&rsquo;s on the menu?

-   Post 1: Trevor Munoz, &rsquo;[What IS on the menu](http://trevormunoz.com/notebook/2013/08/08/what-is-on-the-menu-more-work-with-nypl-open-data-part-one.html)&rsquo;

-   Post 2: Trevor Munoz, &rsquo;[Refining the problem](http://trevormunoz.com/notebook/2013/08/19/refining-the-problem-more-work-with-nypl-open-data-part-two.html)&rsquo;


<a id="orgb368f8d"></a>

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


<a id="orgfe3380b"></a>

## 1.201 Bringing data sources together

-   [Linked Jazz](https://linkedjazz.org/)

-   Pratt Institute, [How Mapping Relationships Between Jazz Musicians
    Elevates Unsung Histories](https://www.pratt.edu/news/view/how-mapping-relationships-between-jazz-musicians-elevates-unsung-histories)


<a id="org3f2d451"></a>

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


<a id="org2ddb784"></a>

## 1.204 Licensing

-   Alex Ball, [How to License research data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data)


<a id="org5f344e0"></a>

# Week 2

Key Concepts

-   Find, describe and evaluate sources of data
-   Understand different forms in which data may come
-   Evaluate data-related access and reuse rights


<a id="orgdcd5345"></a>

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


<a id="org62e40a2"></a>

## 1.302 What shape is your data? Tables

A table has cells with a number of rows and columns. In our case,
every row represents a *thing*. Each column represents a type of
information about that *thing*. Table [2](#org13e6852) shows an
example of such a table:

<table id="org13e6852" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="orgdb41ee0"></a>

## 1.304 What shape is your data? Trees

A tree is Computer Science is based on the metaphor of a real
tree. Figure [1](#orgd6c986e) below shows an example of a simple tree
structure. Every tree has a root node, every branch in the tree has
a path to the root.

Some vocabulary is necessary, the following refers to the tree
from figure [1](#orgd6c986e).

-   The *root* of the tree is node *a*
-   Nodes *e*, *g*, *i*, *k* *l*, *m*, *n*, *o*, *p*, *r*, *s*, and
    *u* are *leaf nodes*
-   Node *f* is a parent of *l*, *m*, and *n*
-   Nodes *l*, *m*, and *n* are children of node *f*
-   Nodes *a*, and *b* are ancestor of nodes *l*, *m*, and *n*
-   Nodes *i*, *j*, and *k* are sibblings
-   Nodes *b*, *c*, *d*, *h*, and others are internal nodes

\begin{figure}[h]
\label{orgd6c986e}
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


<a id="orga3d9d0c"></a>

## 1.306 What shape is your data? Other

One limitation of trees is that each and every node can have a
single parent node. What happens when we need to represent a node
with more than one parent? Perhaps we can reach the same child node
through different paths. If we were dealing with a filesystem,
whenever we add a *symbolic link* to a file, we would break the
representation of the filesystem as a tree. It&rsquo;s clear we need
another structure to represent these sorts of structures. That
structure is a graph.

Figure [2](#org5ef192f) shows a \(K_8\) complete graph. A complete
graph is that where each vertex is connected to every other
vertex. The vertices in a graph could be web pages and the edges
could be links between them, or perhaps each node is a file with
the edges being a filesystem path.

\begin{figure}[h]
\label{org5ef192f}
\centering
\begin{tikzpicture}
  \graph[nodes=state, radius=4cm] { subgraph K_n [n=8, clockwise] };
\end{tikzpicture}
\end{figure}

Blobs are *raw* data representations without a perceivable
structure. Raw sound samples fall into this category. Features are
pieces of information derived from blobs, for example the sample
rate from a raw audio file.

Table [3](#org49b4115) shows a summary of the structures discussed so
far:

<table id="org49b4115" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org6f79232"></a>

## 1.402 Further reading

-   Katie Rawson and Trevos Muñoz, ‘[Against Cleaning](https://dhdebates.gc.cuny.edu/read/untitled-f2acf72c-a469-49d8-be35-67f9ac1e3a60/section/07154de9-4903-428e-9c61-7a92a6f22e51#ch23)’ from Matthew
    K. Gold and Lauren F. Klein Debates in the Digital Humanities, 5
    (University of Minnesota Press, 2019).


<a id="org184b8a4"></a>

# Week 3

Key Concepts

-   Create and explore relational databases using SQL
-   Design a database using Entity/Relationship diagrams
-   Explain core concepts of relations and relational theory


<a id="orgfb50737"></a>

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


<a id="org948ed7e"></a>

## 2.101 Drawing a database I: Basic Entity-Relationship diagrams

An *Entity* is the thing we want to model, it must be uniquely
idenfiable and it may have attributes. Of this, there are two
subtypes:

-   **Weak Entity:** its existence depends on the continued existence
    of other entities. For example, a customer&rsquo;s bank account depends
    on the existence of the account holder. This entity type is
    depicted in figure [3](#orgb1861df).

-   **Strong Entity:** the one which is **not** weak. This entity type is
    depicted in figure [4](#org1af6e67).
    
    \begin{figure}[h]
    \label{orgb1861df}
      \centering
      \begin{tikzpicture}[
       every attribute/.style={fill=green!20, thick},
       every entity/.style={fill=blue!20, thick},
       every relationship/.style={fill=red!20, thick}]
    
      \node[entity, double] (account)   {Account};
    
      \end{tikzpicture}
    \end{figure}
    
    \begin{figure}[h]
    \label{org1af6e67}
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
below and depicted in figure [5](#orgebd031a)):

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
\label{orgebd031a}
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
double line. Figure [6](#org2d67af8) shows the relationship types
in a simple ER Diagram.

\begin{figure}[h]
\label{org2d67af8}
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


<a id="org2408c90"></a>

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


<a id="org4765a18"></a>

# Week 4

Key Concepts

-   Create and explore relational databases using SQL
-   Design a database using Entity/Relationship diagrams
-   Explain core concepts of relations and relational theory


<a id="org1e0290c"></a>

## 2.201 Introducing Joins

Joins are used to make queries that collect data from two
tables. Figure [7](#orgb3d92e5) shows a diagram for the
tables we will use to illustrate how to use Joins.

\begin{figure}[h]
\label{orgb3d92e5}
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

Figures [8](#orgcd27dba), [9](#org23f118e), and [10](#org21c323f), give a visual
representation of some what results will be returned for the joins.

\begin{figure}[h]
\label{orgcd27dba}
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
\label{org23f118e}
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
\label{org21c323f}
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


<a id="org5f453aa"></a>

## 2.203 Drawing a database II: More about joins

Cardinality tells us how many rows in each of the tables
participating in the join matches with how many rows on each of the
table. It&rsquo;s often expressed in terms of a ratio, some of which are
shown below:

-   **1:n:** one row in table \(x\) joins with **zero, one or more** rows
    in table \(y\).
    
    In this case we want to use a Foreign Key by placing the primary
    key of the table \(x\) into the table \(y\). Figure [11](#org6bc9c96)
    shows a depiction of this case in an ER Diagram. If we want to
    show that at least one moon will be available, we use a double
    edge to connect the entity to the relation, as shown in figure
    [12](#orge04e9e6).
    
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
    [13](#org553e910) shows an ER Diagram for this case.
    
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
    shown in figure [14](#org17fbf57). The fix for this case is shown in
    figure [15](#org902d94e), it consists of adding a *Link Table*
    to the model.
    
    The link table is created as shown below:
    
        CREATE TABLE TutorRole (
              Student VARCHAR(100)
              Tutor   VARCHAR(100),
        
              PRIMARY KEY (Student, Tutor),
        );

\begin{figure}[h]
\label{org6bc9c96}
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
\label{orge04e9e6}
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
\label{org553e910}
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
\label{org17fbf57}
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
\label{org902d94e}
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


<a id="orge01963c"></a>

## 2.204 E/R diagrams summary

-   Lewis, D. CO2209 Database systems. (London: University of London,
    2016).


<a id="orgf4c8098"></a>

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


<a id="orga4d3ae9"></a>

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


<a id="orgc81e4a2"></a>

## 2.402 Further reading

-   Chen, P. ‘The Entity-Relationship Model – Toward a Unified View
    of Data’, ACM Transactions on Database Systems 1(1) 1976,
    pp.9–36.

