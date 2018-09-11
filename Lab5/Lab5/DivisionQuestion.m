//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestions];
    }
    return self;
}


- (void) generateQuestions{
    super.question = [NSString stringWithFormat:@"%lu / %lu = ", (long)super.leftValue,
                      (long)super.rightValue];
    super.answer = super.leftValue / super.rightValue;
}

@end
