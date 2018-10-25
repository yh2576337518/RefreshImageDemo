//
//  BaseTableController.h
//  RefreshImageDemo
//
//  Created by 惠上科技 on 2018/10/25.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHUD.h"
@interface BaseTableController : UITableViewController
@property (nonatomic) JHUD *hudView;
-(void)showHUD;
-(void)hideGifHUD;
@end
