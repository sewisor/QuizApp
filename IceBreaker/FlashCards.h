//
//  FlashCards.h
//  IceBreaker
//
//  Created by Joshua Wang on 9/2/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "QuestionView.h"

typedef enum {
    Charles,
    Cindy,
    Josh,
    Vincent,
    Zirui
} Members;

@interface FlashCards : NSObject {
    Members member;
    NSInteger valueOfQuestion;
    NSNumber *questionNumber;
    NSDictionary *charlesAnswersToQuestions;
    NSDictionary *cindyAnswersToQuestions;
    NSDictionary *joshAnswersToQuestions;
    NSDictionary *vincentAnswersToQuestions;
    NSDictionary *ziruiAnswersToQuestions;
    NSMutableArray *surveyOrdering;
    NSMutableArray *charlesQuestionsText;
    NSMutableArray *cindyQuestionsText;
    NSMutableArray *joshQuestionsText;
    NSMutableArray *vincentQuestionsText;
    NSMutableArray *ziruiQuestionsText;
}

@property (nonatomic) Members member;
@property (nonatomic) NSInteger valueOfQuestion;
@property (nonatomic) NSNumber *questionNumber;
@property (nonatomic) NSDictionary *charlesAnswersToQuestions;
@property (nonatomic) NSDictionary *cindyAnswersToQuestions;
@property (nonatomic) NSDictionary *joshAnswersToQuestions;
@property (nonatomic) NSDictionary *vincentAnswersToQuestions;
@property (nonatomic) NSDictionary *ziruiAnswersToQuestions;
@property (nonatomic) NSMutableArray *surveyOrdering;
@property (nonatomic) NSMutableArray *charlesQuestionsText;
@property (nonatomic) NSMutableArray *cindyQuestionsText;
@property (nonatomic) NSMutableArray *joshQuestionsText;
@property (nonatomic) NSMutableArray *vincentQuestionsText;
@property (nonatomic) NSMutableArray *ziruiQuestionsText;


- (void) shuffleArray: (NSMutableArray *) orderedArray;
- (NSMutableArray *) instantiateTheArrayOfQuestions;

@end
