//
//  Prescription.m
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithSymptom: (NSString *) symptom
                andPrescription: (NSString *) prescription
                     andPatient: (Patient *) patient
{
    self = [super init];
    if (self) {
        _symptom = symptom;
        _prescription = prescription;
        _patient = patient;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Symptom: %@Prescription:%@", self.symptom, self.prescription];
}

@end
