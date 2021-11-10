# Add/remove time slots for classes chosen to schedule
## Functionality
This feature will allow users to add and remove class periods to the schedule they are making.
## Design
Indivdual classes will be elements in a larger dictionary of all classes available to students. There will be another dictionary which will list 0 period therough 8th period. There will be a function that assigns the elements from the larger dictionary to the periods in the scheduling dictionary to the periods. Atlernatively, there will be a function that removes the items from the scheduling dictionary and places them back into the list of classes dictionary. 
## QA
The user would be able to press an add class button on every class listed in the main schedule selection. Whem the class is added to the user's schedule, the user will have the option to press a remove class button on the class they want to remove. The removed class will be placed back into the main catalogue of available classes.


# Get relevant warnings about scheduling classes
## Functionality
This feature will alert users if a scheduling issue occurs and it will tell users specifically what the problem is.
## Design
There will be a dictionary with errors inside of it, each error is associated with a problem. Problems are created whenever there is a conlict between classes based on their data from the database. If one class conflicts with another class, it will return an error in the form of a String, which specifies that there is an error, its description, and an error code.
## QA
The user will see a popup on their screen indicating that there is an issue with their schedule, and it will say specifically what that issue is. 
