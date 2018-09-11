//
//  main.m
//  Lab3
//
//  Created by yoshizawarei on 2018/09/06.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;

- (Question *) generateRandomQeustion;

@end
