//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pizza;

@interface DeliveryService : NSObject

- (NSMutableArray *) desctiptions: (Pizza *) pizza;
- (void) deliverPizza:(Pizza *)pizza;

@end

