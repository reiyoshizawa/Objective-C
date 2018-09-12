//
//  Patient.h
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
@class Prescription;

@interface Patient : NSObject

@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName: (NSString *) name
                      andAge: (NSUInteger) age
               andHealthCard: (Boolean) card;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;
- (void) givePrescription: (Prescription *) prescription;

@end
