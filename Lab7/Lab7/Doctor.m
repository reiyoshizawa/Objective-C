//
//  Doctor.m
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor() {
    @private
    NSMutableArray *patientList;
    NSMutableArray *prescriptionList;
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
        patientList = [NSMutableArray array];
        prescriptionList = [NSMutableArray array];
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
        char strDr[100];
        printf("What kind of symptom do you have now?\n1 - cough\n2 - fever\n3 - stomacache\n4 - diarrhea\n5 - strong pain\n");
        fgets(strDr, 100, stdin);
        NSString *symptom = [NSString stringWithCString: strDr encoding:NSUTF8StringEncoding];
        NSString *p = [NSString new];
        if ([symptom isEqualToString:@"1\n"]) {
            p = @"cough medicine";
        } else if ([symptom isEqualToString:@"2\n"]) {
            p = @"antipyretic";
        } else if ([symptom isEqualToString:@"3\n"]) {
            p = @"stomach medicine";
        } else if ([symptom isEqualToString:@"4\n"]) {
            p = @"medicine for diarrhea";
        } else if ([symptom isEqualToString:@"5\n"]) {
            p = @"pain killer";
        }
        
        // 2. create a prescription.
        Prescription *prescription = [[Prescription alloc]initWithSymptom:symptom andPrescription:p andPatient:patient];
        [prescriptionList addObject: prescription];

        // 3. give the prescription to the patient.
        [patient givePrescription:prescription];
        
        // 4. give the medication.
        NSLog(@"This is your prescription!\n%@", prescription);
        
        return true;
    } else {
        NSLog(@"You are not my patient.");
        return false;
    }
}

@end
