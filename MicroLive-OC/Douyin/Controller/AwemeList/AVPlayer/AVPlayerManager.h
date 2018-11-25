//
//  AVPlayerManager.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AVPlayerManager:NSObject

+ (AVPlayerManager *)shareManager;
+ (void)setAudioMode;
- (void)play:(AVPlayer *)player;
- (void)pause:(AVPlayer *)player;
- (void)pauseAll;
- (void)replay:(AVPlayer *)player;
- (void)removeAllPlayers;

@end
