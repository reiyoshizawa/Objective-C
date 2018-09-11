//
//  main.m
//  Lab6
//
//  Created by yoshizawarei on 2018/09/11.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player1 = [GameController new];
        
        while (true) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n'roll' to roll the dice.\n'quit' to exit the game.\n'hold' to hold the dice\n'holdall' to hold all the dices\n'resetdice' to reset all the dices\n'score' to display the score"];
            
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
            } else if ([input isEqualToString:@"hold"]) {
                char test[10];
                int id;
                NSLog(@"Enter the id");
                fgets(test,10,stdin);
                id=atoi(test);
                [player1 holdDice:id];
            } else if ([input isEqualToString:@"holdall"]) {
                [player1 holdAll];
            } else if ([input isEqualToString:@"resetdice"]) {
                [player1 resetDice];
            } else if ([input isEqualToString:@"score"]) {
                [player1 displayScore];
            } else if ([input isEqualToString:@"quit"]) {
                break;
            }
        }
    }
    return 0;
}
