//
//  SystemMessageCell.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseMessageCell.h"

@interface SystemMessageCell : BaseMessageCell
@property (nonatomic, strong) UITextView      *textView;
@property (nonatomic, strong) GroupChat               *chat;
-(void)initData:(GroupChat *)chat;
@end
