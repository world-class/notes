
# Table of Contents

1.  [Week 1](#org759754a)
    1.  [1.01 Welcome to the course](#org7db1dcd)
    2.  [1.06 Introduction to development environments and Python](#org9edabba)
    3.  [1.07 Getting to grips with Python](#org2db7f5d)
    4.  [1.103 Jupyter code cells](#org0e0394c)
    5.  [1.105 Jupyter Notebook basics](#orgde94c0e)
    6.  [1.106 Using Python as a Calculator](#org8833933)
2.  [Week 3](#orgefe71e4)
    1.  [2.01 Becoming familiar with Python](#orge5f4a36)
    2.  [2.03 Built-in types in Python](#org992be59)
    3.  [2.05 Mapping operators to functions](#org15c00c2)
    4.  [2.104 Introduction to conditional logic](#org90320d4)
    5.  [2.105 Functions and reuse](#org872332a)
    6.  [2.201 Conditions and logic](#org07370dc)
    7.  [2.202 More conditions](#org2950e37)
3.  [Week 4](#org769a45e)
    1.  [2.301 Introduction to lists](#org99d88b8)
    2.  [2.302 Lists](#org75cc1ff)
    3.  [2.305 Loops and iteration](#org7658fd8)
    4.  [2.401 Libraries and dependencies](#org9caae13)
4.  [Week 5](#orgf267679)
    1.  [3.01 Introduction to data](#orgb9638ca)
    2.  [3.02 Data structures and data types](#org7a541c7)
    3.  [3.04 Data handling](#orgc40da5c)
    4.  [3.05 Working with text-based data](#orgbc444e6)
    5.  [3.06 counting words the verbose way](#org2f6d51b)
    6.  [3.07 Programming activity: reading files](#org2c6d0de)
5.  [Week 6](#org297682e)
    1.  [3.201 The dictionary data type](#org3e991e4)
6.  [Week 7](#orgf77c945)
    1.  [4.01 Introduction](#orgf662032)
    2.  [4.03 Exploring the CSV data format](#org214d2c6)
    3.  [4.04 Online documentation](#org725fe2b)
    4.  [4.05 Getting started with Pandas and handling Data](#orgd8c48ff)
7.  [Week 8](#orgdca0592)
    1.  [4.101 Working with CSV in Python](#org10e50e1)
    2.  [4.104 Data processing libraries used to improve efficiency](#orga4a5827)
    3.  [4.105 Introduction to the JSON format](#org986ff61)
    4.  [4.106 Handling JSON files in Python](#org57b57d7)
8.  [Week 9](#org5538220)
    1.  [5.01 Introduction to retrieving data from the web](#org8bdf5e6)
    2.  [5.02 Handling data on the web](#org3afdecb)
    3.  [5.04 HTTP and transferring data via the web](#org06e4dd6)
    4.  [5.05 Introduction to web scraping](#org6481910)



<a id="org759754a"></a>

# Week 1

Key Concepts

-   Set up and run Jupyter Notebook on a Windows, Mac or Linux
    operating system.
-   Write and explain simple Python programs using variables and
    mathematical operators.


<a id="org7db1dcd"></a>

## 1.01 Welcome to the course

Python was chosen for this course due to its simplicity, ease of
use and collection of freely available tools.

A print statement in python is simply:

    print("Welcome to Python!")

We can also write our code in a file ending with the extension
`.py` and run it through the Python interpreter, like so:

    $ python my_file.py

During the course we will rely heavily on [Jupyter Notebooks](https://jupyter.org/). This
will give us a nice interface to work with.


<a id="org9edabba"></a>

## 1.06 Introduction to development environments and Python

There are many Development Environments available. Only **emacs** is
worth your time. Some folks will swear that *VI* is great, however,
remember that *VI VI VI* is the number of the beast (trollface).

Jokes aside, a development environment is a very personal
choice. One can visit [World Class Text Editor section](https://world-class.github.io/REPL/software/#text-editors) for a small
list of what&rsquo;s available.


<a id="org2db7f5d"></a>

## 1.07 Getting to grips with Python

Read the following introductory reading, which will help you get to
grips with Python:

McKinney, W. Python for data analysis: data wrangling with Pandas,
NumPy, and IPython. (Sebastopol, CA: O&rsquo;Reilly, 2017) 2nd edition,
Chapter 1 Preliminaries and Chapter 2 Python Language Basics,
IPython, and Jupyter Notebooks, pp.1–46.

Available [here](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5061179).


<a id="org0e0394c"></a>

## 1.103 Jupyter code cells

When we create a new Notebook in Jupyter, it comes with what are
referred to as *cells*. Cells can be defined in terms of what they
can do and we can change their types too.

Code cells can be used to write code. In our case using Python.

Markdown cells are used to write Markdown, which will serve as
documentation of textual input.

Raw NBConvert probably won&rsquo;t be used and won&rsquo;t be discussed.


<a id="orgde94c0e"></a>

## 1.105 Jupyter Notebook basics

Click on the links to below to read about Jupyter Notebook basics
and using markdown cells in Jupyter:

-   [Jupyter Notebook basics](https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Notebook%20Basics.html)
    [Using markdown cells in Jupyter](https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Working%20With%20Markdown%20Cells.html)


<a id="org8833933"></a>

## 1.106 Using Python as a Calculator

Click on the link below to read about using Python as a calculator:

-   [Using Python as a Calculator](https://docs.python.org/3.5/tutorial/introduction.html#using-python-as-a-calculator)


<a id="orgefe71e4"></a>

# Week 3

Key Concepts

-   Import Python, NumPy and SciPy modules, and use them to compute
    basic statistics.
-   Use logic and iteration to fill arrays with data, sum array
    elements and locate array elements with certain characteristics.
-   Identify and use correct syntax and explain the purpose of
    built-in variable types int, float and list.


<a id="orge5f4a36"></a>

## 2.01 Becoming familiar with Python

Python is very strict on indentation. Code blocks are separated by
indentation. For example, the following piece of code:

    def my_function():
        print("Output")
    
    if (x > 10):
        print(x)

Is not the same as this one:

    def my_function():
        print("Output")
    
        if (x > 10):
    	print(x)

Python has a set of familiar operators:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">**Operator**</th>
<th scope="col" class="org-left">**Operation**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">`+`</td>
<td class="org-left">Addition</td>
</tr>


<tr>
<td class="org-left">`-`</td>
<td class="org-left">Subtraction</td>
</tr>


<tr>
<td class="org-left">`*`</td>
<td class="org-left">Multiplication</td>
</tr>


<tr>
<td class="org-left">`/`</td>
<td class="org-left">Division</td>
</tr>


<tr>
<td class="org-left">`//`</td>
<td class="org-left">Floor division</td>
</tr>


<tr>
<td class="org-left">`**`</td>
<td class="org-left">Exponentiation</td>
</tr>


<tr>
<td class="org-left">`%`</td>
<td class="org-left">Modulus</td>
</tr>
</tbody>
</table>

Python also has variables and types. Variables can be virtually any
name, except for a few reserved words, such as `and`, `not`,
`with`, `else`, `false`, and a few others.

We initialize a variable by assigning a value to it:

    string_a = "foo"
    int_x = 100
    truthy = True
    falsey = False

Regarding types, Python is dynamically typed which means a type is
inferred at the time a value is assigned to a variable. Python is
unable to implicitly coerce a type mutation, which means Python is
a strongly typed language.

Python has a rich collection of built-in data structures. Among
them are:

-   **Lists:** Mutable sequence of comma separated values
-   **Dictionaries:** Unordered, unique key-value pairs
-   **Tuples:** Immutable sequence, comma separated
-   **Sets:** Unordered collections, unique values

Functions are designed around reuse. The basic function definition
looks like the one below:

    def function_name(param1, param2, param3):
        if param1 > 10:
    	print("Large value")
    
        return param2 + param3

Parameters to functions are optional.

Python also has the concept of Modules. They are a way to package
functionality into a block of code that can be imported
elsewhere. Python has a rich set of open source modules ready for
use in different applications.

We can import parts of a module, or the entire module. It&rsquo;s
convention to use the `from` keyword for the current namespace. A
few examples:

    import random
    from fibo import fib
    import numpy as np

When processing data, we can pull data from a database, scrape the
web, or use files in local storage. Data can be stored either in
binary format or some form of text. Data representation is
important.


<a id="org992be59"></a>

## 2.03 Built-in types in Python

Read through the following literature on built-in types in Python:

-   [Built-in types](https://docs.python.org/3.5/library/stdtypes.html?highlight=list#numeric-types-int-float-complex%E2%80%8B)


<a id="org15c00c2"></a>

## 2.05 Mapping operators to functions

Read through the following documentation.

-   Python [10.3.1 Mapping operators to functions](https://docs.python.org/3.5/library/operator.html?highlight=operators#mapping-operators-to-functions), Python language
    documentation 10.3. operator – Standard operators as functions.


<a id="org90320d4"></a>

## 2.104 Introduction to conditional logic

Python supports our regular `if`, `else`, and `elif` constructs. It
also has the expected set of comparison operators `>`, `>=`, `<`,
`<=`, `==`, and so on.


<a id="org872332a"></a>

## 2.105 Functions and reuse

We define a function to make it easier to reuse code by changing a
few parameters. Once defined, we can call the same function
as many times as we want. To call a function, we input its name
followed by parenthesis.

    def my_function(eat):
        print(eat + " for dinner")
    
    def double(x):
        return 2 * x
    
    my_function("Carrots")
    my_function("Cheese")
    my_function("Bread")
    
    print(double(2))
    print(double(3))
    print(double(4))


<a id="org07370dc"></a>

## 2.201 Conditions and logic

We combine logical statements with the connectives `or` and `and`.

    a = 100
    b = 50
    c = 1000
    
    if a > b or a > c:
        print("a is greater than b or c")
    if a > b and a > c:
        print("a is greater than b and c")


<a id="org2950e37"></a>

## 2.202 More conditions

In Python, there are quite a few ways to deal with conditions. We
might use certain conditions in cases where:

-   we want to identify a time when a condition is met
-   we want to iterate through a list of items
-   we want to do something until something else happens, at which
    point we stop.

Click on the links below and read through the documentation that
covers these conditional situations: Python 4.1, 4.2, 8.2 – ‘if’
‘for’ ‘while’.

-   Python [4.1. if statements](https://docs.python.org/3.5/tutorial/controlflow.html?highlight=control%20flow#if-statements), Python language documentation
    – 4. Built-in types.
-   Python [8.2. The while statement](https://docs.python.org/3.5/reference/compound_stmts.html#the-while-statement), Python language documentation
    – 8. Compound statements.
-   Python [4.2. for statements](https://docs.python.org/3.5/tutorial/controlflow.html#for-statements), Python language documentation
    – 4. Built-in types.


<a id="org769a45e"></a>

# Week 4

Key Concepts

-   Import Python, NumPy and SciPy modules, and use them to compute
    basic statistics.
-   Use logic and iteration to fill arrays with data, sum array
    elements and locate array elements with certain characteristics.
-   Identify and use correct syntax and explain the purpose of
    built-in variable types int, float and list.


<a id="org99d88b8"></a>

## 2.301 Introduction to lists

Lists are akin to *arrays* in other languages. It&rsquo;s a method for
storing multiple values in a single variable. We can create a list
by placing comma separate values inside square brackets `[]`. Like
shown below:

    car_emissions = [1.5, 1.26, 2.6]
    print(car_emissions)

We can access individual elements of the list by indexing the
variable. Note that indices start at 0, not 1. So the first element
would be accessed like shown below:

    print(car_emissions[0])

For other values, we just change the index. An interest peculiarity
of python lists is that it works like a *ring*; that is to say that
using negative indices allows us to walk backwards. In other words,
the last element of a list is always at index `-1`:

    print(car_emissions[-1])

We don&rsquo;t have to always index the list using a literal number. We
can use a variable as well:

    index = 1
    print(car_emissions[index])

We can easily compute the length of a list using the `len()`
method:

    print(len(car_emissions))

Lists can also be indexed by ranges of numbers. If we want to print
elements 0 through 2, we can use:

    print(len(car_emissions[0:2]))

As we can see, the interval of the range is not inclusive of the
final value. This means that the range `0:1` will only print the
0<sup>th</sup> element.


<a id="org75cc1ff"></a>

## 2.302 Lists

Click on the link below to read through the documentation on lists:

-   Python [4.6.4. Lists](https://docs.python.org/3.5/library/stdtypes.html?highlight=list#lists), Python language documentation – 4. Built-in
    types.


<a id="org7658fd8"></a>

## 2.305 Loops and iteration

Iteration allows us to work through a series of objects. Python has
different looping constructs to help us iterate through several
objects. The first example is the `while` loop:

    i = 1
    while i <= 10:
        print(i)
        i += 1

We can also use a `for` loop which works rather like `while` loop
above:

    for i in range(10):
        print(i)
        i += 1

In Python, there are other ways to work through a list. For
example:

    teams = ["red", "blue", "green"]
    
    for x in teams:
        print(x)


<a id="org9caae13"></a>

## 2.401 Libraries and dependencies

Python has a rich set of libraries available for our use. But how
do we use them? We use the `import` keyword. To demonstrate, we
import `NumPy` and `scipy`, two important libraries for data
crunching.

After importing the library we can start using functions from the
library, as shown below:

    import numpy as np
    from scipy import stats
    
    x = np.array([1, 2, 3, 4, 5, 6])
    
    np.mean(x)
    stats.describe(x)


<a id="orgf267679"></a>

# Week 5

Key Concepts

-   Explain the difference between lists, dicts and NumPy arrays, and
    select appropriate data structures for particular examples of
    data.
-   Write Python programs that can process and analyse text data in
    lists, dicts and NumPy arrays.
-   Implement linguistic analysis algorithms that can compute word
    distributions, distances between distributions and a distance
    matrix.


<a id="orgb9638ca"></a>

## 3.01 Introduction to data

Python has a rich set of data types available for our use. To name
a few:

-   **String:** a sequence of characters
-   **Boolean:** `True` or `False`
-   **Float:** Decimal numbers
-   **Integer:** Whole numbers
-   **Complex:** Complex numbers

Python also has a rich set of built-in data structures which,
typically, can hold different types of data::

-   **Tuples:** Immutable arrays
-   **Lists:** Mutable arrays
-   **Dicts:** Hash tables

When it comes to encoding, Python supports many character
encodings, including:

-   ASCII (7-bits)
-   Extended ASCII (8-bits)
-   UTF-8 (8-bits)
-   UTF-32 (32-bits)

We can use Python to work with many different file formats. Some
formats are easier to work with than others. A few examples of file
formats are:

-   Flat File Formats
    -   **CSV / TSV:** Tabular data, usually delimited by a special
        character or a *TAB*
-   Non-flat File Formats
    -   **Markup:** HTML, XML, Markdown, etc.
    -   **Data Exchange Formats:** JSON


<a id="org7a541c7"></a>

## 3.02 Data structures and data types

-   McKinney, W. [Python for data analysis: data wrangling with
    Pandas, NumPy, and IPython](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5061179). (Sebastopol, CA: O&rsquo;Reilly, 2017) 2nd
    edition, Chapter 3 Built-in Data Structures, Functions, and
    Files, pp.51–85.

-   [Natural Language Toolkit](https://www.nltk.org/)


<a id="orgc40da5c"></a>

## 3.04 Data handling

To open a file with python we use:

    f = open("myfile.txt", "r")

There are a few different flags that can be passed to `open()`,
here&rsquo;s a summary:

-   **`r`:** Read
-   **`a`:** Append (to the end of the file)
-   **`w`:** Write. If the file doesn&rsquo;t exist, it will also create the
    file
-   **`x`:** Create a file. If the file already exists, it produces an
    error
-   **`t`:** Tells `open()` we&rsquo;re dealing with a text file
-   **`b`:** Tells `open()` we&rsquo;re dealing with binary file


<a id="orgbc444e6"></a>

## 3.05 Working with text-based data

Let&rsquo;s assume we have a file `myfile.txt` with the content:

    The quick brown fox jumped over the lazy dog

If we want to manipulate this data, we have to open the file for
reading as before, then read the data into python, finally we close
the file because it&rsquo;s not needed anymore:

    f = open("myfile.txt", "r")
    data = f.read()
    f.close()

If we want to count the number of words in the file, we need to
break our file contents into words and store the result as a list,
like so:

    words = data.split(" ")

To count the number of words, all we have to do now is compute the
length of the returned list:

    print(len(words))


<a id="org2f6d51b"></a>

## 3.06 counting words the verbose way

Continuing from last section, let&rsquo;s count the frequency of words in
a given input:

    counter = {}
    
    for i in words:
        if i in counter:
    	counter[i] += 1
        else:
    	counter[i] = 1
    
    print(counter)


<a id="org2c6d0de"></a>

## 3.07 Programming activity: reading files

Write a program that reads a text file into memory, then tokenises
it on the space character.

-   <https://docs.python.org/3/library/stdtypes.html#str.split>

The following NLTK documentation might be helpful here:

-   [nltk.tokenize package](http://www.nltk.org/api/nltk.tokenize.html?highlight=tokenize%20package#module-nltk.tokenize)


<a id="org297682e"></a>

# Week 6

Key Concepts

-   Write Python programs that can process and analyse text data in
    lists, dicts and NumPy arrays.
-   Explain the difference between lists, dicts and NumPy arrays, and
    select appropriate data structures for particular examples of
    data.
-   Implement linguistic analysis algorithms that can compute word
    distributions, distances between distributions and a distance
    matrix.


<a id="org3e991e4"></a>

## 3.201 The dictionary data type

A dictionary is a kind of hash table, or associative array.

    mydict = {
        "team": "red",
        "goals": "4",
        "conceded": "2"
    }
    
    x = mydict.get("goals")


<a id="orgf77c945"></a>

# Week 7

Key Concepts

-   Write Python programs that can read and write files in CSV and
    JSON formats.
-   Describe different types of data files and evaluate their
    appropriateness for storing different types of data.
-   Process data for purpose.


<a id="orgf662032"></a>

## 4.01 Introduction

Open Data describes data that is publicly available and free from
restrictions. We can use these data files to experiment and solve
specific issues.

Some sources of Open Data are:

-   <https://data.gov.uk>
-   <https://europeandataportal.eu>
-   <https://data.london.gov.uk>
-   <https://undatacatalog.org/>
-   <https://data.gov>
-   <https://data.gov.in>
-   <https://www.opendata.fi/en>
-   <https://www.kaggle.com/datasets>

When using these data sources, it&rsquo;s common that we have to clean
the data, i.e. remove superfluous, irrelevant, or incorrect
data.


<a id="org214d2c6"></a>

## 4.03 Exploring the CSV data format

CSV stands for *Comma-Separated Values*. This means there are
specific characters that define a &ldquo;field&rdquo; in the dataset. Usually
this character is a comma, hence the name, but it could be
anything.

Most (all?) spreadsheet programs can import CSV files and display
the data in a tabular format in rows and columns of the
spreadsheet. This makes it easy to visualize the data in a
consistent manner.

We can also use a regular text editor (or a great text editor, like
Emacs!! **insert trollface here**) to explore the data. It allows us
to understand conventions about the data format and how it&rsquo;s
usually laid out.


<a id="org725fe2b"></a>

## 4.04 Online documentation

-   Python [14.1. csv – CSV file reading and writing](https://docs.python.org/3/library/csv.html), Python language
    documentation – 14. File formats
-   Python [pandas.read\_csv](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_csv.html), pandas 0.22.0 documentation – API
    reference
-   Python [pandas.DataFrame.to\_csv](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.to_csv.html), pandas 0.22.0 documentation –
    API reference – pandas.DataFrame
-   Python [API reference – Reindexing / Selection/ Label
    manipulation](https://pandas.pydata.org/pandas-docs/stable/reference/index.html), pandas 0.22.0 documentation
-   Python [pandas.read\_json](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_json.html), pandas 0.22.0 documentation – API
    reference


<a id="orgd8c48ff"></a>

## 4.05 Getting started with Pandas and handling Data

-   McKinney, W. [Python for data analysis: data wrangling with
    Pandas, NumPy, and IPython](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=5061179). (Sebastopol, CA: O&rsquo;Reilly, 2017) 2nd
    edition, **Chapter 5 Getting Started with pandas, pp.125–167** and
    **Chapter 6 Data Loading, Storage, and File Formats, pp.169–181**.


<a id="orgdca0592"></a>

# Week 8

Key Concepts

-   Write Python programs that can read and write files in CSV and
    JSON formats.
-   Describe different types of data files and evaluate their
    appropriateness for storing different types of data.
-   Process data for purpose.


<a id="org10e50e1"></a>

## 4.101 Working with CSV in Python

To work with CSV data in python, we must open the file and read its
contents into python. Afterwards, we can parse the data into
something we can work with.

    import csv
    
    list = []
    
    with open("data.csv") as csvfile:
        reader = csv.reader(csvfile, delimiter = ",")
        for row in reader:
    	list.append(float(row[6]))
    
    list = list[1:]
    print(sum(list) / len(list))


<a id="orga4a5827"></a>

## 4.104 Data processing libraries used to improve efficiency

There are a plethora of python libraries to aid data processing,
some of which provide very efficient data processing primitives for
our use. Converting our previous example to use some of these
libraries, we get:

    import pandas as pd
    
    df = pd.read_csv("data.csv")
    
    # Basic statistics
    print(df.describe())
    
    # Sorting
    print(df.sort_values(by='Value', ascending=False, na_position='first'))
    
    # Filtering
    print(df.filter(like='50', axis=0))


<a id="org986ff61"></a>

## 4.105 Introduction to the JSON format

The *JavaScript Object Notation*, or [JSON](https://en.wikipedia.org/wiki/JSON), format is open standard
data format that uses human-readable text to store and transfer
data in key-value pair form.

A JSON file represents data in a Tree structure, which can make it
slightly more complex to deal with. An example of JSON format
follows:

    {
      "staff":
      {
        "name": "Sean",
        "age": 31,
        "city": "London"
      }
    } 


<a id="org57b57d7"></a>

## 4.106 Handling JSON files in Python

To manipulate JSON data in python, we need the `json` package.

    import json
    
    mestring = '{ "staff": { "name": "Sean", "age": 31, "city": "London" } }'
    
    # medict = {
    #     "staff":
    #     {
    # 	"name": "Sean",
    # 	"surname": "McGrath",
    # 	"age": 31,
    # 	"city": "London"
    #     }
    # } 
    
    with open('me.json', 'r') as handle:
        medict = json.load(handle)
        print(medict)
        print(medict['name'])

We can also use `pandas`:

    import json
    import pandas as pd
    
    with open('me.json', 'r') as handle:
        medict = json.load(handle)
    
        df = pd.DataFrame.from_dict(medict, columns=['name', 'surname'])


<a id="org5538220"></a>

# Week 9

Key Concepts

-   Explain what HTTP is and how the client–server model makes it
    possible to access data on the internet.
-   Implement an HTTP client in Python and use it to retrieve data
    from an HTTP server in HTML and JSON format.
-   Read data from RESTFul web APIs.


<a id="org8bdf5e6"></a>

## 5.01 Introduction to retrieving data from the web

HTTP is the protocol used for serving web applications. It&rsquo;s based
on a Request-Response architecture in that the client sends a
request and the server (maybe) offers a response.

The *lifetime* of a request can be simplified as below:

1.  User types URL in browser
2.  Check cache (Y/N)
3.  DNS lookup of IP address
4.  Browser initiates TCP connection
5.  Browser sends HTTP request
6.  Server handles the request
7.  Browser receives HTTP response
8.  Browser renders content

The protocol dictates this sort of handshake or conversation
between the involved parties. This incurs extra overhead. In order
to produce HTTP requests and parse HTTP responses we need to know
how they are created. We need to know:

1.  HTTP Method
2.  Path
3.  HTTP Version
4.  Request Headers
5.  Request Body

If we&rsquo;re making requests for web pages, those are written in HTML
(HyperText Markup Language). It&rsquo;s a tag-based format that defines
the layout of a webpage.

A browser will build a structure referred to as the DOM (Document
Object Model). This is essentially a tree representation of the web
page. Most elements in elements are composed of opening and closing
tags such as `<body>` and `</body>`, but some are self-closing
tags, such as `<br/>`.

Tags can also have attributes, which are name-value pair added
within the tag.


<a id="org3afdecb"></a>

## 5.02 Handling data on the web

-   Python &rsquo;[HTTP protocol client](https://docs.python.org/3/library/http.client.html)&rsquo;, Internet protocols and support
-   Python &rsquo;[Simple HTML and XHTML parser](https://docs.python.org/3.5/library/html.parser.html)&rsquo;
-   Pyquery &rsquo;[A jquery-like library for Python](https://pythonhosted.org/pyquery/)&rsquo;
-   [Requests: HTTP for Humans](https://requests.readthedocs.io/en/master/)


<a id="org06e4dd6"></a>

## 5.04 HTTP and transferring data via the web

A request will start with an HTTP verb. Usually a *POST* or a
*GET*. That will follow with a URL. The server will send back a
response containing a status code.

Something like so:

    GET /~smcgr004/test.html HTTP/1.1
    User-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)
    Host: doc.gold.ac.uk
    Accept-Language: en-us
    Accept-Encoding: gzip, deflate
    Connection: Keep-Alive

A response may look like this:

    HTTP/1.1 200 OK
    Date: Mon, 10 Nov 2020 12:00:00 GMT
    Server: Apache/2.2.15 (CentOS)
    Last-Modified: Wed, 10 Nov 2020 11:00:00 GMT
    Content-Length: 88
    Content-Type: text/html
    Connection: Closed


<a id="org6481910"></a>

## 5.05 Introduction to web scraping

We can issue HTTP programmatically with Python. Like shown in the
example below:

    from bs4 import BeatifulSoup
    import requests
    import json
    
    def get_soup(URL, jar=None):
        request_headers = {
    	"update_insecure_request": "1",
    	"user-agent": "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/2010 0101 Firefox/47.0",
    	"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0",
    	"accept-enconding": "gzip, deflate, br",
    	"accept-language": "en-US,en;q=0.8"
        }
    
        if jar:
    	r = requests.get(URL, cookies=jar, headers=request_headers)
        else:
    	r = requests.get(URL, headers=request_headers)
    	jar = requests.cookies.RequestsCookiesJar()
    
        print(r.url)
        data = r.text
        soup = BeatifulSoup(data, "html.parser")
    
        return soup, jar

We can use this sample method like shown below:

    soup, jar = get_soup('http://doc.gold.ac.uk/~smcgr004/test.html')
    print(jar)

