//
//  AppDelegate.m
//  WY
//
//  Created by lifeiyan on 17/7/19.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "AppDelegate.h"
#import "FViewController.h"
#import "WDViewController.h"
#import "FXViewController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *vc = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    vc.tabBarItem.title = @"账号";
    vc.tabBarItem.image = [UIImage imageNamed:@"账号.png"];
    vc.tabBarItem.badgeValue =@"12";

    FXViewController *vc1 = [[FXViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    vc1.tabBarItem.title = @"发现音乐";
    vc1.tabBarItem.image = [UIImage imageNamed:@"网易云.png"];
    
    WDViewController *vc2 = [[WDViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    vc2.tabBarItem.title = @"我的音乐";
    vc2.tabBarItem.image = [UIImage imageNamed:@"102.png"];
    
    FViewController *vc3 = [[FViewController alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    vc3.tabBarItem.title = @"朋友";
    vc3.tabBarItem.image = [UIImage imageNamed:@"朋友.png"];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor redColor]];
    
    UITabBarController *tc = [[UITabBarController alloc] init];
    tc.viewControllers = [NSArray arrayWithObjects:nav1,nav2,nav3,nav,nil];
    tc.tabBar.tintColor = [UIColor whiteColor];
    tc.tabBar.barTintColor = [UIColor blackColor];
    self.window.rootViewController = tc;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
