//
//  QuestionView.m
//  IceBreaker
//
//  Created by Joshua Wang on 9/4/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import "QuestionView.h"
#import "ViewController.h"
#import "ScoreViewController.h"


@implementation QuestionView

@synthesize listOfSurveyQuestions;

- (void) instantiateTheQuestionView {
    _questionTextOutlet.text = [[listOfSurveyQuestions objectAtIndex:quizIndex] objectAtIndex:2];
    _questionNumberOutlet.text = [NSString stringWithFormat:@"Question %d", quizIndex + 1];
    if ([listOfSurveyQuestions[quizIndex] count] == 7) { //if it is a MC question
        for (int i = 0; i < _displayTrueFalseResponses.count; i += 1) {
            ((UIButton *) _displayTrueFalseResponses[i]).hidden = YES; //hide the TF questions
        }
        for (int i = 0; i < _displayMultipleChoiceResponses.count; i += 1) {
            ((UIButton *) _displayMultipleChoiceResponses[i]).hidden = NO; //show the MC questions
            [((UIButton *) self.orderedMCResponses[i]) setTitle:[[listOfSurveyQuestions objectAtIndex:quizIndex] objectAtIndex:(i + 3)] forState: UIControlStateNormal];
        }
    } else { //if not MC question
        for (int i = 0; i < _displayTrueFalseResponses.count; i += 1) {
            ((UIButton *) _displayTrueFalseResponses[i]).hidden = NO; //hide MC ?s
        }
        for (int i = 0; i < _displayMultipleChoiceResponses.count; i += 1) {
            ((UIButton *) _displayMultipleChoiceResponses[i]).hidden = YES; //show TF ?s
        }
    }
    NSLog(@"We should have some hidden buttons");
}

- (void)buttonPressed:(NSString*)senderText {
    
    NSLog(@"Enter if you dare");
    //all buttons lead here
    
    if ([senderText isEqualToString:((NSString*)listOfSurveyQuestions[quizIndex][0][listOfSurveyQuestions[quizIndex][1]])]) {
        //get the sender button's title label's text. compare that to the STRING of the dictionary's value for key we input
        
        NSLog(@"Right Answer");
        quizScore += 1;
        UIAlertView *rightAlertView  = [[UIAlertView alloc]initWithTitle:@"YES!" message: @"You got it!" delegate:self cancelButtonTitle:@"Next" otherButtonTitles: nil];
        NSLog(@"Alert created");
        [rightAlertView show];
        
    } else {
        
        NSLog(@"Wrong Answer");
        UIAlertView *wrongAlertView = [[UIAlertView alloc]initWithTitle:@"Wrong!" message: @"Check again." delegate:self cancelButtonTitle:@"Next" otherButtonTitles: nil];
        NSLog(@"Alert created");
        [wrongAlertView show];
        
    }
    
    //get ready for next question
    quizIndex += 1;

    if (quizIndex < listOfSurveyQuestions.count) {
        
        [self instantiateTheQuestionView];
        
    }else{
        //we have manual segue named QuestionLimit
        
        [self performSegueWithIdentifier:@"QuestionLimit" sender:self];

        NSLog(@"Is this done?");
    }

}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Get the pre segue shiiiiiii");
    ScoreViewController *controller = (ScoreViewController *)segue.destinationViewController;
        
    controller.finalScore = quizScore;
    
    NSLog(@"%d", controller.finalScore);
}

- (IBAction)pressedButtonA:(id)sender {
    [self buttonPressed: (((UIButton *) sender).titleLabel).text];
}

- (IBAction)pressedButtonB:(id)sender {
    [self buttonPressed: (((UIButton *) sender).titleLabel).text];
}

- (IBAction)pressedButtonC:(id)sender {
    [self buttonPressed: (((UIButton *) sender).titleLabel).text];
}

- (IBAction)pressedButtonD:(id)sender {
    [self buttonPressed: (((UIButton *) sender).titleLabel).text];
}

- (IBAction)pressedTrueButton:(id)sender {
    [self buttonPressed: (((UIButton *) sender).titleLabel).text];
}

- (IBAction)pressedFalseButton:(id)sender {
    [self buttonPressed: (((UIButton *) sender).titleLabel).text];
}





- (void)viewDidLoad {
    //    NSLog(@"instance variables");
    [super viewDidLoad];
    
//    NSLog(@"view did load!");
    NSLog(@"Cindy likes chickne!");
quizIndex = 0;
quizScore = 0;

    NSLog(@"Array");
    
    self.orderedMCResponses = [[NSArray alloc] initWithObjects: _responseA, _responseB, _responseC, _responseD, nil];
    
    
    [self instantiateTheQuestionView];
// Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
/* My main ViewController's implementation file:
mainViewController.m
-------------------------------
--> Depending on if the question is a m/c or T/F, I can set one set of buttons to be hidden while setting the other set to be visible.
--> In this implementation file, I can adjust the frame/coordinates of each button
--> One example of populating one of the multiple choice buttons with content...
Let's say I have my content in some arrays:
NSArray *questionsArray = [NSArray alloc]initWithObjects:@"How many cars does Cindy own?"]];
NSArray *answersArray = [NSArray alloc]initWithObjects:@"2",@"3",@"5",@"10",nil]];

QuestionView *newQuestionView = [QuestionView alloc]initwithFrame(x, y, width, height)];
newQuestionView.questionLabel.text = questionsArray[0];
newQuestionView.multipleChoiceButton1.titleLabel.text =  answersArray[0];
newQuestionView.multipleChoiceButton1.titleLabel.text =  answersArray[1];
.........

Of course, it would be better to store these question-answer pairs in an NSDictionary for organization sakes.


Alternatively, you could create a View-class to display multiple choice questions and a separate View-class to display true/false questions. But what you see above is generally how you should create a template view and populate it. 
*/