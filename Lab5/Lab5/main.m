//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "Question.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        NSString *right = @"Right!";
        NSString *wrong = @"Wrong!";
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        NSMutableArray *questionArray = [NSMutableArray array];

        while (gameOn) {
            Question *q = [questionFactory generateRandomQeustion];

            // 98 + 63 ?
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 withPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
           
            if([q answer] == userAnsInt) {
                // if answer is correct, it shows "Right!"
                NSLog(@"%@", right);
                [scoreKeeper setRight:[scoreKeeper right] + 1];
                [scoreKeeper scoreRight:[scoreKeeper right] andWrong:[scoreKeeper wrong]];
                [questionArray addObject: q];
                [questionManager setQuestions:questionArray];
                NSLog(@"%@", [questionManager timeOutput]);
            } else if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                // if answer is wrong, it shows "Wrong!"
                NSLog(@"%@", wrong);
                [scoreKeeper setWrong:[scoreKeeper wrong] + 1];
                [scoreKeeper scoreRight:[scoreKeeper right] andWrong:[scoreKeeper wrong]];
                [questionArray addObject: q];
                [questionManager setQuestions:questionArray];
                NSLog(@"%@", [questionManager timeOutput]);
            }
        }
    }
    return 0;
}
