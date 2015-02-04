//
//  QSBaseViewController.m
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBBaseViewController.h"

#import "TBBaseViewController+Model.h"
#import "TBBaseViewController+View.m"

@interface TBBaseViewController()
{
    BOOL isFirstWillAppear, isFirstDidAppear; // Appear
    BOOL isFirstWillDisappear, isFirstDidDisappear; // Disappear
}

@end

@implementation TBBaseViewController

#pragma mark - View lifecyl
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    isFirstWillAppear = YES;
    isFirstDidAppear = YES;
    isFirstWillDisappear = YES;
    isFirstDidDisappear = YES;
}

// Called when the view is about to made visible. Default does nothing
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ( isFirstWillAppear )
    {
        isFirstWillAppear = NO;
        
        [self firstWillAppear];
    }
}

// Called when the view has been fully transitioned onto the screen. Default does nothing
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ( isFirstDidAppear )
    {
        isFirstDidAppear = NO;
        
        [self firstDidAppear];
    }
}

// Called when the view is dismissed, covered or otherwise hidden. Default does nothing
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    if ( isFirstWillDisappear )
    {
        isFirstWillDisappear = NO;
        
        [self firstWillDisappear];
    }
}

// Called after the view was dismissed, covered or otherwise hidden. Default does nothing
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    if ( isFirstDidDisappear )
    {
        isFirstDidDisappear = NO;
        
        [self firstDidDisappear];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    TDLOG(@"%@ dealloc", NSStringFromClass([self class]));
}

#pragma mark - Appear More
/**
 *  firstWillAppear
 */
- (void)firstWillAppear
{
    TDLOG(@"");
}

/**
 *  firstDidAppear
 */
- (void)firstDidAppear
{
    TDLOG(@"");
}

/**
 *  firstWillDisappear
 */
- (void)firstWillDisappear
{
    TDLOG(@"");
}

/**
 *  firstDidDisappear
 */
- (void)firstDidDisappear
{
    TDLOG(@"");
}

#pragma mark - Orientation
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if ( toInterfaceOrientation == UIDeviceOrientationPortrait )
    {
        [self layoutForPortrait];
    }
    else if ( toInterfaceOrientation == UIDeviceOrientationLandscapeLeft || toInterfaceOrientation == UIDeviceOrientationLandscapeRight )
    {
        [self layoutForLandscape];
    }
}

/**
 *  layoutForPortrait
 */
- (void)layoutForPortrait
{
    // Begin code here
}

/**
 *  layoutForLandscape
 */
- (void)layoutForLandscape
{
    // Begin code here
}

@end
