//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryManager<KitchenDelegate> : NSObject
-(BOOL)kitchen:(Kitchen*)kitchen ShouldMakePizzaOfSize:(Sizes)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end

NS_ASSUME_NONNULL_END
