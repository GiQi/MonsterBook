//
//  MIBMeNavigationController.h
//  MonsterBook
//
//  Created by Apple on 2020/8/14.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MIBMeNavigationController : UINavigationController
+(instancetype)shareInstance;
-(instancetype)initWithRootViewController;
@end

NS_ASSUME_NONNULL_END
