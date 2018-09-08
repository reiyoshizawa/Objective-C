//
//  ScoreKeeper.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}

- (NSString *) counter {
        float totalTried = +1;
        float rightPercentage = (_rightCount / totalTried) * 100;
        NSLog(@"score: %.0f right, %.0f wrong  ---- %.0f%%", _rightCount, wrongCount, rightPercentage);
    return 0;
}

@end
