# Product Manager Documentation
As the product manager, I am responsible for defining what the program needs to accomplish. The following is an outline of the basic features we need to inculde in order for the program to be successful.

## Accessing and Using the Database of Classes
This is the most vital and simple feature we need to develope, and should be a first priority. This feature can be done by an API, taking the request information from the client and accessing the database directly using php. Then it can return the list of classes to the client. This API's only job is to access all of the data from the database

## Search Functionality
The search functionality allows for the client to specify what classes they want to be displayed wihin the list of classes. There are a few different ways we can create this feature. One way is to create another API that handles the searching by itself. It could access the database directly and be able to search by name, location, period, category, etc. Another approach is adding the search functionality to the API that gets the raw data of classes. This could be an easy way to implement the function, but may lead to some difficulties using one API for two different reason, although both reasons are very similar. Either way this is an important feature.

## Saving Classes
The client must be able to save classes from the given list of all classes to create their schedule. We can create a class class and store all relevant information for selected classes, then place all selected classes inside of an array so the client can access it later for scheduling. 

## Creating a Schedule
Clients need to be able to create an Allen High School schedule with their selected classes. Refering to the Front end, the client would be able to drag and drop courses from their saved list on to a schedule template. This feature is something I am not 100% sure how to code and will need to disscus with others. When placing classes inside of the schedule, the schedule must check for corresponding course information and ensure if said class is able to be placed in that respective period. This will be the most difficult part of scheduling as many classes can have several restrictions upon them. We can store special cases with the class information and have the schedule run all special restrictions when that class is assigned a period. Storing the restriction with the class information is important.

## Steam Scheduling Issues
The schedule must be able to check surrounding periods and make sure that there is no conflict with different course locations. An example is that a class at the freshmen centre cannot proceed a class at Steam.

## Class Restrictions Issue
If a class is unable to be placed in the period it is placed in, the class should return to the cliens saved class list and a message detailing what problem ocurred should appear. For instance if a class is a class is only offered 3rd and 4th period and is tried to be placed in 5th period, the class should return to the saved list and a message explaining that the class is not offered during that period will be displayed.

## Saving a Schedule
The finished schedule needs to be able to be saved. Our current ideas on this is create a unique URL for the created schedule that the student could save and be able to share and access later. We also want to have an option to save your schedule as a PDF file so that it may be printed.
