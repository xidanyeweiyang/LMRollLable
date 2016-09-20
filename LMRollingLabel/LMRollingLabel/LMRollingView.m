//
//  LMRollingView.m
//  LMRollingLabel
//
//  Created by 刘明 on 16/9/20.
//  Copyright © 2016年 刘明. All rights reserved.
//

#import "LMRollingView.h"
#define kShowWidth 200

@implementation LMRollingView


- (UIView *)getRollingLabelWithTittle:(NSString *)tittleText;
{
    if (!self.showWidth) {
        
        self.showWidth = kShowWidth;
    }
    
    if (!self.textColor) {
        
        self.textColor = [UIColor blackColor];
    }
    
    if (!self.font) {
        
        self.font = [UIFont systemFontOfSize:18];
    }

    
    if (!self.animationDuration) {
        
        self.animationDuration = 8;
    }

    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.showWidth, 40)];
    scrollView.scrollEnabled = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 40)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = tittleText;
    label.textColor = self.textColor;
    UIFont *font = self.font;
    label.font = font;
    
    CGSize size = [tittleText sizeWithAttributes:@{NSFontAttributeName:font}];
    CGRect frame = label.frame;
    frame.size.width = size.width;
    label.frame = frame;
    label.center = scrollView.center;
    [scrollView addSubview:label];
    
    if (size.width > self.showWidth) {
        
        frame.origin.x = self.showWidth / 2;
        label.frame = frame;
        
        [UIView animateWithDuration:self.animationDuration delay:0 options:UIViewAnimationOptionRepeat animations:^{

            label.transform = CGAffineTransformMakeTranslation(-size.width, 0);
            
        } completion:^(BOOL finished) {
            
        }];
        
    }
    
    return scrollView;

}

+ (UIView *)rollingLabelWithTittle:(NSString *)tittleText;
{
    
    UIView *rollingView = [[LMRollingView alloc] getRollingLabelWithTittle:tittleText];
    return rollingView;
}
@end
