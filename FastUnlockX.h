//
//  FastUnlockX.h
//  FastUnlockX
//
//  Created by Juan Carlos Perez on 01/19/2018.
//  Copyright © 2017 CP Digital Darkroom. All rights reserved.
//

@interface SBDashBoardViewControllerBase : UIViewController
@end

@interface SBDashBoardPresentationViewController : SBDashBoardViewControllerBase
@end

@interface SBDashBoardPageViewController : SBDashBoardPresentationViewController
@end

@interface SBDashBoardCombinedListViewController : SBDashBoardViewControllerBase
@property(readonly, nonatomic) BOOL hasContent;
@end

@interface SBDashBoardMainPageContentViewController : SBDashBoardPageViewController
@property(readonly, nonatomic) SBDashBoardCombinedListViewController *combinedListViewController;
@end

@interface SBDashBoardViewController
@property(retain, nonatomic) SBDashBoardMainPageContentViewController *mainPageContentViewController;
@end

@interface SBLockScreenManager : NSObject
+ (id)sharedInstance;
- (void)tapToWakeControllerDidRecognizeWakeGesture:(id)arg1;
- (void)lockScreenViewControllerRequestsUnlock;
@end
