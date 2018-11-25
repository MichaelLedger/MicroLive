//
//  AwemeListResponse.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseResponse.h"
#import "Aweme.h"

@interface AwemeListResponse:BaseResponse

@property (nonatomic, copy) NSArray<Aweme *> <Aweme>   *data;

@end
