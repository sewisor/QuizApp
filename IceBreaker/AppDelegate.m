//
//  AppDelegate.m
//  IceBreaker
//
//  Created by Joshua Wang on 9/2/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "QuestionView.h"

@implementation AppDelegate

@synthesize window;
@synthesize mainViewController;
@synthesize questionViewController;
//@synthesize textColor;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [window addSubview:mainViewController.view];
	[window makeKeyAndVisible];
    return YES;
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

/* this stuff i don't think is used
- (void)goToQuestionView {
	QuestionView *aQuestionView = [[QuestionView alloc] initWithNibName:@"QuestionView" bundle:nil];
	[self setQuestionViewController:aQuestionView];
    //set the class's instance veriable to questionview
    
	//[aQuestionView release];
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:2.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[mainViewController.view removeFromSuperview];
    //tell it to remove itself from the Super View
    
	[self.window addSubview:[questionViewController view]];
    //load it up
	[UIView commitAnimations];
    //do the animation
}

- (void)flipToFront {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:2.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[questionViewController.view removeFromSuperview];
	[self.window addSubview:[mainViewController view]];
	[UIView commitAnimations];
	//[questionViewController release];
	questionViewController = nil;
}
*/


@end

