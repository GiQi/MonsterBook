//
//  MYPersonalInformationModel.h
//  MonsterBook
//
//  Created by Apple on 2020/8/19.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MYPersonalInformationModel : NSObject

@property(nonatomic,strong)UIImage *headView;

@property(nonatomic,strong)NSString *name;

@property(nonatomic,strong)NSString *vip;

@property(nonatomic,strong)NSString *level;

@property(nonatomic,strong)NSString *honor;

@end

NS_ASSUME_NONNULL_END
