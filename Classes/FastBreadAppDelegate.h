//
//  FastBreadAppDelegate.h
//  FastBread
//
//  Created by Marc Peabody on 9/22/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FastBreadViewController;

@interface FastBreadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FastBreadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FastBreadViewController *viewController;

@end

