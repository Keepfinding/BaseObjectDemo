//
//  LinearCarouseItemView.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "LinearCarouseItemView.h"
#import "UIView+SetRect.h"

static CGFloat gap = 40.f;
@interface LinearCarouseItemView ()

@property (nonatomic, strong) UIImageView *imageView;
@end
@implementation LinearCarouseItemView

- (void)setup {
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius  = 5.f;
}
- (void)buildSubViews {
    
    self.imageView             = [[UIImageView alloc] initWithFrame:CGRectMake(-gap, 0, Width, self.height)];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:self.imageView];
}
- (void)loadContent {
    
    self.imageView.image = [UIImage imageNamed:self.adpter.data];
}
- (void)offsetX:(CGFloat)x {
    
    self.imageView.x = 0.95f * x;
}
+ (CGFloat)itemWidth {
    
    return Width - gap * 2.f;
}
@end
