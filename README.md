# Arena Scheduling Simulator

## Team
* Akshat Shah (Project Manager)
* Michael McPartland (Product Manager, QA Engineer)
* Tyson Dennison (Development Manager, Development Engineer)
* Jeremie Hews (QA Manager, QA Engineer)
* Enzo Norton-Mitchell (Release Manager, Development Engineer)
* Will Jackson (DB Administrator, Development Engineer)
* Patrick Bui (Development Engineer)
* Samuel Steele (Development Engineer)
* Cole Smith (Development Engineer)
* Logan O'Roark (Development Engineer)

## Role Responsibilities
* Leads
    * The **product manager** is responsible for identifying client needs and deciding upon application features before engineers develop them.
    * The **project manager** is responsible for managing a timeline for the entire project and ensuring the project will be done on or before the final deadline.
    * The **development manager** is responsible for ensuring the development team meets deadlines set by the project manager and carries out the development of features decided upon by the product manager. They must also ensure there is high-quality documentation for our codebase.
    * The **QA manager** is responsible for ensuring the QA team prevents any and all defects associated with the project before the application or its changes go to production.
    * The **release manager** is responsible for the optimal use of GitHub by the team, including branches, merging and pull requests, main branch stability, and more.
    * The **DB administrator** is responsible for managing and securing the database, including its schema and data.
* Engineers
    * The **QA engineer** is responsible for identifying and fixing any defects with the application through thorough testing.
    * The **development engineer** is responsible for writing code to create the application's backend.

# This document provides information for the API Endpoints related to the A.S.S.

## Routing
* /courses
   * ?semester=
   * ?location=
   * ?level=
   * /id=
* /exceptions
   * /noPeriods
   * /noSemester
   * /noLevel
   * /noCategories
   * /noSubcategories
   * /noLocation
* /categories
* /subCategories

# Documentation Standards
* Return values are documented in their respective classes
* Each class also provides a sample representation in JSON
* The API Endpoint indicates variables using braces, e.g. {id}
* Query parameters refer to supplementary arguments specified in the URL as part of the query string, e.g. ?page=3&per=25
