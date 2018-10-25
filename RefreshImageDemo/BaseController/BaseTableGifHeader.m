//
//  BaseTableGifHeader.m
//  RefreshImageDemo
//
//  Created by 惠上科技 on 2018/10/25.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "BaseTableGifHeader.h"
#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@implementation BaseTableGifHeader
#pragma mark -- 重写方法
#pragma mark -- 基本设置

-(void)prepare{
    [super prepare];
    
    // 设置普通状态下的动画图片
    NSMutableArray *idleImages = [NSMutableArray array];
    for (NSUInteger i = 0; i < 24; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"refresh_000%zd",i]];
        [idleImages addObject:image];
    }
    [self setImages:idleImages duration:1.0 forState:MJRefreshStateIdle];
    // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
    
    NSMutableArray *refreshImages = [NSMutableArray array];
    for (NSUInteger i = 0; i<24 ; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"refresh_000%zd_clockwise",i]];
        [refreshImages addObject:image];
    }
    
    [self setImages:idleImages duration:1.0 forState:MJRefreshStatePulling];
    
    // 设置正在刷新状态的图片
    [self setImages:refreshImages duration:1.0 forState:MJRefreshStateRefreshing];
    // 隐藏时间label
    self.lastUpdatedTimeLabel.hidden = YES;
    self.stateLabel.textColor = HexRGB(0x8a8a8a);
    
}

-(void)placeSubviews{
    
    [super placeSubviews];
    self.backgroundColor = HexRGB(0xf6f6f6);
    [self setTitle:@"下拉加载" forState:MJRefreshStateIdle];
    [self setTitle:@"松开刷新" forState:MJRefreshStatePulling];
    [self setTitle:@"加载中..." forState:MJRefreshStateRefreshing];
    
}

@end
