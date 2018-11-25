//
//  EmotionSelector.h
//  Douyin
//
//  Created by MountainX on 2018/7/30.
//  Copyright © 2018年 MountainX. All rights reserved.
//

#import <UIKit/UIKit.h>

#define EmotionSelectorHeight   220 + SafeAreaBottomHeight

@protocol EmotionSelectorDelegate
@required
-(void)onDelete;
-(void)onSend;
-(void)onSelect:(NSString *)emotionKey;
@end

@interface EmotionSelector : UIView
@property (nonatomic, strong) UIView                     *container;
@property (nonatomic, strong) UICollectionView           *collectionView;
@property (nonatomic, weak) id<EmotionSelectorDelegate>  delegate;
-(void)addTextViewObserver:(UITextView *)textView;
- (void)removeTextViewObserver:(UITextView *)textView;
@end

@interface EmotionCell:UICollectionViewCell
@property (nonatomic, strong) UIImageView     *emotion;
@property (nonatomic, copy) NSString          *emotionKey;
- (void)setDelete;
- (void)initData:(NSString *)key;
@end
