//
//  MIBNavigationController.m
//  MonsterBook
//
//  Created by Apple on 2020/7/30.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBHomeNavigationController.h"
#import "MIBTabBarItem.h"
#import "MIBBackButton.h"
#import "MIBHomeViewController.h"

@interface MIBHomeNavigationController ()<UIGestureRecognizerDelegate> 
@property(nonatomic,strong)UIBarButtonItem *backButton;
@property(nonatomic,strong)MIBHomeViewController *homeVC;
@end

static MIBHomeNavigationController *_instance = NULL;
@implementation MIBHomeNavigationController

+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

-(instancetype)initHome
{
    _instance = [super init];
    _instance = [_instance initWithRootViewController:self.homeVC];
    
    return _instance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [super initWithRootViewController:rootViewController];
    [self setViewControllers:@[rootViewController]];
//    self.navigationBar.translucent = NO;
//    self.navigationBar.backgroundColor = [UIColor blueColor];
    return self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    self.interactivePopGestureRecognizer.delegate = self;
//    if (self.childViewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem = self.backButton;
//    }
}

- (UIBarButtonItem *)backButton
{
    if (_backButton == nil) {
        _backButton = [UIBarButtonItem itemWithImage:@"news_Unselected" HeightImage:@"news_Unselected" Target:self action:@selector(backButtonClick)];
    }
    return _backButton;
}

-(void)backButtonClick
{
    [self popoverPresentationController];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//处理pop失效
-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
   // 判断如果不是根控制器 才需要pop返回手势
    return self.childViewControllers.count > 1;
}

-(MIBHomeViewController *)homeVC
{
    if (_homeVC) {
        return _homeVC;
    }
    _homeVC = [[MIBHomeViewController alloc] init];
    
    [MIBViewTools addChildrenVC:_homeVC title:@"首页" image:@"news_Unselected" selectImage:@"news"];
    return _homeVC;
}
@end
