//
//  VenueMapTileLayerUtility.h
//  OnDemandPassenger
//
//  Created by Killion, Connor on 5/23/17.
//  Copyright © 2017 HERE. All rights reserved.
//

#import <NMAKit/NMAKit.h>

@interface VenueMapTileLayerUtility : NSObject

+ (NSString *)quadKeyFromX:(NSUInteger)tileX y:(NSUInteger)tileY zoomLevel:(NSUInteger)zoomLevel;

@end
