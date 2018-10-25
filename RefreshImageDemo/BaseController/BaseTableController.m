//
//  BaseTableController.m
//  RefreshImageDemo
//
//  Created by 惠上科技 on 2018/10/25.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "BaseTableController.h"

@interface BaseTableController ()

@end

@implementation BaseTableController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)showHUD{
    [self customAnimation];
}

- (void)hideGifHUD
{
    [self.hudView hide];
    
}

-(JHUD *)hudView{
    if (!_hudView) {
        _hudView = [[JHUD alloc]initWithFrame:self.view.bounds];
        _hudView.backgroundColor = [UIColor clearColor];
    }
    return _hudView;
}

-(void)customAnimation{
    
    NSMutableArray * images = [NSMutableArray array];
    for (int index = 0; index<=23; index++) {
        NSString * imageName = [NSString stringWithFormat:@"refresh_000%d_clockwise.png",index];
        UIImage *image = [UIImage imageNamed:imageName];
        [images addObject:image];
    }
    
    self.hudView.indicatorViewSize = CGSizeMake(40, 40);
    self.hudView.backgroundColor = [UIColor clearColor];
    self.hudView.customAnimationImages = images;
    self.hudView.messageLabel.text = @"加载中...";
    [self.hudView showAtView:self.view hudType:JHUDLoadingTypeCustomAnimations];
}

@end
