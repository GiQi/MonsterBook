//
//  MIBMessageNavgationController.h
//  MonsterBook
//
//  Created by Apple on 2020/8/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MIBMessageNavgationController : UINavigationController
+(instancetype)shareInstance;
-(instancetype)initMessage;
@end

NS_ASSUME_NONNULL_END