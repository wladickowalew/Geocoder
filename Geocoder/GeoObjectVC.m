//
//  GeoObjectVC.m
//  Geocoder
//
//  Created by Student on 21/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "GeoObjectVC.h"

@interface GeoObjectVC ()

@end

@implementation GeoObjectVC
// AIzaSyBlJGM0G6Iknno6b4zNVJu_8J-8C04WliM

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _geoObject);
    [self setTitle: [_geoObject name]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
