//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Delegate.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>
-(BOOL)kitchen:(Kitchen*)kitchen ShouldMakePizzaOfSize:(Sizes)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end

@interface Kitchen : NSObject

@property (nonatomic, weak)id<KitchenDelegate> delegate;
- (Pizza *)makePizzaWithSize:(Sizes)size toppings:(NSArray *)toppings;
-(Pizza*)makeCustomOrder:(NSString*) string;

@end
