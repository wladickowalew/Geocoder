//
//  GeoObjectCell.h
//  Geocoder
//
//  Created by Student on 21/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GeoObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface GeoObjectCell : UITableViewCell

- (void)cellUpdateWithGeoObject:(GeoObject *) obj;

@end

NS_ASSUME_NONNULL_END
