//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(Sizes)size toppings:(NSArray *)toppings
{
    Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
    return pizza;
}
-(Pizza*)makeCustomOrder:(NSString*) string
{
    if([string isEqual:@"pepperoni"])
    {
        return [Pizza largePepperoni];
    } else
    {
        return [Pizza largePepperoni];
    }
}

@end
