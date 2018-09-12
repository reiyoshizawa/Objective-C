//
//  Patient.m
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

@interface Patient() {
    @private
    Boolean healthCard;
    NSMutableArray *prescriptionList;
}
@end

@implementation Patient

- (instancetype)initWithName: (NSString *) name
                      andAge: (NSUInteger) age
               andHealthCard: (Boolean) card
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = card;
        prescriptionList = [NSMutableArray array];
    }
    return self;
}

- (Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

- (void) requestMedication: (Doctor *) doctor {
    // 1. doctor checking if self(patient) is in the patient list.
    if ([doctor prescribeMedication:self]) {
        NSLog(@"Got the medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
}

- (void) givePrescription: (Prescription *) prescription{
    [prescriptionList addObject:prescription];
}

@end
