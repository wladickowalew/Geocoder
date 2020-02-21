//
//  GeoObject.m
//  Geocoder
//
//  Created by Student on 21/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "GeoObject.h"

@implementation GeoObject

- (instancetype)initWithDictionary:(NSDictionary *)data{
    self = [super init];
    NSDictionary *d = data[@"GeoObject"];
    _name = d[@"name"];
    _descr = d[@"description"];
    NSString *pos = d[@"Point"][@"pos"];
    NSArray *ll = [pos componentsSeparatedByString:@" "];
    _longitude = ll[0];
    _latitude  = ll[1];
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name: %@, description: %@, ll: %@, %@", _name, _descr, _longitude, _latitude];
}

@end
