//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        // generate 2 random ints using arc4random_uniform
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        
        // make question string
        //        _question = [NSString stringWithFormat:@"%d + %d = ", left, right];
        // get the answer and assign to answer
        //        _answer = left + right;
        
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTIme{
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void) generateQuestions{
}

@end
