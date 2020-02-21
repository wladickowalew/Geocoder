//
//  GeoObjectVC.m
//  Geocoder
//
//  Created by Student on 21/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "GeoObjectVC.h"
#import <GoogleMaps/GoogleMaps.h>

@interface GeoObjectVC ()

@end

@implementation GeoObjectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", _geoObject);
    [self setTitle: [_geoObject name]];
    [self loadView];
}

- (void)loadView {
  // Create a GMSCameraPosition that tells the map to display the
  // coordinate -33.86,151.20 at zoom level 6.
  GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                          longitude:151.20
                                                               zoom:6];
  GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
  mapView.myLocationEnabled = YES;
  self.view = mapView;

  // Creates a marker in the center of the map.
  GMSMarker *marker = [[GMSMarker alloc] init];
  marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
  marker.title = @"Sydney";
  marker.snippet = @"Australia";
  marker.map = mapView;
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
