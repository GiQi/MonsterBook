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

@interface MIBTabbarController ()

@property(nonatomic,strong)MIBHomeViewController *homeVC;
@property(nonatomic,strong)MIBHomeNavigationController *homeNav;

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
        _homeNav = [[MIBHomeNavigationController shareInstance] init];;

        UIViewController * workVC = [[UIViewController alloc]init];
        [self addChildrenVC:workVC title:@"新帖" image:@"动态未选中" selectImage:@"动态选中"];
    //    workVC.view.backgroundColor = [UIColor redColor];
        UINavigationController *workNav = [[UINavigationController alloc] initWithRootViewController:workVC];
         workNav.navigationBar.translucent = NO;

        UIViewController * messageVC = [[UIViewController alloc]init];
        [self addChildrenVC:messageVC title:@"关注" image:@"honmepage_Unselected" selectImage:@"honmepage"];

    //    messageVC.view.backgroundColor = [UIColor blueColor];
        UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageVC];
        messageNav.navigationBar.translucent = NO;
        
        UIViewController * meVC = [[UIViewController alloc]init];
        [self addChildrenVC:meVC title:@"我" image:@"my_Unselected" selectImage:@"my"];

    //    meVC.view.backgroundColor = [UIColor greenColor];
        UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];
        meNav.navigationBar.translucent = NO;

    NSArray *VCArray = [NSArray arrayWithObjects:self.homeNav,workNav,messageNav,meNav, nil];
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
