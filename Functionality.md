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
