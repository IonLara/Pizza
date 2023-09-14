//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 13/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype)initWithSize:(Sizes) size andToppings:(NSArray<NSString*>*) toppings
{
    self = [super init];
    if(self)
    {
        _size = size;
        _toppings = toppings;
    }
    return self;
}
+(Pizza*)largePepperoni
{
    Pizza *pizza = [[Pizza alloc] initWithSize:large andToppings:@[@"Pepperoni"]];
    return pizza;
}

-(double)getCost
{
    switch (_size) {
        case small:
            return 10.0;
            break;
        case medium:
            return 13.5;
        case large:
            return 16.0;
            
        default:
            return 0.0;
    }
}

-(NSArray<NSString*>*)getToppings
{
    return _toppings;
}
@end
