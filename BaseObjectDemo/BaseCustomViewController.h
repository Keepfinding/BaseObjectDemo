//
//  BaseCustomViewController.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/11.
//  Copyright © 2019 idress. All rights reserved.
//

#import "CustomViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCustomViewController : CustomViewController

/**
 *  Setup data source.
 */
- (void)setupDataSource;

/**
 *  Overwrite to setup titleView, contentView etc.
 */
- (void)setupSubViews;
@end

NS_ASSUME_NONNULL_END
