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
     | <sup>Branch maintenance is far less of a burden                             | <sup>A bad merge on main can leave it in an <br>undeployable state                      |


	<br>
	<br>
	<br>
	<br>
**Trunk-based Development**
- Trunk-based development is a system where every developer integrates their changes directly into the trunk of the project. The trunk is always in a released state. Each developer must integrate their code once a day.

     | Pros                                                                  | Cons                                                                                                                        |
     |-----------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
     | <sup> Working on a project once every day contributes to small steps. | <sup>When everyone is commiting to a main <br>branch at the end of the day, developers <br>may accidentally break the code. |
	 
	
	
	<br>
	<br>
	<br>
	<br>
**Chosen Strategy**
- The chosen stategy is the **Feature Branch** strategy. This method was chosen because everyone in our group likes to be able to have their own branch and the freedom to test code without serious repercussions in the main branch. Having a clean main brach is imortant to our group.



	<br>
	<br>
	<br>
	<br>
**Rules for adding features, resolving bugs, and managing releases**
- Adding features and resolving bugs will be listed in the issues section of the repository. If any features are needed or any bugs have to be resolved, add a message to the issues section and start working on it, or ask the appropriate person to work on it. <br> Release management will be done by the release manager. This will consist of putting releases onto a dedicated release branch, which is EXCLUSIVELY for releases. This will involve making a tag for the release in Semantic Versioning, titling the release, and describing any pertinent information about the release.
