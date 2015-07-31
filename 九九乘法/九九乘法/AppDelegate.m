//
//  AppDelegate.m
//  九九乘法
//
//  Created by qianfeng on 15-1-19.
//  Copyright (c) 2015年 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self printMultiplication];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
    return YES;
}
-(void)printMultiplication
{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 20, 315, 225)];
    view.backgroundColor=[UIColor yellowColor];
    for (int i=1; i<=9; i++) {
        for (int j=1; j<=i; j++){
            UILabel *mult=[[UILabel alloc]initWithFrame:CGRectMake(35*(j-1), 25*(i-1), 30, 20)];
            mult.backgroundColor=[UIColor grayColor];
            mult.font=[UIFont systemFontOfSize:8];
            NSString*str=[NSString stringWithFormat:@"%d*%d=%d",j,i,i*j];
            mult.text=str;
            [view addSubview:mult];
            [mult release];
        }
    }
    [self.window addSubview:view];
    [view release];
    NSLog(@"11111111111111");
    NSLog(@"dev");
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
