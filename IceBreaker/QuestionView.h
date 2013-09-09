//
//  QuestionView.h
//  IceBreaker
//
//  Created by Joshua Wang on 9/4/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ScoreViewController.h"

@interface QuestionView : UIViewController {
    int quizIndex;
    int quizScore;
    
}

@property (nonatomic) NSMutableArray *listOfSurveyQuestions;

@property (strong, nonatomic) NSArray *orderedMCResponses;

@property (strong, nonatomic) IBOutlet UIView *questionViewOutlet;

@property (weak, nonatomic) IBOutlet UILabel *questionNumberOutlet;

@property (weak, nonatomic) IBOutlet UILabel *questionTextOutlet;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *displayMultipleChoiceResponses;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *displayTrueFalseResponses;

@property (weak, nonatomic) IBOutlet UIButton *responseA;
@property (weak, nonatomic) IBOutlet UIButton *responseB;
@property (weak, nonatomic) IBOutlet UIButton *responseC;
@property (weak, nonatomic) IBOutlet UIButton *responseD;

//@property (weak, nonatomic) IBOutlet UILabel *scoreBoard;

- (void) instantiateTheQuestionView;
- (void)buttonPressed:(id)sender;
- (IBAction)pressedButtonA:(id)sender;
- (IBAction)pressedButtonB:(id)sender;
- (IBAction)pressedButtonC:(id)sender;
- (IBAction)pressedButtonD:(id)sender;
- (IBAction)pressedTrueButton:(id)sender;
- (IBAction)pressedFalseButton:(id)sender;

@end
