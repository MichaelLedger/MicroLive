//
//  GroupChatListRequest.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseRequest.h"

@interface GroupChatListRequest:BaseRequest

@property (nonatomic, assign) NSInteger page;
@property (nonatomic, assign) NSInteger size;

@end
