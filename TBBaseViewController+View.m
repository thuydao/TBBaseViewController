//
//  QSBaseViewController+View.m
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBBaseViewController+View.h"

@implementation TBBaseViewController (View)

#pragma mark - Push Notification
- (void)tb_pushViewControllerWithClass:(Class )aClass
{
    [self tb_pushViewControllerWithClass:aClass withAnimation:YES];
}

- (void)tb_pushViewControllerWithClass:(Class )aClass withAnimation:(BOOL )isAnimation
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(aClass)];
    
    [self tb_pushViewControllerWithObject:vc withAnimation:isAnimation];
}

- (void)tb_pushViewControllerWithObject:(id )aObject
{
    [self.navigationController pushViewController:aObject animated:YES];
}

- (void)tb_pushViewControllerWithObject:(id )aObject withAnimation:(BOOL )isAnimation
{
    [self.navigationController pushViewController:aObject animated:isAnimation];
}

@end
