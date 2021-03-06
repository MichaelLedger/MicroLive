//
//  ImageMessageCell.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseMessageCell.h"

@class CircleProgressView;

@interface ImageMessageCell : BaseMessageCell
@property (nonatomic, strong) UIImageView              *avatar;
@property (nonatomic, strong) UIImageView              *imageMsg;
@property (nonatomic, strong) CircleProgressView       *progressView;
@property (nonatomic, strong) GroupChat                *chat;
@property (nonatomic, strong) OnMenuAction             onMenuAction;

-(void)initData:(GroupChat *)chat;
-(void)updateUploadStatus:(GroupChat *)chat;
- (CGRect)menuFrame;

@end
