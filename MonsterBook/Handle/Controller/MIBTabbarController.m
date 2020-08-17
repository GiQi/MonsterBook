//
//  MIBTabbarController.m
//  MonsterBook
//
//  Created by Apple on 2020/7/29.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBTabbarController.h"
#import "MIBHomeViewController.h"
#import "MIBHomeNavigationController.h"
#import "MIBTabBarItem.h"
#import "MIBTaleNavigationController.h"
#import "MIBTaleTableView.h"

#import "MIBMeTableViewController.h"
#import "MIBMeNavigationController.h"

#import "MIBMessageViewController.h"
#import "MIBMessageNavgationController.h"

@interface MIBTabbarController ()

@property(nonatomic,strong)MIBHomeViewController *homeVC;
@property(nonatomic,strong)MIBHomeNavigationController *homeNav;
@property(nonatomic,strong)MIBTaleNavigationController *taleNav;
@property(nonatomic,retain)MIBTaleTableView *taleTableView;
@property(nonatomic,strong)MIBMeTableViewController *meTableView;
@property(nonatomic,strong)MIBMeNavigationController *meNav;
@property(nonatomic,strong)MIBMessageNavgationController *messageNav;

@end
static MIBTabbarController *_instance = NULL;
@implementation MIBTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (_instance) {
        return _instance;
    }
    _instance = [super allocWithZone:zone];
    return _instance;
}

-(void)setTabbarController:(UIWindow *)window
{
     if (@available(iOS 13.0,*)) {
         
     }else{
        window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
     }
    //    self.window.backgroundColor = [UIColor whiteColor];
        
        // 设置窗口的跟控制器
//        UITabBarController * _instance = [[UITabBarController alloc]init];
        // 添加子控制器
//        UIViewController * homeVC = [[UIViewController alloc]init];
        MIBTabBarItem *tabbar = [[MIBTabBarItem alloc] init];
        [_instance setValue:tabbar forKeyPath:@"tabBar"];
        // 设置标题
        // 设置默认图片
        // 设置选中图片
    

        self.view.backgroundColor = [UIColor yellowColor];
        _homeNav = [[MIBHomeNavigationController shareInstance] initHome];

    _taleNav = [[MIBTaleNavigationController shareInstance] initWithRootViewController];
    
    _messageNav = [[MIBMessageNavgationController shareInstance] initMessage];

    _meNav = [[MIBMeNavigationController shareInstance] initWithRootViewController];

    NSArray *VCArray = [NSArray arrayWithObjects:self.homeNav,_taleNav,_messageNav,_meNav, nil];
        _instance.viewControllers = VCArray;
        
//        _instance.tabBar.barTintColor = [UIColor redColor];
        _instance.selectedIndex = 2;
        //2.设置代理
//        _instance.delegate = self;
        _instance.selectedIndex = 0;
    
        [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                              [UIColor grayColor], NSForegroundColorAttributeName,
                                                            nil] forState:UIControlStateSelected|UIControlStateNormal];

        [window setRootViewController:_instance];
        // 显示窗口
        [window makeKeyAndVisible];
}

-(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)img selectImage:(NSString*)selectImg
{
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:img];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImg];
}

-(void)setNavBarVC:(UINavigationController*)nav
{
    
}

-(MIBHomeViewController *)homeVC
{
    if (_homeVC) {
        return _homeVC;
    }
    _homeVC = [[MIBHomeViewController alloc] init];
    return _homeVC;
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
