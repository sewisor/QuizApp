//
//  ViewController.m
//  IceBreaker
//
//  Created by Joshua Wang on 9/2/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import "ViewController.h"
#import "QuestionView.h"


@interface ViewController()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"StartQuiz"]){
        QuestionView *controller = (QuestionView *)segue.destinationViewController;
        FlashCards *firstSet = [[FlashCards alloc]init];
        NSLog(@"Created first Set");
        
        NSMutableArray *surveyQuestions = [firstSet instantiateTheArrayOfQuestions];
        NSLog(@"Should've printed something");
        
        controller.listOfSurveyQuestions = surveyQuestions;
        
        NSLog(@"survey created");
        
    }
}

@end