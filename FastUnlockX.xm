//
//  FastUnlockX.xm
//  FastUnlockX
//
//  Created by Juan Carlos Perez on 01/19/2018.
//  Copyright © 2017 CP Digital Darkroom. All rights reserved.
//

#import "FastUnlockX.h"

%hook SBDashBoardViewController

- (void)setAuthenticated:(BOOL)authenticated {
	%orig;
	if(authenticated) {
		if(!self.mainPageContentViewController.combinedListViewController.hasContent) {
			[[NSClassFromString(@"SBLockScreenManager") sharedInstance] lockScreenViewControllerRequestsUnlock];
		}
	}
}

%end
