//
//  View.m
//  Jul26
//
//  Created by Piyal Basu on 7/31/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "ImageView.h"


@implementation View

- (void) touchUpInside: (UIButton *) sender {
    if(button == sender){
    super.self.window.rootViewController = [[ViewController2 alloc] initWithNibName: nil bundle: nil];
    NSLog(@"Button clicked");
    }
    }
- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    //[self.superclass performSelector: @selector(reset) withObject: nil];
    NSLog(@"works");
    [UIView animateWithDuration: 0.5
                          delay: 0.0
                        options: UIViewAnimationOptionCurveEaseInOut
                     animations: ^{
                         //This block describes what the animation should do.
                         //self.transform = CGAffineTransformMakeScale(1, 1);
                         imageView.transform = CGAffineTransformMakeScale(1, 1);
                         
                     }
                     completion: NULL
     ];
    
}

- (void) reset {
    self.transform = CGAffineTransformMakeScale(1, 1);
}


- (id)initWithFrame:(CGRect)frame controller: (ViewController *) c
{
    self = [super initWithFrame:frame];
    if (self) {
        //self.backgroundColor = [UIColor colorWithRed:197/255.0 green:208/255.0 blue:157/255.0 alpha:1];
        CGRect b = self.bounds;
        
        
        
        button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		
		CGSize s = CGSizeMake(100, 20);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + b.size.width,
                                  b.origin.y + b.size.height /2 + 100,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[button setTitle: @"Page 2" forState: UIControlStateNormal];
        
		[button addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
        
        
        NSString *string = @"Click to enlarge!";
		UIFont *font = [UIFont systemFontOfSize: 32];
		CGSize size = [string sizeWithFont: font];
        
		//Put upper left corner of label in upper left corner of View.
		//Make label just big enough to hold the string.
		CGRect f = CGRectMake(
                              b.size.width/2,
                              20 + size.height/2,
                              size.width,
                              size.height
                              );
        
		label = [[UILabel alloc] initWithFrame: f];
		label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
		label.font = font;
		label.text = string;
		[self addSubview: label];
        
        int i;
        for(i=1;i<2;i++){
                        CGFloat theWidth = self.bounds.size.width/10;
        CGRect img1 = CGRectMake(theWidth*2*i, 240, 220, 265);
            NSString *pic = [NSString stringWithFormat:@"pic%d.png", i];
            
        imageView = [[ImageView alloc] initWithImage:[UIImage imageNamed: pic] highlightedImage:[UIImage imageNamed:pic]];
        [self addSubview: imageView];
       imageView.frame = img1;
        imageView.userInteractionEnabled = YES;
            
            NSString *string = @" Click off to zoom out!";
            UIFont *font = [UIFont systemFontOfSize: 20];
            //CGSize size = [string sizeWithFont: font];
            
            //Put upper left corner of label in upper left corner of View.
            //Make label just big enough to hold the string.
            CGRect f = CGRectMake(
                                  0,
                                  300,
                                  200,
                                  100
                                  );
            
            label = [[UILabel alloc] initWithFrame: f];
            label.backgroundColor = [UIColor whiteColor];
            label.font = font;
            label.text = string;
            [imageView addSubview: label];
        }
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
	CGFloat w = self.bounds.size.width;
	//CGFloat h = self.bounds.size.height;
	CGContextRef c = UIGraphicsGetCurrentContext();
    
	
	CGContextBeginPath(c);
	CGContextAddRect(c, CGRectMake( 30, 30, w-60, 60));
    
    
	CGContextSetRGBFillColor(c, 0x00 / 255.0, 0x7a / 255.0, 0xb9 / 255.0, 0xff / 255.0);
	CGContextFillPath(c);
    
}


@end
