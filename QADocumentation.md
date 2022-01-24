# QADocumentation

## Getting General State of Schedule
### How to test
To test this we will need to make sure our database has all of the info needed for our scheaduling app to work. Once we will hopefully have an automated way of sorting through the data to see if a class can fit in a specific slot or not and what it's constraints are. To check this we will insert classes in our scheadule in periods in which the classes should not be held. If it denies you from doing so then it is correct

## Save Schedule as PDF or PNG
### How to test
To test this functionality we will have one of the Quality Assurance Engineers go to our app and click the button which will allow one to download the schedule. The correct response would be the file will be downloaded on to ones device as a pdf or a png depending on what we have chosen at that point. If the file does not download the Engineer will create a new issue and describe what steps they took to reach the failed point.

## Add/remove time slots for classes chosen to schedule
### How to test
To test this functionality a Quality Assurance Engineer will enter the app and begin entering courses to put onto their schedule. To do this he will go to a class and click add to schedule. The correct response would be if the course is added to the schedule. If the course is not added to the schedule his may still be the correct response depending on if it is a viable slot. If the course is unable to be added and displays no clear warning and is not on the 

## Get relevant warnings about scheduling classes
### How to test
To test this function you will have to go and insert or order your classrooms in a way you know should not be viable. If the code is working correctly an error message should pop up stating specifically what is wrong with your scheadule. You will have to test this multiple times with different scheadules trying to obtain different error messages.

## Get a List of Available Classes
### How to test
We first need to test if all of the classes are in the database. Once this is checked we can  Creating our own small database and replicating it is a good way to test out the basic function, of course there could still be problems with the code on a larger scale, so we should manually check if information has been transfered properly on the real test.

## Get Specific Course Information
### How to test
Testing this feature will be similar to testing the list of classes, although might be more difficult since much more information is being gathered, and some information might need to be added maunally. We can have a function that alerts what information we were unable to find and allows for people to manually add it later. To ensure all information is linked with the correct class, we would need to read each list ourselves. We could also do smaller test to make sure the bot which gathers the information works well before letting it go on way more information.


## Search functionality to filter list of available classes
### How to test
To test this function you will need to use the search bar in the app and start typing in letters and keywords. TO see if this function is working or not you will need to confirm if the classes being returned or shown match the parameters you are giving it with the search bar.

## Get relevant warnings about choosing classes
### How to test
This should be very similar to getting warnings about choosing scheadule. When choosing classes you should see if you need a prerequisite or if you are missing a core class. To test this you will select classes in a way which is supposed to reveal an error message. If an error message appears than the feature is functioning properly. May need to test several times depending on the multiple of possible warnings.

## Add/remove classes to/from schedule
### How to test
To test this you should go into the app and attempt to move classes from the que into your scheadule and vice versa.When a class is currently in a schedule it should disappear from the list of available classes and appear in another list of classes which are curently in the schedule. Adding and removing classes should be as easy as either selecting the class and clicking a button or dragging the class from one list to another.

## Reset classes selected
### How to test
Select multiple classes to be hypothetically taken. Click the reset button and see if those classes are erased from the que.If this works correctly there should be absolutely no classes quried for scheaduling and the coloumn should be blank.

## Clean up database every predetermined interval (based on timestamp of last access or modification time)
### How to test
To go and test this feature we will have to have someone log on and create a schedule. They will go and wait the set amount in which it is supposed to delet. They will then go back and try accessing that same schedule. If the schedule is still there the function did not work. If it was deleted the function did its job. Another thing you will need to do to test it is the length of the deletion. You will go and create the schedule and log back in it. If this resets the time before deletion it is working , if the timer continues then it is not working.

## Reset (clear) schedule
### How to test
To test this function we will first need someone to log on and add classes to a schedule. Then, they will need to engage with the reset/clear schedule button. If the schedule removes all classes and returns to a blank state, our function has worked. If it does not remove all classes, then it has not worked. We will need to test the reset button at every stage of schedule creation; whether the user has 1 class selected, 3 classes, or every class, the function should work all the same. This will ensure that the reset button works in all situations and clears all of the classes qued.

## Insert morning schedule priorities (athletics, band, etc.)
### How to test
I see this feature to be very similar to the warning pop up feature. You will test it the same way you would test the warning system. This when you insert the class into the scheadule and then insert a steam class you should see a pop up warning highlighting that you can not do this.

## Get permalink to schedule
### How to test
Once someone requests the permalink, a popup should appear with the link. To test this feature, we would have someone generate their schedule, then generate a permalink. Check before and after a database clenup to make sure the link functions. If a functioning link which displays the same scheadule previously made appears, then it is a success. If this does not happen then it is a failure.

## Edit schedule at permalink at later time with password protection
### How to test
To test this functionality we must ensure that the permalink feature is working first. Once this is confirmed we will open up a new link with a previously saved scheadule and insert passwords trying to access it. We will test correct and incorrect passwords to see if the security measures are complete. If it allows you to edit with the correct password then it is working. If it denies someone the ability to edit the scheadule if they put in the wrong password then it is also correct. Any other outcome is in invalid result.

## Email permalink to schedule to an email address
### How to test
This feature can be tested by invoking the API with the relevant information in JSON. The recipientEmail will be one accessible by the tester. Once the API is invoked with a mock scheduleId that exists with enough information to have a permalink, the inbox of the recipientEmail will be checked to ensure the email comes through as intended (HTML format, sender email address, unsubscribe link, etc).

## Functionality Testing
### How to test
To test this feature, we will need to log on and create a full, complete schedule. Once completed, we will need to press the Print Schedule button. If the browser print dialog pops up, then our function works. If the dialog does not pop up, our function does not work.



Most of the original QA write ups were fine, added or changed about half of them.
