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
                NSMutableArray *questionArray = [NSMutableArray arrayWithObject:q];
                [questionManager setQuestions:questionArray];
                [questionManager timeOutput];
            } else if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                // if answer is wrong, it shows "Wrong!"
                NSLog(@"%@", wrong);
                [scoreKeeper setWrong:[scoreKeeper wrong] + 1];
                [scoreKeeper scoreRight:[scoreKeeper right] andWrong:[scoreKeeper wrong]];
//                [questionManager setQuestions:[questionFactory questionTypes]];
                NSMutableArray *questionArray = [NSMutableArray arrayWithObject:q];
                [questionManager setQuestions:questionArray];
                [questionManager timeOutput];
            }
                      
            
            
            
            
//            AdditionQuestion *q = [AdditionQuestion new];
//            NSString *userAnswer = [InputHandler getUserInputWithLength:10 withPrompt: [q question]];
//            NSInteger userAnsInt = [userAnswer integerValue];
//            ScoreKeeper *s = [ScoreKeeper new];
//
//            if([q answer] == userAnsInt) {
//                NSLog(@"Right!");
//                //                rightCount += 1;
//                //                totalTried += 1;
//                //                rightPercentage = (rightCount / totalTried) * 100;
//                //                NSLog(@"score: %.0f right, %.0f wrong  ---- %.0f%%", rightCount, wrongCount, rightPercentage);
//                [s rightCount] == [s rightCount] + 1;
//                [s counter];
//            } else if ([userAnswer isEqualToString:@"quit"]) {
//                gameOn = NO;
//            } else {
//                NSLog(@"Wrong!");
//                //                wrongCount += 1;
//                //                totalTried += 1;
//                //                rightPercentage = (rightCount / totalTried) * 100;
//                //                NSLog(@"score: %.0f right, %.0f wrong  ---- %.0f%%", rightCount, wrongCount, rightPercentage);
//                [s wrongCount] ==  [s wrongCount] + 1;
//                [s counter];
//            }
        }
    }
    return 0;
}
