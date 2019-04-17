//
//  BaseCustomViewController.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/11.
//  Copyright © 2019 idress. All rights reserved.
//

#import "BaseCustomViewController.h"

@interface BaseCustomViewController ()

@end

@implementation BaseCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupSubViews];
    [self setupDataSource];
}

#pragma mark - Overwrite by subclass.

- (void)setupSubViews {}

- (void)setupDataSource {}

@end
