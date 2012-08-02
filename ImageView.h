//
//  ImageView.h
//  Jul26
//
//  Created by Piyal Basu on 8/1/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;
@interface ImageView : UIImageView {
    UIButton *imageButton;
    ImageView *imageView;
    View *view;
    UIImage *image;
    UILabel *label;
}

@end
