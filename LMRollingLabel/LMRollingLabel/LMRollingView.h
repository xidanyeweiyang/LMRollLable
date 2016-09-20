//
//  LMRollingView.h
//  LMRollingLabel
//
//  Created by 刘明 on 16/9/20.
//  Copyright © 2016年 刘明. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface LMRollingView : UIView

/**
 *  显示文字
 */
@property (nonatomic, copy) NSString *contenText;

/**
 *  动画时间
 */
@property (nonatomic, assign) NSInteger animationDuration;
/**
 *  文字颜色
 */
@property (nonatomic, strong) UIColor *textColor;

/**
 *  文字字体
 */
@property (nonatomic, strong) UIFont *font;
/**
 *  显示区域长度
 */
@property (nonatomic, assign) CGFloat showWidth;

+ (UIView *)rollingLabelWithTittle:(NSString *)tittleText;

- (UIView *)getRollingLabelWithTittle:(NSString *)tittleText;

@end
