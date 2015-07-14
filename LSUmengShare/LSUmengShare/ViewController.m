//
//  ViewController.m
//  LSUmengShare
//
//  Created by Shawn Li on 15/7/14.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

#import "ViewController.h"
#import "LSUmengShare.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    shareBtn.frame = CGRectMake(10, 50, 100, 30);
    [shareBtn setTitle:@"分享" forState:UIControlStateNormal];
    [shareBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [shareBtn addTarget:self action:@selector(share:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareBtn];
}

- (void)share:(UIButton *)sender {
    [LSUmengShare show:self text:@"我是分享测试!" image:[UIImage imageNamed:@"show"]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
