//
//  ViewController.m
//  UIAlertView+Blocks
//
//  Created by 暁 松田 on 12/05/14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+blocks.h"

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
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -

- (IBAction)showAlert:(id)sender
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"test" selectedBlock:^(NSInteger index) {
		NSLog(@"selected:%d",index);
	} cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
	[alert show];
	[alert release];
}


@end
