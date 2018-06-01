//
//  NSString+WHAdd.h
//  WHGlobal
//
//  Created by 万贺 on 2018/6/1.
//  Copyright © 2018年 万贺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (WHAdd)

/** 判断是否为整形 */
- (BOOL)isGGPureInt;
/** 判断是否为浮点形 */
- (BOOL)isGGPureFloat;

/**
 给金额字符串加逗号，例如：30000000000.50－>30,000,000,000.50
 
 @param priceStr 待修改的金额字符串
 @return 添加逗号的金额字符串
 */
- (NSString *)addCommaForPriceString:(NSString *)priceStr;

/**
 md5加密

 @return 加密后的数据
 */
- (NSString *)MD5;

/**
 计算字符串size

 @param font 字号
 @param maxW 最大宽度
 */
- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW;

/**
 计算字符串size

 @param font 字号
 */
- (CGSize)sizeWithFont:(UIFont *)font;

@end
