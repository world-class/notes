# Week 7

## Lesson 4.1 Introduction to CRUD & REST

### What is CRUD?

This topic is already covered in Database, Network and Web module.

- CRUD - a acronym stands for:
    - CREATE
    - READ
    - UPDATE
    - DELETE

- CRUD describes the foremost basic operations, a persistent storage media must support.
- Consider your mobile phone address book. We can add new people, we can look up entries, we can update their contact numbers, and we may even choose to delete people we're no longer friends with.
- Further reading: Wikipedia entry for [Create, read, update and delete](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete). 

### What is REST?

REST (Representational State Transfer): 
- A design pattern and software architecture.
- For building scalable web servers and web applications.

#### Features of REST:

1. Client-server archiecture: Our web browser as the client to request distant resources from a web server.
2. Statelessness:  We saw this behavior in action in topic 3 when we created a little website with a lot of inter-page links. When a user clicks a link, it takes them to a new page that is unrelated to the previous sites they requested. When the user clicks the link, the request contains all of the information required to convey the data to the user.
3. Cacheable: By minimizing the amount of requests clients make on the backend service, well-designed caching enhances the scalability of a web application. If your website's logo is the same on every page, for example, a client only needs to request it when they first visit the site.
4. Layered system: If the server uses a content delivery network, proxies, or load balancing systems, for example, these must be invisible to the user agent. That is, while the user agent should be aware of the data provided to the client application, the user agent should not be aware of the server side implementation specifics. Regardless of how complicated the architecture is behind the scenes, it should appear as a single destination. Consider requesting a Twitter page or any other social media page: you'd probably use a single URI to access to the main page, and it'll work on any device. These systems, however, are made up of hundreds of load-balanced servers and databases behind the scenes.
5. Uniform interfacte: The server must provide a consistent hypermedia interface, with URIs identifying resources and HTTP replies describing how clients should handle the data, often through media types. HTTP answers must also include any hyperlinks required for the client to travel further via the web application without needing to know the web application's design. As the engine of application state, this is referred to as hypermedia.
6. Code-on-demand (optional): Generally, the server should be able to keep blocks of code for the client that the client needs to run.

Web services that implement all of these six features are typically referred to as RESTful web services. The APIs they present to user agents are called RESTful APIs. A RESTful API usually has three common features for clients.

Further reading:

- Wikipedia entry for [Representational state transfer](https://en.wikipedia.org/wiki/Representational_state_transfer).
- Sections 5.1 and 5.2 of Fielding's PhD thesis: Fielding, R.T. ['Architectural styles and the design of network-based software architectures'](https://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm), Dissertation University of California Irvine, 2000. 


### Web clients and REST

#### URI classes

|URI type|Example|
|Data request|http://api.server.com/books and http://api.server.com/book/item1 |
|Operation request|http://api.server.com/calculate_sales|

#### Canonical REST behaviors

|HTTP Method|Intended resource behaviour|
|GET|Retrieve a resource (data)|
|PUT|Send data and create a resource|
|POST|Request an operation|
|PATCH|Send data and update a resource|
|DELETE|Delete a resource|

#### Typical REST behaviors

|HTTP Method|Intended resource behaviour|
|GET|Retrieve a resource (data)|
|PUT/POST|Send data and create a resource or request an operation|
|PUT/POST|Request an operation|
|POST/PATCH/UPDATE|Send data and update a resource|
|DELETE|Delete a resource|


#### Clean and messy URIs

**Messry URI**: http://example.com/classes?category=Computer&price=1000
**Clean URI**: http://example.com/classes/computer/

Clean URI is good for search engine optimization and more user friendly.

### CRUD and REST

Relationship of CRUD, REST, database

|CRUD|Database|REST (Formal definition)|REST (Typical semantics)|
|CREATE|INSERT|POST|POST/PUT|
|READ|SELECT|GET|GET|
|UPDATE|INSERT/UPDATE|PUT|PATCH/POST/PUT|
|DELETE|DELETE|DELETE|DELETE|


