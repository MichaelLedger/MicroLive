//
//  CommentResponse.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseResponse.h"
#import "Comment.h"

@interface CommentResponse:BaseResponse

@property (nonatomic, strong) Comment    *data;

@end
