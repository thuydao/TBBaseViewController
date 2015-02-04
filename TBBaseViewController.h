//
//  QSBaseViewController.h
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TDEngineLog.h"

@interface TBBaseViewController : UIViewController

#pragma mark - Appear More
/**
 *  firstWillAppear
 */
- (void)firstWillAppear;

/**
 *  firstDidAppear
 */
- (void)firstDidAppear;

/**
 *  firstWillDisappear
 */
- (void)firstWillDisappear;

/**
 *  firstDidDisappear
 */
- (void)firstDidDisappear;


#pragma mark - Orientation

/**
 *  layoutForPortrait
 */
- (void)layoutForPortrait;

/**
 *  layoutForLandscape
 */
- (void)layoutForLandscape;

@end
