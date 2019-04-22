//
//  QZGradientView.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/22.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QZGradientView : UIView

/**
 *  CAGradientLayer's colors.
 */
@property (nonatomic, strong) NSArray  *colors;

/**
 *  CAGradientLayer's locations.
 */
@property (nonatomic, strong) NSArray  *locations;

/**
 *  CAGradientLayer's startPoint.
 */
@property (nonatomic)         CGPoint   startPoint;

/**
 *  CAGradientLayer's endPoint.
 */
@property (nonatomic)         CGPoint   endPoint;

@end
