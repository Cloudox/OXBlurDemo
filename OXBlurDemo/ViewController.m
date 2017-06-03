//
//  ViewController.m
//  OXBlurDemo
//
//  Created by csdc-iMac on 2017/6/3.
//  Copyright © 2017年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    imageView.image = [UIImage imageNamed:@"neo.jpeg"];
    [self.view addSubview:imageView];
    
    /* iOS 7以上支持，UIBarStyle枚举：
     UIBarStyleDefault
     UIBarStyleBlack
     UIBarStyleBlackOpaque
     UIBarStyleBlackTranslucent
     */
//    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, imageView.frame.size.height * 0.7, imageView.frame.size.width, imageView.frame.size.height * 0.3)];
//    toolbar.barStyle = UIBarStyleBlackTranslucent;
//    [self.view addSubview:toolbar];
    
    
    /* iOS 8以上支持（推荐），UIBlurEffectStyle枚举
     UIBlurEffectStyleRegular
     UIBlurEffectStyleLight
     UIBlurEffectStyleDark
     UIBlurEffectStyleProminent
     UIBlurEffectStyleExtraLight
    */
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    effectView.frame = CGRectMake(0, imageView.frame.size.height * 0.7, imageView.frame.size.width, imageView.frame.size.height * 0.3);
    [self.view addSubview:effectView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
