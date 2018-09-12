//
//  Doctor.m
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Doctor.h"

@interface Doctor() {
    @private
    NSMutableArray *patientList;
}
@end

@implementation Doctor

- (instancetype)initWithName: (NSString *) name
           andSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
    }
    return self;
}

- (Boolean) acceptPatient: (Patient *) patient
           withHealthCard: (Boolean) healthCard {
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return true;
    } else {
        NSLog(@"Invalid HealthCard");
        return false;
    }
}

- (Boolean) prescribeMedication: (Patient *) patient {
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way...");
        // 1. check the symptom.
        
        // 2. create a prescription.
        
        // 3. give the prescription to the patient.
        
        // 4. give the medication.
        
        return true;
    } else {
        NSLog(@"You are not my patient.");
        return false;
    }
}

@end
