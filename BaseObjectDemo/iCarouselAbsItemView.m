//
//  iCarouselAbsItemView.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "iCarouselAbsItemView.h"

@implementation iCarouselAbsItemView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self setup];
        [self buildSubViews];
    }
    return self;
}
- (void)setup {}
- (void)buildSubViews {}
- (void)loadContent {}
- (void)offsetX:(CGFloat)x {}

#pragma mark - Class value.
+ (CGFloat)itemWidth {
    
    return 100.f;
}

+ (CGFloat)itemHeight {
    
    return 100.f;
}

@end
