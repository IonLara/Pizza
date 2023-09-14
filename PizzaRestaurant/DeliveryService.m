//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"

@implementation DeliveryService
-(instancetype)init
{
    self = [super init];
    if(self)
    {
        _pizzaLog = [[NSMutableArray alloc] init];
        _car = [DeliveryCar new];
    }
    return self;
}
-(void)deliverPizza:(Pizza*) pizza
{
    NSLog(@"HO");
    NSString *size = [NSString new];
    switch (pizza.size) {
        case large:
            size = @"large";
            break;
        case medium:
            size = @"medium";
        case small:
            size = @"small";
            
        default:
            break;
    }
    NSMutableString *string = [NSMutableString stringWithFormat:@"A %@ pizza with: ", size];
    for(NSString* top in pizza.toppings)
    {
        [string appendFormat:@"%@ ",top];
    }
    [_pizzaLog addObject:string];
    [_car deliverPizza:pizza];
}
-(NSArray<NSString*>*)getPizzaLog
{
    return _pizzaLog;
}
@end
