//
//  ViewController.m
//  LMRollingLabel
//
//  Created by 刘明 on 16/9/20.
//  Copyright © 2016年 刘明. All rights reserved.
//

#import "ViewController.h"
#import "LMRollingView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //类方法
//    self.navigationItem.titleView = [LMRollingView rollingLabelWithTittle:@"LMRollingView label跑马灯"];
    
    
    //对象方法
    
    LMRollingView *rollingView = [[LMRollingView alloc] init];
    
    rollingView.textColor = [UIColor orangeColor];
    
    rollingView.animationDuration = 5;
    
    rollingView.font = [UIFont systemFontOfSize:20];
    
    self.navigationItem.titleView = [rollingView getRollingLabelWithTittle:@"LMRollingView label跑马灯"];
    
    

}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
