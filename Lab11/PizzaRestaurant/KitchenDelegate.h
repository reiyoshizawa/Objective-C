//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by yoshizawarei on 2018/09/17.
//  Copyright © 2018年 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>

@required
- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end
