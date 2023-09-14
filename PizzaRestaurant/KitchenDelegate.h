//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchenShouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end

NS_ASSUME_NONNULL_END
