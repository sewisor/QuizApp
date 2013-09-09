//
//  FlashCards.m
//  IceBreaker
//
//  Created by Joshua Wang on 9/2/13.
//  Copyright (c) 2013 Joshua Wang. All rights reserved.
//

#import "FlashCards.h"

@implementation FlashCards


@synthesize valueOfQuestion, questionNumber, member, charlesAnswersToQuestions, cindyAnswersToQuestions, joshAnswersToQuestions, vincentAnswersToQuestions, ziruiAnswersToQuestions, surveyOrdering, charlesQuestionsText, cindyQuestionsText, joshQuestionsText, vincentQuestionsText, ziruiQuestionsText;

int memberArrayCapacity = 10;
int questionsFromEachMember = 4;
int surveyLength;

- (void) loadUpArraysWithinArraysFullOfData {
    
    //Create everything Charles Needs
    charlesAnswersToQuestions = [NSDictionary dictionaryWithObjectsAndKeys:@"TRUE", @1, @"FALSE", @2, @"TRUE", @3, @"TRUE", @4, @"TRUE", @5, @"TRUE", @6, @"TRUE", @7, @"Depends on whether you count the ones that threaten to key his car", @8, @"FALSE", @9, @"Possibly zero", @10, nil];
    
    NSLog(@"%@", charlesAnswersToQuestions);
    
    charlesQuestionsText = [[NSMutableArray alloc] initWithCapacity:memberArrayCapacity];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @1, @"Charles doesn't wear sweatpants or shorts but will make exceptions for a deep v-neck tee once a while.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @2, @"Charles is very patient with people with beards.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @3, @"Charles loves Easter egg hunting.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @4, @"Charles has pissed on a radiator in a college dorm room.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @5, @"Charles acts like he's an 80-year-old man, but without the wisdom.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @6, @"Charles loves ballerinas and wishes he could marry one.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @7, @"Charles had puffy bangs and misses them a lot.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @8, @"How many girlfriends does Charles have?",  @"Zero", @"As many as he can get", @"Counting those who threatened to key his car?", @"All of the above", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @9, @"Charles has earthworms as pets.", @"TRUE", @"FALSE", nil]];
    [charlesQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: charlesAnswersToQuestions, @10, @"How many children does Charles have?", @"One", @"Two", @"He doesn't know", @"Possibly zero", nil]];
    
    NSLog(@"%@", [charlesQuestionsText componentsJoinedByString:@"; "]);
    
    
    //Create everything Cindy Needs
    
    cindyAnswersToQuestions = [NSDictionary dictionaryWithObjectsAndKeys:@"15", @1, @"TRUE", @2, @"TRUE", @3, @"Day", @4, @"Old people retainers", @5, @"Was already an awesome designer", @6, @"Can perform chemistry experiments", @7, @"FALSE", @8, @"All of the above", @9, @"Frozen Mouse", @10, nil];
    
    NSLog(@"%@", cindyAnswersToQuestions);
    
    cindyQuestionsText = [[NSMutableArray alloc] initWithCapacity:memberArrayCapacity];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @1, @"Cindy has __ chicken carcasses in her apartment.", @"20", @"0", @"100", @"15", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @2, @"Cindy ALWAYS carries around a screwdriver because in boarding school, she used to sneak out of her room by unscrewing the window.", @"TRUE", @"FALSE", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @3, @"Cindy has cracked an egg on Vincent's head before for no reason", @"TRUE", @"FALSE", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @4, @"Cindy should bake a pie every ___.", @"Month", @"Week", @"Day", @"Never", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @5, @"Tomatoes remind Cindy of ___", @"Old people retainers", @"Ducks", @"Cheese", @"Sushi", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @6, @"When Cindy was a fencer, she was already a great designer", @"TRUE", @"FALSE", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @7, @"Why does Cindy like chicken?", @"Tastes good", @"Can treat it like hamster", @"Can perform chemistry experiments", @"Who doesn't like chicken?", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @8, @"Cindy's memory is better than Vincent's memory.", @"TRUE", @"FALSE", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @9, @"If you hand Cindy your smartphone she will ___", @"Crash the OS", @"Mistreat it", @"Break some buttons", @"All of the above", nil]];
    [cindyQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: cindyAnswersToQuestions, @10, @"What is Cindy's favorite animal out of the following?", @"Snake", @"Frozen mouse", @"Elephant", @"Giraffe", nil]];
    
    NSLog(@"%@", [cindyQuestionsText componentsJoinedByString:@"; "]);
    
    //Create everything Josh Needs
    
    joshAnswersToQuestions = [NSDictionary dictionaryWithObjectsAndKeys:@"A goofy younger brother", @1, @"Breakdance", @2, @"28", @3, @"FALSE", @4, @"Snowboarding", @5, @"Mathematics", @6, @"Indian", @7, @"Quinoa, in any form", @8, @"Call of Duty", @9, @"Pick-up soccer", @10, nil];
    
    NSLog(@"%@", joshAnswersToQuestions);
    
    joshQuestionsText = [[NSMutableArray alloc] initWithCapacity:memberArrayCapacity];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @1, @"Josh has...", @"A goofy younger brother", @"A studious older brother", @"A talkative younger sister", @"A super-athletic older sister", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @2, @"Josh can:", @"Sing the USA anthem backwards", @"Tie cherry stems with his tongue", @"Breakdance", @"Do a backflip", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @3, @"How many US states has Josh been to?", @"3", @"10", @"19", @"28", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @4, @"Josh has hiked up every major mountain peak in New Hampshire.", @"TRUE", @"FALSE", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @5, @"At Dartmouth, Josh teaches", @"Chinese cooking lessons", @"Violin classes", @"Yoga", @"Snowboarding", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @6, @"Josh is majoring in:", @"Computer Science", @"Chinese", @"Mathematics", @"Studio Art", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @7, @"Josh's girlfriend is:", @"Indian", @"Hispanic", @"Korean", @"African-American", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @8, @"One of the only foods Josh REALLY doesn't like is:", @"Chicken feet", @"Quinoa, in any form", @"Raw onions of any kind", @"Fried calamari", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @9, @"This summer, Josh played which video game the most?", @"League of Legends", @"FIFA", @"Call of Duty", @"Super Smash Bros", nil]];
    [joshQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: joshAnswersToQuestions, @10, @"In his free-time, Josh likes to play", @"Pick-up soccer", @"Outdoor basketball", @"Miniature golf", @"The piano", nil]];
    
    NSLog(@"%@", [joshQuestionsText componentsJoinedByString:@"; "]);
    
    //Create everything Vincent Needs
    
    vincentAnswersToQuestions = [NSDictionary dictionaryWithObjectsAndKeys:@"Milk", @1, @"100", @2, @"New York City", @3, @"He couldn't pick between them", @4, @"TRUE", @5, @"k", @6, @"Microsoft", @7, @"TRUE", @8, @"TRUE", @9, @"TRUE", @10, nil];
    
    NSLog(@"%@", vincentAnswersToQuestions);
    
    vincentQuestionsText = [[NSMutableArray alloc] initWithCapacity:memberArrayCapacity];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @1, @"Vincent's favorite drink since he was a boy is...", @"Milk", @"Coke", @"Sprite", @"Root Beer", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @2, @"Vincent's friends are almost ___% guys.", @"100", @"75", @"50", @"25", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @3, @"Vincent grew up in...", @"New York City", @"Boston", @"The middle of nowhere", @"China", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @4, @"Vincent recently bought two watches because...", @"He wanted variety", @"He couldn't pick between them", @"It was buy one get one free", @"He wanted a backup", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @5, @"Vincent had trouble holding his girlfriend's hand until recently", @"TRUE", @"FALSE", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @6, @"Vincent never uses ___ as the variable when writing a for loop", @"i", @"k", @"j", @"v", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @7, @"Vincent has has a roomate who now works for...", @"Microsoft", @"Apple", @"IBM", @"Amazon", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @8, @"Vincent can order dim-sum in Cantonese in Chinatown", @"TRUE", @"FALSE", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @9, @"Vincent believes he can cook", @"TRUE", @"FALSE", nil]];
    [vincentQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: vincentAnswersToQuestions, @10, @"Vincent enjoys a good sandwich from Lingo", @"TRUE", @"FALSE", nil]];
    
    //Create everything Zirui Needs
    
    ziruiAnswersToQuestions = [NSDictionary dictionaryWithObjectsAndKeys:@"FALSE", @1, @"TRUE", @2, @"TRUE", @3, @"Zero", @4, @"FALSE", @5, @"TRUE", @6, @"FALSE", @7, @"TRUE", @8, @"FALSE", @9, @"Flute", @10, nil];
    
    NSLog(@"%@", ziruiAnswersToQuestions);
    
    ziruiQuestionsText = [[NSMutableArray alloc] initWithCapacity:memberArrayCapacity];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @1, @"Zirui doesn't have a left eyebrow.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @2, @"Zirui's middle name is Fantasia.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @3, @"Zirui's greatest fear is some kind of green sewer monster", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @4, @"How many siblings does Zirui have?", @"Zero", @"One", @"Two", @"Three or more", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @5, @"Zirui hates pizza.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @6, @"Zirui loves sushi.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @7, @"Zirui likes taxi cabs.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @8, @"Zirui likes chicken.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @9, @"Zirui loves chicken.", @"TRUE", @"FALSE", nil]];
    [ziruiQuestionsText addObject:[[NSMutableArray alloc] initWithObjects: ziruiAnswersToQuestions, @10, @"What musical instrument does Zirui know how to play?", @"Piano", @"Flute", @"Violin", @"None", nil]];
    
    NSLog(@"%@", [ziruiQuestionsText componentsJoinedByString:@"; "]);
    
    // I realize now that for the TRUE/FALSE questions i could have just done nothing and had just the question text. The true false is all very trivial. But now it's too late to go back and change it :(
}

