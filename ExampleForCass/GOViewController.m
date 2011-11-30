//
//  GOViewController.m
//  ExampleForCass
//
//  Created by Samuel Goodwin on 11/30/11.
//  Copyright (c) 2011 SNAP Interactive. All rights reserved.
//

#import "GOViewController.h"
#import "GOCustomView.h"

@implementation GOViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    GOCustomView *someSubview = [[GOCustomView alloc] initWithFrame:CGRectInset(self.view.bounds, 10.0f, 10.0f)];
    [someSubview setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:someSubview];
    [someSubview release];
    
    UIButton *importantButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [importantButton addTarget:someSubview action:@selector(doStuff:) forControlEvents:UIControlEventTouchUpInside];
    [someSubview addSubview:importantButton];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
