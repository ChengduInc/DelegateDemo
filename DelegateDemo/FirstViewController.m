//
//  FirstViewController.m
//  DelegateDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

/** 1.遵守Delegate协议 */
@interface FirstViewController () <SecondViewControllerDelegate>

@end

@implementation FirstViewController



#pragma 系统回调

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondViewController *vc = [[SecondViewController alloc]init];
    /** 2.设置代理为自己 */
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

/** 3.实现协议方法 */
- (void)inputDataSource:(NSString *)source {
    NSLog(@"%@",source);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
