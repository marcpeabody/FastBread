//
//  BreadAnnotation.h
//  Zzzzz
//
//  Created by Marc Peabody on 9/22/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>


@interface BreadAnnotation : NSObject <MKAnnotation> {
	NSString *_title;
	NSString *_subtitle;
	CLLocationCoordinate2D _coordinate;
}
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *subtitle;
@property(nonatomic, assign)CLLocationCoordinate2D coordinate;
@end
