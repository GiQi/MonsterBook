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

+(void)initSegmentControl:(UIViewController *)vc
{
    
    NSArray *arraySegment = [[NSArray alloc] initWithObjects:@"关注",@"消息",nil];
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:arraySegment];
    segment.frame = CGRectMake(10, 20, vc.view.cl_width, 30);
    segment.tintColor = RJColor(49,148,208);
    segment.selectedSegmentIndex = 0;
    
    NSDictionary *attribute = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont boldSystemFontOfSize:12],NSFontAttributeName,[UIColor grayColor],NSForegroundColorAttributeName,nil, nil];
    
    [segment setTitleTextAttributes:attribute forState:UIControlStateNormal];
    
    NSDictionary *highlightAttribute = [NSDictionary dictionaryWithObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [segment setTitleTextAttributes:highlightAttribute forState:UIControlStateHighlighted];
    
    [segment addTarget:vc action:@selector(doSomethingSegment:) forControlEvents:UIControlEventValueChanged];
    
    [vc.navigationController.navigationBar.topItem setTitleView:segment];

}

//-(void)doSomethingSegment:(UISegmentedControl *)segment
//{
//    NSInteger index = segment.selectedSegmentIndex;
//    switch (index) {
//        case 0:
//            
//            break;
//        case 1:
//            
//            break;
//        default:
//            break;
//    }
//}

@end
