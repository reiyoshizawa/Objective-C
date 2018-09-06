//
//  ScoreKeeper.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "ScoreKeeper.h"
#import "inputHandler.h"

@implementation ScoreKeeper

- (NSString *) ScoreKeeperRightCount: (float) rightCount
               ScoreKeeperWrongCount: (float) wrongCount {
        rightCount += 1.0;
        float totalTried = 0.0;
        totalTried += 1.0;
        float rightPercentage = (rightCount / totalTried) * 100;
        NSLog(@"score: %.0f right, %.0f wrong  ---- %.0f%%", rightCount, wrongCount, rightPercentage);
    return 0;
}

@end
