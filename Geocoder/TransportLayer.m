//
//  TransportLayer.m
//  Geocoder
//
//  Created by Student on 14/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "TransportLayer.h"

@implementation TransportLayer

static NSString *const SERVER = @"https://geocode-maps.yandex.ru/1.x/";

static NSString *t = @"https://geocode-maps.yandex.ru/1.x/?apikey=&format=json&geocode=";

+(NSString *)getApiKey{
    return @"a880cf10-7c51-4526-9e32-517f6e45c777";
}

+(NSString *)getURLWithName:(NSString *)name withCount:(int) count{
    NSMutableString *url = SERVER;
    [url appendString:@"?"];
    [url appendString:@"format=json&"];
    [url appendFormat:@"apikey=%@&", [self getApiKey]];
    [url appendFormat:@"results=%d&", count];
    name = [name stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLHostAllowedCharacterSet];
    [url appendFormat:@"geocode=%@", name];
    return url;
}

+(NSData *) getQuery{
    NSString *name = @"Смоленск";
    name = [name stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.URLHostAllowedCharacterSet];
    NSString *q = [NSString stringWithFormat:@"%@%@",t,name];
    NSURL *url = [NSURL URLWithString:q];
    NSLog(@"%@", q);
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
