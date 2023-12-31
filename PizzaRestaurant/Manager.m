//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "DeliveryService.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen*)kitchen ShouldMakePizzaOfSize:(Sizes)size andToppings:(NSArray*)toppings
{
    if([toppings containsObject:@"anchovy"])
    {
        return NO;
    } else
    {
        return YES;
    }
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}
-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    [_deliveryDervice deliverPizza:pizza];
    NSLog(@"DON'T have a nice-a day!");
}

@end
