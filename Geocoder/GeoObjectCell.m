//
//  GeoObjectCell.m
//  Geocoder
//
//  Created by Student on 21/02/2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "GeoObjectCell.h"
#import "GeoObject.h"

@implementation GeoObjectCell{
    
    __weak IBOutlet UILabel *nameLBL;
    __weak IBOutlet UILabel *posLBL;
    __weak IBOutlet UITextView *descriptionTV;
    
}

- (void)cellUpdateWithGeoObject:(GeoObject *) obj{
    [nameLBL setText: [obj name]];
    [descriptionTV setText:[obj descr]];
    [posLBL setText:[obj getPos]];
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
