//
//  BaseMessageCell.h
//  Douyin
//
//  Created by MountainX on 2018/10/21.
//  Copyright © 2018 MountainX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "Masonry.h"
#import "GroupChat.h"

typedef NS_ENUM(NSUInteger,MenuActionType) {
    DeleteAction,
    CopyAction,
    PasteAction
};

typedef void (^OnMenuAction)(MenuActionType actionType);

@interface BaseMessageCell : UITableViewCell

+ (NSDictionary* )attributes;
+ (NSMutableAttributedString *)cellAttributedString:(GroupChat *)chat;
+ (CGSize)contentSize:(GroupChat *)chat;
+ (CGFloat)cellHeight:(GroupChat *)chat;

@end
