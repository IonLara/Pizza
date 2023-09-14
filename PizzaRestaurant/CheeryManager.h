//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryManager<KitchenDelegate> : NSObject

@property (nonatomic)DeliveryService *deliveryService;

-(BOOL)kitchen:(Kitchen*)kitchen ShouldMakePizzaOfSize:(Sizes)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end

NS_ASSUME_NONNULL_END
