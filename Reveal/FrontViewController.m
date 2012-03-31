//
//  FrontViewController.m
//  Reveal
//
//  Created by Patrick McConnell on 3/31/12.
//  Copyright (c) 2012 Dogboy Studios. All rights reserved.
//

#import "FrontViewController.h"

@interface FrontViewController ()

@end

@implementation FrontViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithTitle:@"Reveal" style:UIBarButtonItemStylePlain target:self.navigationController.parentViewController action:@selector(revealToggle:)];
    self.navigationItem.leftBarButtonItem = barBtn;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)revealController:(ZUUIRevealController *)revealController shouldRevealRearViewController:(UIViewController *)rearViewController
{
	return YES;
}


@end
