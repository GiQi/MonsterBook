//
//  MIBViewTools.h
//  MonsterBook
//
//  Created by Apple on 2020/8/18.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MIBViewTools : NSObject

+(instancetype)shareInstance;

//添加视图子视图 title image 
+(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)imgStr selectImage:(NSString*)selectImgStr;

@end

NS_ASSUME_NONNULL_END
