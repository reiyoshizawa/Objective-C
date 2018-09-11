//
//  GameController.m
//  Lab6
//
//  Created by yoshizawarei on 2018/09/11.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
    }
    return self;
}

- (void) roll {
    // if I have more than 1 roll counts left, I can roll all 5 dice in the array
    // except for the ones that are held by user.
}

@end
