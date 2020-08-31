//
//  MIBTabbarController.h
//  MonsterBook
//
//  Created by Apple on 2020/7/29.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MIBTabbarController : UITabBarController

+(instancetype)shareInstance;
-(void)setTabbarController:(UIWindow *)window;

@end

NS_ASSUME_NONNULL_END
