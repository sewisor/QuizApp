//
//  ScoreViewController.m
//  IceBreaker
//
//  Created by Joshua Wang on 9/5/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import "ScoreViewController.h"

@interface ScoreViewController ()

@end

@implementation ScoreViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"We got here");
    
    //_finalScore = QuestionView.quizScore;
    
    
    NSLog(@"final score is %d", _finalScore);
    _scoreBoardOutlet.text = [NSString stringWithFormat: @"%d", _finalScore];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
