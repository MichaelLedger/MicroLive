//
//  AwemeCollectionCell.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebPImageView;
@class Aweme;

@interface AwemeCollectionCell : UICollectionViewCell

@property (nonatomic, strong) WebPImageView    *imageView;
@property (nonatomic, strong) UIButton         *favoriteNum;

- (void)initData:(Aweme *)aweme;

@end
