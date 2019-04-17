//
//  ItemStyle.m
//  ItemStyle
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "ItemStyle.h"

@implementation ItemStyle

- (void)makeStyleEffective {
    
    [NSException raise:@"Use ItemStyle in the wrong way."
                format:@"You should overwrite the method 'makeStyleEffective', not override."];
}

+ (instancetype)style {
    
    return [[[self class] alloc] init];
}

@end
