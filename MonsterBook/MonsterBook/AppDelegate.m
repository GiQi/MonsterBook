//
//  AppDelegate.m
//  MonsterBook
//
//  Created by Apple on 2020/7/21.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "MIBTabbarController.h"

@interface AppDelegate ()<UIApplicationDelegate, UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 创建窗口
//    self.window = [[UIWindow alloc]init];
//    self.window.frame = [UIScreen mainScreen].bounds;
   
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
    vc.tabBarItem.image = [UIImage imageNamed:img];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImg];
    
}

 
-(BOOL)isCurrentViewControllerVisible:(UIViewController *)viewController
{
    return (viewController.isViewLoaded && viewController.view.window);
}

@end
