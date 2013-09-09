//
//  AppDelegate.h
//  IceBreaker
//
//  Created by Joshua Wang on 9/2/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "QuestionView.h"

@class ViewController, QuestionView;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    IBOutlet UIWindow *window;
	IBOutlet ViewController *mainViewController;
	IBOutlet QuestionView *questionViewController;
}
/*
- (void)goToQuestionView;
- (void)flipToFront;
 */

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) ViewController *mainViewController;
@property (nonatomic, retain) QuestionView *questionViewController;

@end
