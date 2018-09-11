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
#import "PhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc]init];
        NSMutableArray *input = [NSMutableArray new];

        while (true) {
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Show contact details\nfind - Search through the names of the contacts\nhistory - print the last 3 commands the user has entered\nquit - Exit Application\n> _";
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt: menu];
            
            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                [input addObject:@"new"];
                // 1. get user input for name and email
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the email: "];
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the name: "];
       
                // 2. create a contact object based on the user input
                Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];
                
                // 3. add the contact to ContactList's contactList
                [contactList addContact:newContact];
            
            } else if ([option isEqualToString:@"list"]) {
                [input addObject:@"list"];
                NSLog(@"\n%@", contactList);
            } else if ([option isEqualToString:@"show"]) {
                [input addObject:@"show"];
                char test[10];
                int id;
                NSLog(@"Enter the id");
                fgets(test,10,stdin);
                id=atoi(test);
                [contactList showContactDetails: id];
            } else if ([option isEqualToString:@"find"]) {
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the email: "];
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the name: "];
                [contactList searchEmail:email andsearchName:name];
            } else if ([option isEqualToString:@"history"]) {
                [contactList printHistory:input];
            }
        }
        
//        Contact *contact = [[Contact alloc] initWithName:@"John Smith" andEmail:@"js@email.com"];
//        NSLog(@"%@", contact);
        
    }
    return 0;
}
