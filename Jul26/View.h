//
//  View.h
//  Jul26
//
//  Created by Piyal Basu on 7/31/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class ImageView;
@class View;

@interface View : UIView {
    ViewController *viewController;
    ImageView *imageView;
    View *view;
    UIButton *button;
    UIButton *imageButton;
    UIButton *imageButton2;
    UIButton *imageButton3;
    UIButton *imageButton4;
    UILabel *label;
    NSSet *set;
    
    }

-(id) initWithFrame: (CGRect) frame controller: (ViewController *) c;

@end
