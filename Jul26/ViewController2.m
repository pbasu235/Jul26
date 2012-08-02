//
//  ViewController2.m
//  Jul26
//
//  Created by Piyal Basu on 7/31/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "ViewController2.h"
#import "View2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

/*- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

*/

- (void)loadView {
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    self.view =  [[View2 alloc] initWithFrame: frame controller: self];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
