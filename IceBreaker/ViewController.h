//
//  ViewController.h
//  IceBreaker
//
//  Created by Joshua Wang on 9/2/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlashCards.h"
#import "QuestionView.h"

@interface ViewController : UIViewController {
    int userScore;
    NSMutableArray *arrayOfQuestions;
}

@property (strong, nonatomic) IBOutlet UIView *welcomeScreenOutlet;

@end
