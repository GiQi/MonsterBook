//
//  UIView+CLExtension.h
//  MonsterBook
//
//  Created by Apple on 2020/8/18.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CLExtension)

@property(nonatomic,assign)CGFloat cl_width;
@property(nonatomic,assign)CGFloat cl_height;
@property(nonatomic,assign)CGFloat cl_x;
@property(nonatomic,assign)CGFloat cl_y;
@property(nonatomic,assign)CGFloat cl_centerX;
@property(nonatomic,assign)CGFloat cl_centerY;

@end

NS_ASSUME_NONNULL_END
