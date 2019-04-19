//
//  ParagraphAttributeConfig.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "AttributedStringConfig.h"

@interface ParagraphAttributeConfig : AttributedStringConfig

@property (nonatomic, strong) NSParagraphStyle *paragraphStyle;

+ (instancetype)configWithParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range;
+ (instancetype)configWithParagraphStyle:(NSParagraphStyle *)paragraphStyle;
@end

