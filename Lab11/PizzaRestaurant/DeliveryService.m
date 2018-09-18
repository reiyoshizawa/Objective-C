//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (NSMutableArray *) desctiptions: (Pizza *) pizza {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:pizza];
    return array;
}

- (void) deliverPizza:(Pizza *)pizza {
    NSLog(@"Pizza Delivered");
}

@end
