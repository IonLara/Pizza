//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Ion Sebastian Rodriguez Lara on 13/09/23.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject
typedef enum {
    small,
    medium,
    large
} Sizes;
@property (nonatomic)Sizes size;
@property (nonatomic)NSArray<NSString*>* toppings;
-(instancetype)initWithSize:(Sizes) size andToppings:(NSArray<NSString*>*) toppings;
+(Pizza*)largePepperoni;
-(double)getCost;
-(NSArray<NSString*>*)getToppings;
@end

NS_ASSUME_NONNULL_END
