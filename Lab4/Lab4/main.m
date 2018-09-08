//
//  main.m
//  Lab4
//
//  Created by yoshizawarei on 2018/09/07.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc]init];
        
        while (true) {
            NSString *menu = @"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n> _";
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt: menu];

            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                // 1. get user input for name and email
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name: "];
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email: "];
                NSString *address = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the address: "];

                // 2. create a contact object based on the user input
                Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];
                
                // 3. add the contact to ContactList's contactList
                
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"%@", contactList);
            }

        }
        
//        Contact *contact = [[Contact alloc] initWithName:@"John Smith" andEmail:@"js@email.com"];
//        NSLog(@"%@", contact);
        
    }
    return 0;
}
