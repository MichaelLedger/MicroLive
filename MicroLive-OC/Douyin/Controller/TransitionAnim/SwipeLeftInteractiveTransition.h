//
//  SwipeLeftInteractiveTransition.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AwemeListController;

@interface SwipeLeftInteractiveTransition : UIPercentDrivenInteractiveTransition
@property (nonatomic, assign) BOOL interacting;
-(void)wireToViewController:(AwemeListController *)viewController;
@end
