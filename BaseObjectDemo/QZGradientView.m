//
//  QZGradientView.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/22.
//  Copyright © 2019 idress. All rights reserved.
//

#import "QZGradientView.h"

@interface QZGradientView () {
    CAGradientLayer *_gradientLayer;
}

@end
@implementation QZGradientView

+ (Class)layerClass {
    
    return [CAGradientLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        _gradientLayer = (CAGradientLayer *)self.layer;
    }
    return self;
}

#pragma mark - 重写setter,getter方法
@synthesize colors = _colors;

- (void)setColors:(NSArray *)colors {
    
    _colors = colors;
    // 将color转换成CGColor
    NSMutableArray *cgColors = [NSMutableArray array];
    for (UIColor *tmp in colors) {
        id cgColor = (__bridge id)tmp.CGColor;
        [cgColors addObject:cgColor];
    }
    // 设置Colors
    _gradientLayer.colors = cgColors;
}
- (NSArray *)colors {
    
    return _colors;
}

@synthesize locations = _locations;

- (void)setLocations:(NSArray *)locations {
    
    _locations               = locations;
    _gradientLayer.locations = _locations;
}

- (NSArray *)locations {
    
    return _locations;
}

@synthesize startPoint = _startPoint;

- (void)setStartPoint:(CGPoint)startPoint {
    
    _startPoint               = startPoint;
    _gradientLayer.startPoint = startPoint;
}

- (CGPoint)startPoint {
    
    return _startPoint;
}

@synthesize endPoint = _endPoint;

- (void)setEndPoint:(CGPoint)endPoint {
    
    _endPoint               = endPoint;
    _gradientLayer.endPoint = endPoint;
}

- (CGPoint)endPoint {
    
    return _endPoint;
}


@end
