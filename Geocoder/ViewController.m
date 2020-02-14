//
//  ViewController.m
//  Geocoder
//
//  Created by Student on 14/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "ViewController.h"
#import "TransportLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSData *data = [TransportLayer getQuery];
    //NSLog(@"%@", data);
    [self showResponse];
}

-(void) showResponse{
    NSArray *geoObjects = [TransportLayer getObjectList: @"Смоленск"];
    for (NSDictionary *obj in geoObjects) {
        NSDictionary *d = obj[@"GeoObject"];
        NSString *name = d[@"name"];
        NSString *descr = d[@"description"];
        NSString *pos = d[@"Point"][@"pos"];
        NSLog(@"%@, %@, pos: %@", name, descr, pos);
    }
}

@end
