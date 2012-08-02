//
//  View2.h
//  Jul26
//
//  Created by Piyal Basu on 7/31/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController2;
@interface View2 : UIView {
    ViewController2 *viewController2;
    UIButton *button;
}

-(id) initWithFrame: (CGRect) frame controller: (ViewController2*) c; 
@end
