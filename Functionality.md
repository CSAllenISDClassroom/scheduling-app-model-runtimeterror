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
