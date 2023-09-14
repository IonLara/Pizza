//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *grumpyManager = [Manager new];
        CheeryManager *cheeryManager = [CheeryManager new];
        restaurantKitchen.delegate = grumpyManager;
        DeliveryService *deliveryService = [DeliveryService new];
        grumpyManager.deliveryDervice = deliveryService;
        cheeryManager.deliveryService = deliveryService;
        
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
            if([inputString containsString:@"log"])
            {
                NSLog(@"Pizza log total:");
                NSArray<NSString*>* array = [deliveryService getPizzaLog];
                for(NSString* string in array)
                {
                    NSLog(@"%@",string);
                }
            } else if([inputString containsString:@"switch"])
            {
                if(restaurantKitchen.delegate == grumpyManager)
                {
                    restaurantKitchen.delegate = cheeryManager;
                    NSLog(@"New manager is cheery!");
                } else
                {
                    restaurantKitchen.delegate = grumpyManager;
                    NSLog(@"New manager is grumpy!");
                }
            } else if(commandWords.count == 1)
            {
                [restaurantKitchen makeCustomOrder:commandWords[0]];
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

