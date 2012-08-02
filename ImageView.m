//
//  ImageView.m
//  Jul26
//
//  Created by Piyal Basu on 8/1/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "ImageView.h"
#import "View.h"

@implementation ImageView

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    //[self.superclass performSelector: @selector(reset) withObject: nil];
    [UIView animateWithDuration: 0.5
                          delay: 0.0
                        options: UIViewAnimationOptionCurveEaseInOut
                     animations: ^{
                         //This block describes what the animation should do.
                         //self.transform = CGAffineTransformMakeScale(1, 1);
                         self.transform = CGAffineTransformMakeScale(1.4, 1.4);
                         
                     }
                     completion: NULL
     ];
   
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {


    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
