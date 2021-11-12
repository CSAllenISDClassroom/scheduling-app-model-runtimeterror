
# Getting General State of Schedule 
## Futionality
This feature is designed to help students to build schedules without class conflicts (prerequisites, empty classes, availability at certain times of the day).
## Design
The plan is to get all the classes and their respective information (periods offered, prerequisites, and other info), and create an algorithm or function that checks the classes for these conflicts.
## QA
This will hopefully be mostly automated. May need an override option incase something breaks.
=======
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

# Get a List of Available Classes
## Functionality
This is one of the most important features of the app. We need to be able to display a list of all classes offered at Allen High School. This needs to have every single class that is avaliable or else the application
will be unusable. List need to be able to be travered by scrolling or another intuitive method.
## Design
This feature will be a database of every class. We need to access skyward or a more local school server and use it as reference for our list. It's important that where we get the information is relevant and up to date.
From there, we simply need to copy each class into our own database. This can be achived with code that runs through each entry in one database and replicates it for us. We then display each entry of the database in
a list.
## QA
As stated before, if this one feature messes up, the whole application will be a failure, so it is important to test and makie sure everything is working well. One possible way to ensure we have all classes available
is to manually input the information for each class, although this might lead to more issues than if a program were to do it itself. To test the program that replicates each class, we should first test it on smaller,
more easy to work with databases before moving into the real deal. Creating our own small database and replicating it is a good way to test out the basic function, of course there could still be problems with the
code on a larger scale, so we should manually check if information has been transfered properly on the real test.

# Get Specific Course Information
## Functionality
While this feature is similar to the preious one, we need to gather a lot more information and possibly from different places. We need to retrive information on each class including discription, times available, possible
teachers, location, and a video discription made by one of the teachers (an idea that they are thinking of implementing). All this information needs to be linked with a class available and every single class need to have
all relevant information.
## Design
Obtaining information will be similar to how information was obtained in the class list. All relevant informtion must be paired with it's respective class and easily comprehensible. Descriptions, available periods, and 
room number should be displayed under the name of the course so that it's easy to find. Other information, such as the short informational video, can be under a "more information" option, as to not congest the class list
too much. If there is no pre existing database of class information, we would have to do this manually.
## QA
Testing this feature will be similar to testing the list of classes, although might be more difficult since much more information is being gathered, and some information might need to be added maunally. We can have a
function that alerts what information we were unable to find and allows for people to manually add it later. To ensure all information is linked with the correct class, we would need to read each list ourselves. We
could also do smaller test to make sure the bot which gathers the information works well before letting it go on way more information.

# Search functionality to filter list of available classes
## Functionality
Search filtering is a feature that helps to limit the number of inappropriate search results displayed to clients. Clients can narrow and customize their search results to find exactly what courses they want. The search filtering would sort and narrow the search results by the letter that clients gave in the search bar.
## Design
We would have to specify each class. For example, AP Physics C would be specified as an AP course and weighted 5.0 GPA; English IV would be specified as an On-level course and weighted 4.0 GPA. Hypothetically, when the clients want to find their On-level classes, they can narrow their search results with only On-level courses.
We can implement the filtering algorithm by using *filter(_:)*. If a client types in “English” they will get a list of English classes. If they misspell, the result will be a warning.
## QA
The search filtering should filter each course based on the course information given in the database.


# Get relevant warnings about choosing classes
## Functionality
Pop-up warnings about the conflicts clients made while they were choosing their class. The warnings are about the classes that clients have to choose, the shuttle conflicts, the classes requirements, etc.
## Design
Specify each course type and contain that course information, such as the class location(STEAM, CTC, LFC), core course or selective class, grade level that can enroll to the class.
## QA
The warnings have to be specific about the client conflicts and how to get rid of that conflict. If they make a conflict, such as choosing more than 2 English classes then they will get a warning that they are choosing more than…… and deselect 


