//
//  YLLView.h
//  NavWaves
//
//  Created by Eason on 17/1/17.
//  Copyright © 2017年 YLL. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^JSYLLBlock)(CGFloat currentY);
@interface YLLView : UIView
//浪弯曲度
@property (nonatomic, assign) CGFloat waveCurvature;
//浪速
@property (nonatomic, assign) CGFloat waveSpeed;
//浪高
@property (nonatomic, assign) CGFloat waveHeight;
//实浪颜色
@property (nonatomic, strong) UIColor *realWaveColor;
//遮罩浪颜色
@property (nonatomic, strong) UIColor *maskWaveColor;

@property (nonatomic, copy) JSYLLBlock yllBlock;

- (void)stopWaveAnimation;

- (void)startWaveAnimation;
@end
