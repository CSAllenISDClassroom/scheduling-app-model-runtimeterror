# Branch Strategy

**Feature Branch**
- A feature branch can be short or long-lived depending on the specific branching flow. The branch often is used by a single developer for only their changes, but it is possible to share it with other developers as well.
	| Pros                                                               | Cons                                                                     |
	|--------------------------------------------------------------------|--------------------------------------------------------------------------|
	| <sup>Developers may work independently<br> ㅤ                      | <sup>Branches that have not been<br>maintained may be difficult to merge |
	| <sup>Teams will work in branches which will <br>make coding easier | <sup> Debugging may be difficult<br>ㅤ                                   |
	
	
	
	<br>
	<br>
	<br>
	<br>
**GitHub Flow**
 - GitHub Flow is a simpler alternative to GitFlow. It calls for the an always release-able trunk, where releases are typically done directly from it. Each developer should create a new branch, the feature branch, for their changes from trunk. Feature branches can be deployed to a testing environment or pushed to the trunk and deployed to a non-production environment. (A short-lived release branch may be used off trunk to prepare for and execute a release.)
						
     | Pros                                                                        | Cons                                                                                |
     |-----------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
     | <sup>One feature being broken won't block <br>other features from deploying | <sup>It's possible for branches to run fine<br> independently but break when merged |
     | <sup>Branch maintenance is far less of a burden                             | <sup>A bad merge on main can leave it in an undeployable state                      |
