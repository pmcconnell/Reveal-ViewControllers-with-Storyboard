//
//  ViewController.m
//  Reveal
//
//  Created by Patrick McConnell on 3/31/12.
//  Copyright (c) 2012 Dogboy Studios. All rights reserved.
//

#import "ViewController.h"
#import "RevealViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showRevealVC"]){
        
        UIViewController *frontVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FrontVC"];
        UIViewController *rearVC = [self.storyboard instantiateViewControllerWithIdentifier:@"RearVC"];
        
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:frontVC];
        
        RevealViewController *revealVC = segue.destinationViewController;
        revealVC.frontViewController = nav;
        revealVC.rearViewController = rearVC;
    }
}

- (IBAction)okPressed:(id)sender {
}
@end
