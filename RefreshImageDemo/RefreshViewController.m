//
//  RefreshViewController.m
//  RefreshImageDemo
//
//  Created by 惠上科技 on 2018/10/25.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "RefreshViewController.h"

@implementation RefreshViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    UIBarButtonItem *stopItem = [[UIBarButtonItem alloc] initWithTitle:@"停止" style:UIBarButtonItemStyleDone target:self action:@selector(stopHud)];
    self.navigationItem.rightBarButtonItem = stopItem
    ;}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showHUD];
}

-(void)stopHud{
    [self hideGifHUD];
}

@end
