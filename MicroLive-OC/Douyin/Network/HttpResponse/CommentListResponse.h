//
//  Header.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import "BaseResponse.h"
#import "Comment.h"

@interface CommentListResponse:BaseResponse

@property (nonatomic, copy) NSArray<Comment>   *data;

@end
