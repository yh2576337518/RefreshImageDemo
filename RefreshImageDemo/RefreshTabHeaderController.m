//
//  RefreshTabHeaderController.m
//  RefreshImageDemo
//
//  Created by 惠上科技 on 2018/10/25.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "RefreshTabHeaderController.h"
#import "BaseTableGifHeader.h"
#import <MJRefresh.h>
@implementation RefreshTabHeaderController
-(void)viewDidLoad{
    [super viewDidLoad];
    UIBarButtonItem *stopItem = [[UIBarButtonItem alloc] initWithTitle:@"停止" style:UIBarButtonItemStyleDone target:self action:@selector(stopHud)];
    self.navigationItem.rightBarButtonItem = stopItem
    ;
    self.tableView.mj_header = [BaseTableGifHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadHeaderData)];
    [self.tableView.mj_header beginRefreshing];
}

-(void)loadHeaderData{
    [self showHUD];
    self.hudView.messageLabel.hidden = YES;
    self.hudView.indicatorView.hidden = YES;
}

-(void)stopHud{
    [self hideGifHUD];
    [self.tableView.mj_header endRefreshing];
}
@end
