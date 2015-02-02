//
//  QSBaseViewController+View.m
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBBaseViewController+View.h"

@implementation TBBaseViewController (View)

#pragma mark - Push
- (void)pushViewControllerWithClass:(Class)aClass
{
    [self pushViewControllerWithClass:aClass withAnimation:YES];
}

- (void)pushViewControllerWithClass:(Class )aClass withAnimation:(BOOL )isAnimation
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(aClass)];
    
    [self pushViewControllerWithObject:vc withAnimation:isAnimation];
}

- (void)pushViewControllerWithObject:(id )aObject
{
    [self.navigationController pushViewController:aObject animated:YES];
}

- (void)pushViewControllerWithObject:(id )aObject withAnimation:(BOOL )isAnimation
{
    [self.navigationController pushViewController:aObject animated:isAnimation];
}

@end
