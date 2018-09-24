//
//  QBAssetCell.h
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QBCheckmarkView.h"

@class QBVideoIndicatorView;

@interface QBAssetCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet QBVideoIndicatorView *videoIndicatorView;
@property (weak, nonatomic) IBOutlet QBCheckmarkView *checkmarkView;

@property (nonatomic, assign) BOOL showsOverlayViewWhenSelected;

- (void)updateSelectedLabelForIndex:(NSUInteger)selectedIndex;

@end
