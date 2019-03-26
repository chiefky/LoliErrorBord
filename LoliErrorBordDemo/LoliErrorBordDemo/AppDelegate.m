//
//  AppDelegate.m
//  LoliErrorBordDemo
//
//  Created by ciefky on 2019/3/26.
//  Copyright © 2019 ciefky. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self showTabs];
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - UI
- (void)showTabs {
    UITabBarController *tab = [[UITabBarController alloc]init];
    //首页
    HomeViewController *homeVc = [HomeViewController new];
    homeVc.title= @"首页";
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:homeVc];
    
    // 卖车
    HomeViewController * sellsVC = [HomeViewController new];
    sellsVC.title= @"卖车";
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:sellsVC];
    //押车贷
    HomeViewController *carLoanVC = [[HomeViewController alloc]init];
    sellsVC.title= @"押车贷";
    UINavigationController *carLoanNav = [[UINavigationController alloc]initWithRootViewController:carLoanVC];
    
    //im
    HomeViewController *chatListVC = [[HomeViewController alloc]init];
    chatListVC.title= @"我的会话";
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:chatListVC];
    
    //我
    HomeViewController *mineVC = [[HomeViewController alloc]init];
    UINavigationController *nav5 = [[UINavigationController alloc]initWithRootViewController:mineVC];
    mineVC.title=@"个人中心";
    
    NSArray *array = @[nav1,nav2,nav4,nav5];
    array =  @[nav1,nav2,carLoanNav,nav4,nav5];
    [tab setViewControllers:array];
    UIWindow *window = self.window;
    [window setRootViewController:tab];
}

@end
