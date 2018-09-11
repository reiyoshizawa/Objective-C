//
//  main.m
//  Lab6
//
//  Created by yoshizawarei on 2018/09/11.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n'roll' to roll the dice.\n'quit' to exit the game."];
            
            if ([input isEqualToString:@"roll"]) {
                Dice *die = [Dice dice];
                [die roll];
                NSLog(@"%@", die);
            } else if ([input isEqualToString:@"quit"]) {
                break;
            }
        }
    }
    return 0;
}
