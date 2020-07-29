//
//  AppDelegate.m
//  MonsterBook
//
//  Created by Apple on 2020/7/21.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()<UIApplicationDelegate, UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 创建窗口
//    self.window = [[UIWindow alloc]init];
//    self.window.frame = [UIScreen mainScreen].bounds;
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
//    self.window.backgroundColor = [UIColor whiteColor];
    
    // 设置窗口的跟控制器
    UITabBarController * tabbarVC = [[UITabBarController alloc]init];

    // 添加子控制器
    UIViewController * homeVC = [[UIViewController alloc]init];
    
    // 设置标题
    // 设置默认图片
    // 设置选中图片
   [self addChildrenVC:homeVC title:@"首页" image:@"honmepage" selectImage:@"honmepage"];
    homeVC.view.backgroundColor = [UIColor yellowColor];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
     homeNav.navigationBar.translucent = NO;
    homeNav.navigationBar.backgroundColor = [UIColor blueColor];

    UIViewController * workVC = [[UIViewController alloc]init];
    [self addChildrenVC:workVC title:@"新帖" image:@"honmepage" selectImage:@"honmepage"];
//    workVC.view.backgroundColor = [UIColor redColor];
    UINavigationController *workNav = [[UINavigationController alloc] initWithRootViewController:workVC];
     workNav.navigationBar.translucent = NO;

    UIViewController * messageVC = [[UIViewController alloc]init];
    [self addChildrenVC:messageVC title:@"关注" image:@"honmepage" selectImage:@"honmepage"];

//    messageVC.view.backgroundColor = [UIColor blueColor];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageVC];
    messageNav.navigationBar.translucent = NO;
    
    UIViewController * meVC = [[UIViewController alloc]init];
    [self addChildrenVC:meVC title:@"我" image:@"honmepage" selectImage:@"honmepage"];

//    meVC.view.backgroundColor = [UIColor greenColor];
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];
    meNav.navigationBar.translucent = NO;

    NSArray *VCArray = [NSArray arrayWithObjects:homeVC,workVC,messageVC,meVC, nil];
    tabbarVC.viewControllers = VCArray;
    [tabbarVC addChildViewController:homeVC];
    [tabbarVC addChildViewController:workVC];
    [tabbarVC addChildViewController:messageVC];
    [tabbarVC addChildViewController:meVC];
    
//    tabbarVC.tabBar.barTintColor = [UIColor redColor];
//    tabbarVC.selectedIndex = 2;
//    //2.设置代理
//    tabbarVC.delegate = self;
    tabbarVC.selectedIndex = 0;
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor redColor], NSForegroundColorAttributeName,
                                                        nil] forState:UIControlStateSelected|UIControlStateNormal];
    self.window.rootViewController = tabbarVC;
    // 显示窗口
    [self.window makeKeyAndVisible];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


#pragma mark tabbar
/**
 * 当选中控制器时回调
 */
- (void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    //选中的ViewController实例
    UIViewController *selectVC = tabBarController.selectedViewController;
    NSLog(@"选中的index: %zd， 选中的ViewController: %@", tabBarController.selectedIndex, selectVC);
}

-(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)img selectImage:(NSString*)selectImg
{
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
//    vc.tabBarItem.image = [UIImage imageNamed:img];
//    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImg];
}

 
-(BOOL)isCurrentViewControllerVisible:(UIViewController *)viewController
{
    return (viewController.isViewLoaded && viewController.view.window);
}

@end
