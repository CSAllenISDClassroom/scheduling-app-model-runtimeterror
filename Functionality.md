# Feature #
## Functionality
This is the functionality of feature #
## Design
This describes the high-level engineering design of feature #
## QA
This describes the high-level QA plan of feature #

# Feature 15
## Functionality
The API consumer can email a permalink of the created schedule to a specified recipient. The email will include a well-formatted HTML message sent from a credible email address. The message will primarily include a clickable permalink but also a link if the recipient wants to unsubscribe from future emails regarding the schedule. This is to make sure unintended recipients' inboxes aren't bombarded with these emails.
## Design
This feature will use a POST request with relevant data such as `recipientEmail` and a `scheduleId` to retrieve the correct permalink. Data transferred with the POST request will be encoded in JSON and transmitted over the HTTPS protocol.
## QA
This feature can be tested by invoking the API with the relevant information in JSON. The `recipientEmail` will be one accessible by the tester. Once the API is invoked with a mock `scheduleId` that exists with enough information to have a `permalink`, the inbox of the `recipientEmail` will be checked to ensure the email comes through as intended (HTML format, sender email address, unsubscribe link, etc).