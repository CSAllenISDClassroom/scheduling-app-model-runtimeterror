# Insert morning schedule priorities
## Functionality
This feature will allow someone to make a first period class have priority, for example, band. This will prevent the person from scheduling a STEAM class for 2nd or 5th period, which in turn will prevent possible schedule confilicts.
## Design
Once a first period gets added, the function that adds classes will prevent a class being scheduled during 2nd or 5th period, preventing a time conflict.
## QA
If someone tries to schedule a STEAM class during 2nd or 5th period with a non-privlege first period, a popup should appear to alert the user that the class cannot be scheduled.

# Get permalink to schedule
## Functionality
This feature will allow someone to have a permanent link to their schedule, allowing them to look at it or make changes to it in the future.
## Design
The feature will simply output the link to the schedule within the API.
## QA
Once someone requests the permalink, a popup should appear with the link.
