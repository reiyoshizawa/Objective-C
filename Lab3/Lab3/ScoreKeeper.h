//
//  ScoreKeeper.h
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) float rightCount;
@property (nonatomic, assign) float wrongCount;

- (NSString *) ScoreKeeperRightCount: (float) rightCount
               ScoreKeeperWrongCount: (float) wrongCount;

@end
