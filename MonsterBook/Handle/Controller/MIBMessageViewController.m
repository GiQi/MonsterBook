//
//  MIBMessageViewController.m
//  MonsterBook
//
//  Created by Apple on 2020/8/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBMessageViewController.h"

@interface MIBMessageViewController ()

@end

@implementation MIBMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)imgStr selectImage:(NSString*)selectImgStr
{
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    UIImage *img = [UIImage imageNamed:imgStr];
    UIImage *selectImg =[UIImage imageNamed:selectImgStr];
    vc.tabBarItem.image = img;
    vc.tabBarItem.selectedImage = selectImg;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
