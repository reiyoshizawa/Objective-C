//
//  main.m
//  Lab13
//
//  Created by yoshizawarei on 2018/09/19.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+stringByPigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"input the word!");
        char str[100];
        fgets (str, 100, stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *nsStr = inputString;
        NSLog(@"%@", nsStr.stringByPigLatinization);
    }
    return 0;
}
