//
//  GeoObject.h
//  Geocoder
//
//  Created by Student on 21/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GeoObject : NSObject

#pragma properties

@property NSString *name;
@property NSString *descr;
@property NSString *latitude;
@property NSString *longitude;

#pragma methods

- (instancetype)initWithDictionary:(NSDictionary *)data;

@end

NS_ASSUME_NONNULL_END