- (void) shuffleArray: (NSMutableArray *) orderedArray {
    //I will try to implement the Fisher-Yates Shuffle
    for (int i = ([orderedArray count]) - 1; i > 0; i -= 1) {
        //swap the ith and jth items
        [orderedArray exchangeObjectAtIndex:i withObjectAtIndex:(arc4random() %i)];
    }
}

- (void) putTheFirstFourElementsOf: (NSMutableArray *) personalArray
                intoTheMasterArray: (NSMutableArray *) superArray {
    //get first four
    for (int i = 0; i < questionsFromEachMember; i += 1) {
        [superArray addObject:personalArray[i]];
    }
    
    NSLog(@"%@", [superArray componentsJoinedByString:@"; "]);
    
}


- (NSMutableArray *) instantiateTheArrayOfQuestions{
    NSMutableArray *masterArrayOfQuestions = [[NSMutableArray alloc] init];
    //set space for master array
    
    [self loadUpArraysWithinArraysFullOfData];
    //load up the data on questions into Arrays
    
    //shuffle everyone's individual arrays
    [self shuffleArray:charlesQuestionsText];
    [self shuffleArray:cindyQuestionsText];
    [self shuffleArray:joshQuestionsText];
    [self shuffleArray:vincentQuestionsText];
    [self shuffleArray:ziruiQuestionsText];
    
    //add the first four objects into a master array
    [self putTheFirstFourElementsOf:charlesQuestionsText intoTheMasterArray:masterArrayOfQuestions];
    [self putTheFirstFourElementsOf:cindyQuestionsText intoTheMasterArray:masterArrayOfQuestions];
    [self putTheFirstFourElementsOf:joshQuestionsText intoTheMasterArray:masterArrayOfQuestions];
    [self putTheFirstFourElementsOf:vincentQuestionsText intoTheMasterArray:masterArrayOfQuestions];
    [self putTheFirstFourElementsOf:ziruiQuestionsText intoTheMasterArray:masterArrayOfQuestions];
    
    //shuffle our twenty questions
    [self shuffleArray:masterArrayOfQuestions];
    
    return masterArrayOfQuestions;
}


- (NSString *) questionNumberAsString {
    return [NSString stringWithFormat:@"%d", self.valueOfQuestion];
}

- (NSString *) memberAsString {
	switch (self.member) {
		case Charles:
			return @"Charles";
			break;
		case Cindy:
			return @"Cindy";
			break;
		case Josh:
			return @"Josh";
			break;
		case Vincent:
			return @"Vincent";
			break;
        case Zirui:
			return @"Zirui";
			break;
		default:
			return nil;
			break;
    }
}

- (NSString *) description {
	return [NSString stringWithFormat:@"%@ from %@",
			[self questionNumberAsString],
			[self memberAsString]];
}

@end
