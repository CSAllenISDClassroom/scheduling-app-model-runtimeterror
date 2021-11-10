# Get a list of vailable classes
## Functionality

## Design

## QA

# Get specific information of class (course info)
## Functionality

## Design

## QA

# Search functionality to filter list of available classes
## Functionality

## Design

## QA

# Add/remove classes to/from schedule
## Functionality

## Design

## QA

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

# Clean up database every predetermined interval (based on timestamp of last access or modification time)## Functionality
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

# Insert morning schedule priorities (athletics, band, etc.)
## Functionality

## Design

## QA

# Get permalink to schedule
## Functionality

## Design

## QA

# Edit schedule at permalink at later time with password protection
## Functionality

## Design

## QA

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
