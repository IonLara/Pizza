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
    if([_delegate kitchen:self ShouldMakePizzaOfSize:size andToppings:toppings])
    {
        if([_delegate kitchenShouldUpgradeOrder:self])
        {
            Pizza *pizza = [[Pizza alloc] initWithSize:large andToppings:toppings];
            [_delegate kitchenDidMakePizza:pizza];
            return pizza;
        } else
        {
            Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
            [_delegate kitchenDidMakePizza:pizza];
            return pizza;
        }
    } else
    {
        return nil;
    }
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
