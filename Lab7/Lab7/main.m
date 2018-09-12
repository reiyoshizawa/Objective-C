//
//  main.m
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *rei = [[Patient alloc]initWithName:@"rei" andAge:31 andHealthCard:true];
        Patient *darvish = [[Patient alloc]initWithName:@"darvish" andAge:31 andHealthCard:false];
        Doctor *x = [[Doctor alloc]initWithName:@"x" andSpecialization:@"physician"];
        if ([rei visitDoctor:x] ) {
            [rei requestMedication:x];
        }
        if ([darvish visitDoctor:x]) {
            [darvish requestMedication:x];
        }
    }
    return 0;
}
