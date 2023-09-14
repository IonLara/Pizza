//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"
#import "DeliveryService.h"

@implementation CheeryManager
-(BOOL)kitchen:(Kitchen*)kitchen ShouldMakePizzaOfSize:(Sizes)size andToppings:(NSArray*)toppings
{
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}
-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    [_deliveryService deliverPizza:pizza];
    NSLog(@"Have a nice-a day!");
}
@end
