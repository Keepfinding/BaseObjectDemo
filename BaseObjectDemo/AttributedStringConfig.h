//
//  AttributedStringConfig.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AttributedStringConfig : NSObject

@property (nonatomic, strong, readonly) NSString *attributeName;
@property (nonatomic, strong, readonly) id       attributeValue;
@property (nonatomic)                   NSRange  effectiveStringRange;
@end

