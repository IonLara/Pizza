//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSMutableArray *commandWords = [NSMutableArray arrayWithArray:[inputString componentsSeparatedByString:@" "]];
            if(commandWords.count == 1)
            {
                
            } else
            {
                NSString *sizeString = [commandWords[0] lowercaseString];
                [commandWords removeObjectAtIndex:0];
                if([sizeString isEqual:@"large"])
                {
                    [restaurantKitchen makePizzaWithSize:large toppings:commandWords];
                } else if([sizeString isEqual:@"medium"])
                {
                    [restaurantKitchen makePizzaWithSize:medium toppings:commandWords];
                } else
                {
                    [restaurantKitchen makePizzaWithSize:small toppings:commandWords];
                }
            }
            
            
            
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

