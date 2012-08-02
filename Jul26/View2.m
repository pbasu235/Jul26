//
//  View2.m
//  Jul26
//
//  Created by Piyal Basu on 7/31/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View2.h"
#import "ViewController.h"
#import "ViewController2.h"

@implementation View2

- (void) touchUpInside: (id) sender {
     super.self.window.rootViewController = [[ViewController alloc] initWithNibName: nil bundle: nil];
    
}

- (id)initWithFrame:(CGRect)frame controller:(ViewController2 *)c
{
    self = [super initWithFrame:frame];
    if (self) {
        //self.backgroundColor = [UIColor colorWithRed:157/255.0 green:159/255.0 blue:208/255.0 alpha:1];
        
        CGRect b = self.bounds;
        
        
        
        button = [UIButton buttonWithType: UIButtonTypeCustom];
        
		//Center the button in the view.
		
		CGSize s = CGSizeMake(300, 20);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + b.size.width / 4 -40,
                                  b.origin.y + b.size.height /4,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
		[button setTitle: @"Go back...more content coming soon!" forState: UIControlStateNormal];
        
		[button addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
        
 
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

}


@end
