//
//  SceneDelegate.m
//  MonsterBook
//
//  Created by Apple on 2020/7/21.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "SceneDelegate.h"
#import "MIBTabbarController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    if (@available(iOS 13.0,*)) {
//        _window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
        //    self.window.backgroundColor = [UIColor whiteColor];

        [[MIBTabbarController shareInstance] setTabbarController:_window];
//            // 设置窗口的跟控制器
//            UITabBarController * tabbarVC = [[UITabBarController alloc]init];
//
//            // 添加子控制器
//            UIViewController * homeVC = [[UIViewController alloc]init];
//
//            // 设置标题
//            // 设置默认图片
//            // 设置选中图片
//           [self addChildrenVC:homeVC title:@"首页" image:@"news" selectImage:@"news_Unselected"];
//            homeVC.view.backgroundColor = [UIColor yellowColor];
//            UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
//             homeNav.navigationBar.translucent = NO;
//            homeNav.navigationBar.backgroundColor = [UIColor blueColor];
//
//            UIViewController * workVC = [[UIViewController alloc]init];
//            [self addChildrenVC:workVC title:@"新帖" image:@"honmepage" selectImage:@"honmepage_Unselected"];
//        //    workVC.view.backgroundColor = [UIColor redColor];
//            UINavigationController *workNav = [[UINavigationController alloc] initWithRootViewController:workVC];
//             workNav.navigationBar.translucent = NO;
//
//            UIViewController * messageVC = [[UIViewController alloc]init];
//            [self addChildrenVC:messageVC title:@"关注" image:@"honmepage_Unselected" selectImage:@"honmepage"];
//
//        //    messageVC.view.backgroundColor = [UIColor blueColor];
//            UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageVC];
//            messageNav.navigationBar.translucent = NO;
//
//            UIViewController * meVC = [[UIViewController alloc]init];
//            [self addChildrenVC:meVC title:@"我" image:@"honmhonmepage_Unselectedepage" selectImage:@"honmepage"];
//
//        //    meVC.view.backgroundColor = [UIColor greenColor];
//            UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];
//            meNav.navigationBar.translucent = NO;
//
//            NSArray *VCArray = [NSArray arrayWithObjects:homeVC,workVC,messageVC,meVC, nil];
//            tabbarVC.viewControllers = VCArray;
//        //    [tabbarVC addChildViewController:homeVC];
//        //    [tabbarVC addChildViewController:workVC];
//        //    [tabbarVC addChildViewController:messageVC];
//        //    [tabbarVC addChildViewController:meVC];
//
//        //    tabbarVC.tabBar.barTintColor = [UIColor redColor];
//        //    tabbarVC.selectedIndex = 2;
//        //    //2.设置代理
//        //    tabbarVC.delegate = self;
//            tabbarVC.selectedIndex = 0;
//            [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
//                                                                  [UIColor redColor], NSForegroundColorAttributeName,
//                                                                nil] forState:UIControlStateSelected|UIControlStateNormal];
//        //    self.window.rootViewController = tabbarVC;
//            [_window setRootViewController:tabbarVC];
//            // 显示窗口
//            [_window makeKeyAndVisible];
    }
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}

-(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)img selectImage:(NSString*)selectImg
{
    vc.title = title;
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:img];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImg];
    
}


@end
