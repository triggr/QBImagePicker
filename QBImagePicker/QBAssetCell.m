//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

@interface QBAssetCell ()

@property (weak, nonatomic) IBOutlet UIView *overlayView;

@end

@implementation QBAssetCell

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
}

- (void)updateSelectedLabelForIndex:(NSUInteger)selectedIndex
{
    NSString *label = [@(selectedIndex + 1) stringValue];
    [self.checkmarkView.label setText:label];
}

@end
