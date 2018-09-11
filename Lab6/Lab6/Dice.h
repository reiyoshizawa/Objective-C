//
//  Dice.h
//  Lab6
//
//  Created by yoshizawarei on 2018/09/11.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSUInteger faceValue;
@property (nonatomic, assign) Boolean held;

+ (instancetype) dice;
- (void)roll;

@end
