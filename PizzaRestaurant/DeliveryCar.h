//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject
-(void)deliverPizza:(Pizza*) pizza;
@end

NS_ASSUME_NONNULL_END
