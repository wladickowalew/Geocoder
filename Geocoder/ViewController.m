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
    NSData *data = [TransportLayer getQuery];
    NSLog(@"%@", data);
}


@end
