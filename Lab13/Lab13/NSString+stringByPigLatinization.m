//
//  NSString+stringByPigLatinization.m
//  Lab13
//
//  Created by yoshizawarei on 2018/09/19.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "NSString+stringByPigLatinization.h"

@implementation NSString (stringByPigLatinization)

//  ‘Kale Chips' it would become ‘Alekay Ipschay'
-(NSString *)stringByPigLatinization {
    NSArray *commandWords = [self componentsSeparatedByString:@" "];
    NSArray *vowel = [NSArray arrayWithObjects:@"a", @"i", @"u", @"e", @"o", nil];

    NSString *newStr = [commandWords componentsJoinedByString:@" "];
    NSString *addedAy = [newStr stringByAppendingString:@"ay"];

    return addedAy;
}

@end
