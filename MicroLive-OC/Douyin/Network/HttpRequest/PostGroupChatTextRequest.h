//
//  PostGroupChatTextRequest.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseRequest.h"

@interface PostGroupChatTextRequest:BaseRequest

@property (nonatomic, copy) NSString *udid;
@property (nonatomic, copy) NSString *text;

@end
