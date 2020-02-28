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
@property float latitude;
@property float longitude;

#pragma methods

- (instancetype)initWithDictionary:(NSDictionary *)data;
- (NSString *)getPos;

@end

NS_ASSUME_NONNULL_END
