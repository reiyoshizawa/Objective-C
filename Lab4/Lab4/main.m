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
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Show contact details\nquit - Exit Application\n> _";
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt: menu];

            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                // 1. get user input for name and email
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email: "];
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name: "];

                // 2. create a contact object based on the user input
                Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];
                
                // 3. add the contact to ContactList's contactList
                [contactList preventDuplicate:email];
                [contactList addContact:newContact];
                
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"\n%@", contactList);
            } else if ([option isEqualToString:@"show"]) {
                char test[10];
                int id;
                NSLog(@"Enter the id");
                fgets(test,10,stdin);
                id=atoi(test);
                
                // If a contact with that index/id is found, display their details
                NSMutableArray *result = [contactList showContactDetails: id];
                NSLog(@"\n%@", result);
                
                // If the contact cannot be found, display a "not found" message.
//                NSUInteger count = [contactList count];
//                if (id > count) {
//                    NSLog(@"shit");
//                }
                
            } else if ([option isEqualToString:@"find"]) {
                // Implement Contact search
                NSString *contactSearch = [InputHandler getUserInputWithLength:255 withPrompt:@""];
            }

        }
        
//        Contact *contact = [[Contact alloc] initWithName:@"John Smith" andEmail:@"js@email.com"];
//        NSLog(@"%@", contact);
        
    }
    return 0;
}