# Add/remove classes to/from schedule
## Functionality
This feature should provide a simple way to change which classes are in the user's schedule.
## Design
When a class is currently in a schedule it should disappear from the list of available classes and appear in another list of classes which are curently in the schedule. Adding and removing classes should be as easy as either selecting the class and clicking a button or dragging the class from one list to another.
## QA
When a class is added or removed, the relevant class, and only the relevant class, should change from being in the schedule to not being in the schedule, or vice versa.
# Reset classes selected
## Functionality
This will go and clear all your classes selected or queried which are in line to be scheadule. This allows you to have a fresh start on your screen instead of having to delete all the classes queried to be scheaduled.
## Design
To have this working we will use the same func which individually removes the classes queried. We will go and identify all the classes which are quried and then use the remove function to get rid of it.
## QA
To test this function you will have to originally select a bunch of classes you will be hypothetically be taking. Next you will go and click the reset class button. If this works correctly there should be absolutely no classes quried for scheaduling and the coloumn should be blank.

# Get relevant warnings about choosing classes
## Functionality

## Design

## QA

# Clean up database every predetermined interval (based on timestamp of last access or modification time)
## Functionality
This will go and delete a users schedule after a certain period of time in which it is not accessed or changed. This will clear up the database so there willl be a limited amount of lag due to clutter, and will be able to sort which schedules are still being used or not.
## Design
To make this function feasible we have to have a timer or somthing to keep track of time passed in between the intervals of log ins. We can then create a statement that everytime the link is entered the timer will be reset and so forth until it runs out. Once it runs out we need a func which deletes the data stored.
## QA
To go and test this feature we will have to have someone log on and create a schedule. They will go and wait the set amount in which it is supposed to delet. They will then go back and try accessing that same schedule. If the schedule is still there the function did not work. If it was deleted the function did its job. Another thing you will need to do to test it is the length of the deletion. You will go and create the schedule and log back in it. If this resets the time before deletion it is working , if the timer continues then it is not working.
# Get general state of schedule(conflicts, empty classes, etc.)
## Functionality

## Design

## QA

# Add/remove time slots for classes chosen to schedule
## Functionality

## Design

## QA

# Get relevant warnings about scheduling classes
## Functionality

## Design

## QA

# Reset (clear) schedule
## Functionality

## Design

## QA

# Insert morning schedule priorities
## Functionality
This feature will allow someone to make a first period class have priority, for example, band. This will prevent the person from scheduling a STEAM class for 2nd or 5th period, which in turn will prevent possible schedule confilicts.
## Design
Once a first period gets added, the function that adds classes will prevent a class being scheduled during 2nd or 5th period, preventing a time conflict.
## QA
If someone tries to schedule a STEAM class during 2nd or 5th period with a non-privlege first period, a popup should appear to alert the user that the class cannot be scheduled. To test this, we simply generate a schedule with a first period, then attempt to add a second and fifth period steam class.

# Get permalink to schedule
## Functionality
This feature will allow someone to have a permanent link to their schedule, allowing them to look at it or make changes to it in the future.
## Design
The feature will simply output the link to the schedule within the API. Also, it will prevent the schedule from being removed from the database during cleanup.
## QA
Once someone requests the permalink, a popup should appear with the link. To test this feature, we would have someone generate their schedule, then generate a permalink. Check before and after a database clenup to make sure the link functions.

# Edit schedule at permalink at later time with password protection
## Functionality
If a student uses a permalink to return to a schedule they were previously working on, they should be able to assuming they enter the necessary password.
## Design
Upon using the link to return to the schedule they were permanently working on, the student should receive a prompt to enter a password. After entering the password, they should be able to continue working with the schedule.
## QA
The user must be required to enter the proper password to continue working on their schedule. After entering the password, the student should only be able to edit their schedule, not any other schedules, and the password must allow the user to edit the schedule they're attempting to access.

# Email permalink to schedule to an email address
## Functionality

## Design

## QA

# Print schedule (browser print dialog)
## Functionality

## Design

## QA

# Save schedule as PDF or PNG
## Functionality

## Design

## QA
