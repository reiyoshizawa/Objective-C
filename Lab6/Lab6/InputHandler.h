//
//  InputHandler.h
//  Lab6
//
//  Created by yoshizawarei on 2018/09/11.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt;

@end
