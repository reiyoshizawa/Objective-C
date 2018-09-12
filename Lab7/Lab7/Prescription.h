//
//  Prescription.h
//  Lab7
//
//  Created by yoshizawarei on 2018/09/12.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

@interface Prescription : NSObject

@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, strong) NSString *prescription;
@property (nonatomic, strong) Patient *patient;

- (instancetype)initWithSymptom: (NSString *) symptom
                andPrescription: (NSString *) prescription
                     andPatient: (Patient *) patient;

@end
