//
//  UIBarButtonItem+CLExtension.m
//  MonsterBook
//
//  Created by Apple on 2020/8/18.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "UIBarButtonItem+CLExtension.h"

@implementation UIBarButtonItem (CLExtension)
+(instancetype)itemWithImage:(NSString *)image HeightImage:(NSString *)heightImage Target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:heightImage] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}

@end
