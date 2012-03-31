Sample Application for ZUUIRevealController using iOS5 Storyboards

How to load a ZUUIRevealController into a storyboard based app.

Keys to getting it working.

- Name all view controllers for use with instantiateViewControllerWithIdentifier: to allow loading viewcontrollers from your storyboard

- If you don't want xcode warning you about inaccessible views create segues from the viewcontrollers to the orphaned views

- Create a subclass of ZUUIRevealController to be your reveal controller

- Call revealToggle: in your reveal viewcontroller in order to perform the actual reveal

- Implement any of the optional ZUUIRevealController protocol methods if you want to control when/how the reveals are performed

- Be sure to use -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender to set the frontViewController and rearViewController in your ZUUIRevealController subclass

