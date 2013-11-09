//
//  AppDelegate.m
//  VCContainmentTut
//
//  Created by A Khan on 01/05/2013.
//  Copyright (c) 2013 AK. All rights reserved.
//

#import "AppDelegate.h"
#import "RootController.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIStoryboard *tabStoryBoard = [UIStoryboard storyboardWithName:@"TabStoryboard" bundle:nil];
    UIStoryboard *navStoryBoard = [UIStoryboard storyboardWithName:@"NavStoryboard" bundle:nil];
    UINavigationController *navController = [navStoryBoard instantiateViewControllerWithIdentifier:@"Nav Controller"];
    UITabBarController *tabController = [tabStoryBoard instantiateViewControllerWithIdentifier:@"Tab Controller"];
    ViewController *redVC, *greenVC;
    redVC = [[ViewController alloc] init];
    greenVC = [[ViewController alloc] init];
    
    redVC.view.backgroundColor = [UIColor redColor];
    greenVC.view.backgroundColor = [UIColor greenColor];
    
    RootController *menuController = [[RootController alloc]
                                      initWithViewControllers:@[tabController, redVC, greenVC, navController]
                                      andMenuTitles:@[@"Tab", @"Red", @"Green", @"Nav"]];
    self.window.rootViewController = menuController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}



@end
