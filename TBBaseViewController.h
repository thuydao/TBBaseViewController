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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Category NavigationController
@interface TBBaseViewController (NavigationController)

/**
 *  tb_pushViewControllerWithClass
 *
 *  Default animation = yes
 *  @param aClass Class
 */
- (void)tb_pushViewControllerWithClass:(Class )aClass;

/**
 *  tb_pushViewControllerWithClass
 *
 *  @param aClass      Class
 *  @param isAnimation BOOL
 */
- (void)tb_pushViewControllerWithClass:(Class )aClass animated:(BOOL )animated;

/**
 *  tb_pushViewControllerWithObject
 *
 *  default animated = yes;
 *  @param aObject id
 */
- (void)tb_pushViewControllerWithObject:(id )aObject;

/**
 *  tb_pushViewControllerWithObject
 *
 *  @param aObject     id
 *  @param isAnimation BOOL
 */
- (void)tb_pushViewControllerWithObject:(id )aObject animated:(BOOL )animated;

@end
