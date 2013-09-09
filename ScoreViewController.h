//
//  ScoreViewController.h
//  IceBreaker
//
//  Created by Joshua Wang on 9/5/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionView.h"


@interface ScoreViewController : UIViewController {

}

@property (nonatomic) int finalScore;
@property (weak, nonatomic) IBOutlet UILabel *scoreBoardOutlet;
@property int otherScore;


@end
