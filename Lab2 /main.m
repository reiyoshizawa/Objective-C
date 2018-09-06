//
//  main.m
//  Lab2
//
//  Created by yoshizawarei on 2018/09/05.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *student1 = [[Student alloc] initWithId:1 andName:@"Derrick" andCountry:@"USA"];
        
        NSLog(@"%d", [student1 identification]);
        [student1 setIdentification:10];
        NSLog(@"%d", [student1 identification]);
        [student1 name];
        [student1 setName:@"Burger"];
        
        Box *box1 = [[Box alloc]initWithWidth:10 andHeight:10 andLength:10];
        NSLog(@"%.2f", [box1 volume]);
        
    }
    return 0;
}
