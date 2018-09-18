//
//  main.m
//  ARCDemo
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Apartment *myApt = [[Apartment alloc]initWithUnit:@"123"];
        Person *p = [[Person alloc]initWithNama:@"p"];
        
        // objects point each otehr
        myApt.tenant = p;
        p.apartment = myApt;

        NSLog(@"Apartment created!");
        NSLog(@"Person created!");

        myApt = nil;
        p = nil;
        
        NSLog(@"%@", myApt);
        NSLog(@"%@", p);

    }
    return 0;
}
