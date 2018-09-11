//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *) timeOutput{

    @try{
        Question *last = [_questions objectAtIndex: [_questions count] - 1];
        Question *first = [_questions objectAtIndex:0];
        NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
        long second = lround(timeInterval);
        
        return [NSString stringWithFormat:@"total time : %lus, average time : %lus",
                second, second /  [_questions count]];
    }
    @catch (NSException *e) {
        NSLog(@"error occured");
    }
    
//    Question *last = [_questions objectAtIndex: [_questions count] - 1];
//    Question *first = [_questions objectAtIndex:0];
    
//    NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
//    long second = lround(timeInterval);
//
//    return [NSString stringWithFormat:@"total time : %lus, average time : %lus",
//            second, second /  [_questions count]];
}
@end
