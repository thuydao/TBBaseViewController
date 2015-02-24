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

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        // [self performSelector:@selector(initView)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self performSelector:@selector(initView)];
    
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

#pragma mark - initView
/**
 *  initView
 */
- (void)initView
{
    
}

#pragma mark - Focus Field
/**
 *  focusField
 */
- (void)focusField
{
    
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
    
    [self focusField];
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - Category NavigationController
@implementation TBBaseViewController (NavigationController)

/**
 *  tb_getViewControllerWithClass
 *
 *  @param aClass Class
 *
 *  @return UIViewController
 */
- (id)tb_getViewControllerWithClass:(Class)aClass
{
    @try
    {
        UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(aClass)];
        return vc;
    }
    @catch (NSException *exception)
    {
        return [[UIViewController alloc] init];
        TDLOG(@"cant found viewcontroller from storyboard file")
    }
}

/**
 *  tb_pushViewControllerWithClass
 *
 *  Default animation = yes
 *  @param aClass Class
 */
- (void)tb_pushViewControllerWithClass:(Class )aClass
{
    [self tb_pushViewControllerWithClass:aClass animated:YES];
}

/**
 *  tb_pushViewControllerWithClass
 *
 *  @param aClass      Class
 *  @param isAnimation BOOL
 */
- (void)tb_pushViewControllerWithClass:(Class )aClass animated:(BOOL )animated
{
    @try
    {
        UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(aClass)];
        
        [self tb_pushViewControllerWithObject:vc animated:animated];
    }
    @catch (NSException *exception)
    {
        TDLOG(@"cant found viewcontroller from storyboard file")
    }
}


/**
 *  tb_pushViewControllerWithObject
 *
 *  default animated = yes;
 *  @param aObject id
 */
- (void)tb_pushViewControllerWithObject:(id )aObject
{
    @try
    {
        [self.navigationController pushViewController:aObject animated:YES];
    }
    @catch (NSException *exception)
    {
        TDLOG(@"object = nil")
    }
}

/**
 *  tb_pushViewControllerWithObject
 *
 *  @param aObject     id
 *  @param isAnimation BOOL
 */
- (void)tb_pushViewControllerWithObject:(id )aObject animated:(BOOL )animated
{
    @try
    {
        [self.navigationController pushViewController:aObject animated:animated];
    }
    @catch (NSException *exception)
    {
        TDLOG(@"object = nil")
    }
}

/**
 *  tb_popViewControllerWithObject
 *
 *  @param aObject id
 */
- (void)tb_popViewControllerWithObject:(id)aObject
{
    @try
    {
        [self.navigationController popToViewController:aObject animated:YES];
    }
    @catch (NSException *exception)
    {
        TDLOG(@"object = nil")
    }
}

/**
 *  tb_popViewController
 */
- (void)tb_popViewController
{
    [self tb_popViewControllerWithAnimation:YES];
}

/**
 *  tb_popViewControllerWithAnimation
 *
 *  @param animated BOOL
 */
- (void)tb_popViewControllerWithAnimation:(BOOL )animated
{
    [self.navigationController popViewControllerAnimated:animated];
}

/**
 *  tb_popToRootViewControllerWithAnimation
 */
- (void)tb_popToRootViewController
{
    [self tb_popToRootViewControllerWithAnimation:YES];
}

/**
 *  tb_popToRootViewControllerWithAnimation
 *
 *  @param animated BOOL
 */
- (void)tb_popToRootViewControllerWithAnimation:(BOOL )animated
{
    [self.navigationController popToRootViewControllerAnimated:animated];
}

/**
 *  tb_hideBackbutton
 */
- (void)tb_hideBackbutton
{
    self.navigationItem.leftBarButtonItem=nil;
    self.navigationItem.hidesBackButton=YES;
}

@end
