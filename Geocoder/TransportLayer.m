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
static NSString *t = @"https://geocode-maps.yandex.ru/1.x/?apikey=a880cf10-7c51-4526-9e32-517f6e45c777&geocode=Тверская+6";

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

@end
