//
//  TransportLayer.m
//  Geocoder
//
//  Created by Student on 14/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "TransportLayer.h"

@implementation TransportLayer

static NSString *const server = @"https://google.com";
static NSString *t = @"https://geocode-maps.yandex.ru/1.x/?apikey=a880cf10-7c51-4526-9e32-517f6e45c777&geocode=london&format=json";

+(NSData*) getQuery{
    NSURL *url = [NSURL URLWithString:t];
    NSLog(@"%@", t);
    NSMutableURLRequest *request = [NSMutableURLRequest new];
    [request setHTTPMethod:@"GET"];
    [request setURL:url];
    NSError *error = nil;
    NSHTTPURLResponse *response = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    return data;
}

+(NSDictionary *) getData{
    NSData *data = [self getQuery];
    NSDictionary *ans = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    return ans;
}

+(NSArray *) getObjectList{
    NSDictionary *d = [self getData];
    return d[@"response"][@"GeoObjectCollection"][@"featureMember"];
}

@end
