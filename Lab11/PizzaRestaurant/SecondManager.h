//
//  SecondManager.h
//  PizzaRestaurant
//
//  Created by yoshizawarei on 2018/09/17.
//  Copyright © 2018年 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Kitchen.h"
#import "DeliveryService.h"

@interface SecondManager : NSObject <KitchenDelegate>
@property (nonatomic, weak) DeliveryService *deliveryService;
@end
