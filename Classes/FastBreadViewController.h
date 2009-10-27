//
//  FastBreadViewController.h
//  FastBread
//
//  Created by Marc Peabody on 9/22/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "BreadAnnotation.h"

@interface FastBreadViewController : UIViewController <MKMapViewDelegate> {
	IBOutlet MKMapView *_mapView;
}
-(IBAction)zoom:(id)sender;
-(IBAction)breadcrumb:(id)sender;
@end

