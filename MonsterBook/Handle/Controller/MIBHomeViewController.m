//
//  MIBHomeViewController.m
//  MonsterBook
//
//  Created by Apple on 2020/7/29.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBHomeViewController.h"

@interface MIBHomeViewController ()

@end

@implementation MIBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
}

-(void)viewWillLayoutSubviews
{
    [self addChildrenVC:self title:@"首页" image:@"news_Unselected" selectImage:@"news"];
}

-(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)img selectImage:(NSString*)selectImg
{
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:img];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImg];
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
