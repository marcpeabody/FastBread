//
//  FastBreadViewController.m
//  FastBread
//
//  Created by Marc Peabody on 9/22/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "FastBreadViewController.h"

@implementation FastBreadViewController

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
	NSLog(@"mapView");
	if(annotation == mapView.userLocation)return nil;
	
	MKAnnotationView *annView = [[[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"bread"] autorelease];
	UIImage *image = [UIImage imageNamed:@"breadcrumbs.png"];
	annView.image = image;
	annView.frame = CGRectMake(0,0,30,30);
//	MKPinAnnotationView *annView = [[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"bread"] autorelease];
	return annView;
}


-(IBAction)zoom:(id)sender{
	NSLog(@"zoom");
	MKCoordinateRegion region;
	MKCoordinateSpan span;
	span.latitudeDelta = 0.001;
	span.longitudeDelta = 0.001;
	region.span = span;
	region.center = _mapView.userLocation.coordinate;
	
	[_mapView setRegion:region animated:YES];
	[_mapView regionThatFits:region];
}
-(IBAction)breadcrumb:(id)sender{
	NSLog(@"breadcrumb");
	BreadAnnotation *ann = [[[BreadAnnotation alloc] init] autorelease];
	ann.title = @"YOU WERE HERE";
	ann.subtitle = @"clean up your mess";
	ann.coordinate = _mapView.userLocation.coordinate;
	[_mapView addAnnotation:ann];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
