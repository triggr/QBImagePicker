//
//  QBCheckmarkView.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

// NOTE: "QBCheckmarkView" is a misnomer; this view simply renders the background for the numerical badge.

#import "QBCheckmarkView.h"

@implementation QBCheckmarkView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Set default values
    self.borderWidth = 1.0;
    self.checkmarkLineWidth = 1.2;
    
    self.borderColor = [UIColor whiteColor];
    self.bodyColor = [UIColor colorWithRed:(20.0 / 255.0) green:(111.0 / 255.0) blue:(223.0 / 255.0) alpha:1.0];
    self.checkmarkColor = [UIColor whiteColor];
    
    // Set shadow
    self.layer.shadowColor = [[UIColor grayColor] CGColor];
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 0.6;
    self.layer.shadowRadius = 2.0;
}

- (void)drawRect:(CGRect)rect
{
    // Border
    [self.borderColor setFill];
    [[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];
    
    // Body
    [self.bodyColor setFill];
    [[UIBezierPath bezierPathWithOvalInRect:CGRectInset(self.bounds, self.borderWidth, self.borderWidth)] fill];
}

@end
