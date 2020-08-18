//
//  MIBViewTools.m
//  MonsterBook
//
//  Created by Apple on 2020/8/18.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBViewTools.h"

static MIBViewTools *_instance = NULL;
@implementation MIBViewTools
+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (_instance) {
           return _instance;
       }
       _instance = [super allocWithZone:zone];
       return _instance;
}

+(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)imgStr selectImage:(NSString*)selectImgStr
{
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    UIImage *img = [UIImage imageNamed:imgStr];
    UIImage *selectImg =[UIImage imageNamed:selectImgStr];
    vc.tabBarItem.image = img;
    vc.tabBarItem.selectedImage = selectImg;
}

@end
