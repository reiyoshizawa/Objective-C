//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic, assign) int right;
@property (nonatomic, assign) int wrong;
- (void) scoreRight: (int) right andWrong: (int) wrong;

@end
