//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject
@property (nonatomic)NSMutableArray<NSString*>* pizzaLog;
@property (nonatomic)DeliveryCar *car;
-(void)deliverPizza:(Pizza*) pizza;
-(NSArray<NSString*>*)getPizzaLog;
@end

NS_ASSUME_NONNULL_END
