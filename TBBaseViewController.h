//
//  QSBaseViewController.h
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TDEngineLog.h"

//#import "TBBaseViewController+Model.h"
//#import "TBBaseViewController+View.m"

@interface TBBaseViewController : UIViewController

#pragma mark - Appear More
- (void)firstWillAppear;
- (void)firstDidAppear;
- (void)firstWillDisappear;
- (void)firstDidDisappear;

#pragma mark - Orientation
- (void)layoutForPortrait;
- (void)layoutForLandscape;

@end
