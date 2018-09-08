//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "inputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        float rightCount = 0.0;
//        float wrongCount = 0.0;
//        float totalTried = 0.0;
//        float rightPercentage = 0.0;
        
        BOOL gameOn = YES;
        while (gameOn) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer = [inputHandler getUserInputWithLength:10 withPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            ScoreKeeper *s = [ScoreKeeper new];
            
            if([q answer] == userAnsInt) {
                NSLog(@"Right!");
//                rightCount += 1;
//                totalTried += 1;
//                rightPercentage = (rightCount / totalTried) * 100;
//                NSLog(@"score: %.0f right, %.0f wrong  ---- %.0f%%", rightCount, wrongCount, rightPercentage);
                [s rightCount] == [s rightCount] + 1;
                [s counter];
            } else if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
//                wrongCount += 1;
//                totalTried += 1;
//                rightPercentage = (rightCount / totalTried) * 100;
//                NSLog(@"score: %.0f right, %.0f wrong  ---- %.0f%%", rightCount, wrongCount, rightPercentage);
                [s wrongCount] ==  [s wrongCount] + 1;
                [s counter];
            }
        }
    }
    return 0;
}
