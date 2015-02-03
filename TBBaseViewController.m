//
//  QSBaseViewController.m
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBBaseViewController.h"

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ( isFirstWillAppear )
    {
        isFirstWillAppear = NO;
        
        [self firstWillAppear];
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ( isFirstDidAppear )
    {
        isFirstDidAppear = NO;
        
        [self firstDidAppear];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if ( isFirstWillDisappear )
    {
        isFirstWillDisappear = NO;
        
        [self firstWillDisappear];
    }
}

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
- (void)firstWillAppear
{
    TDLOG(@"");
}

- (void)firstDidAppear
{
    TDLOG(@"");
}

- (void)firstWillDisappear
{
    TDLOG(@"");
}

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

- (void)layoutForPortrait
{
    // Begin code here
}

- (void)layoutForLandscape
{
    // Begin code here
}

@end
