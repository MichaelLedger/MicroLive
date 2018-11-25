//
//  CircleProgressView.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleProgressView : UIView

@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, assign, setter=setTipHidden:) BOOL isTipHidden;

- (void)resetView;

@end
