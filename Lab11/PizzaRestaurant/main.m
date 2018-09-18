//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "SecondManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *trump = [Manager new];
        DeliveryService *deliveryService = [DeliveryService new];
        SecondManager *putin = [SecondManager new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            restaurantKitchen.delegate = trump;
            Pizza *pizza1 = [restaurantKitchen makePizzaWithSize:small toppings:commandWords];
            NSLog(@"%@", pizza1);
       
            restaurantKitchen.delegate = putin;
            Pizza *pizza2 = [restaurantKitchen makePizzaWithSize:small toppings:commandWords];
            NSLog(@"%@", pizza2);
        
            
            //            if ([commandWords containsObject:@"pepperoni"]) {
            //                Pizza *pizza = [Pizza largePepperoni];
            //                NSLog(@"%@", pizza);
            //            }
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

