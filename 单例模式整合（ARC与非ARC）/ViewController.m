//
//  ViewController.m
//  单例模式整合（ARC与非ARC）
//
//  Created by 管复生 on 16/1/12.
//  Copyright © 2016年 GFS. All rights reserved.
//

#import "ViewController.h"
#import "Demo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Demo *demo1 = [Demo sharedDemo];
#if ! __has_feature(objc_arc)
    [demo1 release];
#endif
    Demo *demo2 = [[Demo alloc]init];
#if ! __has_feature(objc_arc)
    [demo2 release];
#endif
    Demo *demo3 = [[Demo alloc]init];
#if ! __has_feature(objc_arc)
    [demo3 release];
#endif
    Demo *demo4 = [[Demo alloc]init];
#if ! __has_feature(objc_arc)
    [demo4 release];
#endif
    Demo *demo5 = [[Demo alloc]init];
#if ! __has_feature(objc_arc)
    [demo5 release];
#endif
    NSLog(@"%p\n%p\n%p\n%p\n%p\n",demo1,demo2,demo3,demo4,demo5);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
