//
//  SecondViewController.h
//  DelegateDemo
//
//  Created by Apple on 2018/7/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 1.定义协议 */
@protocol SecondViewControllerDelegate <NSObject>

/** 2.声明协议方法 */
- (void)inputDataSource: (NSString *) source ;

@end

@interface SecondViewController : UIViewController

/** 3.委托代理 */ 
@property (nonatomic,weak) id<SecondViewControllerDelegate> delegate;

@end
