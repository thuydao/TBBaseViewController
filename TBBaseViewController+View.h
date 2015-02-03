//
//  QSBaseViewController+View.h
//  ktv516
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBBaseViewController.h"

@interface TBBaseViewController (View)

#pragma mark - Push Notification
- (void)tb_pushViewControllerWithClass:(Class )aClass;
- (void)tb_pushViewControllerWithClass:(Class )aClass withAnimation:(BOOL )isAnimation;

- (void)tb_pushViewControllerWithObject:(id )aObject;
- (void)tb_pushViewControllerWithObject:(id )aObject withAnimation:(BOOL )isAnimation;

@end
