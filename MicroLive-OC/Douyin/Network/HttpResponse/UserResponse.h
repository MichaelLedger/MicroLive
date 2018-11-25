//
//  UserResponse.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseResponse.h"
#import "User.h"

@interface UserResponse:BaseResponse

@property (nonatomic, strong) User    *data;

@end
