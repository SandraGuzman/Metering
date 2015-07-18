//
//  RoundImageView.m
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.


#import "RoundImageView.h"

@implementation RoundImageView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderWidth = 1.0f;
    self.layer.masksToBounds = YES;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.layer.cornerRadius = CGRectGetWidth(self.bounds)/2.0f;
}

+ (RoundImageView *)roundedImageViewWithImage:(UIImage *)image {
    RoundImageView *imageView = [[RoundImageView alloc] initWithImage:image];
    imageView.layer.masksToBounds = YES;
    return imageView;
}


@end
