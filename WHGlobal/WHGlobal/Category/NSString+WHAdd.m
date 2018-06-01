//
//  NSString+WHAdd.m
//  WHGlobal
//
//  Created by 万贺 on 2018/6/1.
//  Copyright © 2018年 万贺. All rights reserved.
//

#import "NSString+WHAdd.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (WHAdd)

/** 判断是否为整形 */
- (BOOL)isGGPureInt
{
    NSScanner * scan = [NSScanner scannerWithString:self];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

/** 判断是否为浮点形 */
- (BOOL)isGGPureFloat
{
    NSScanner * scan = [NSScanner scannerWithString:self];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}

/** 给金额字符串加逗号，例如：30000000000.50－>30,000,000,000.50 */
- (NSString *)addCommaForPriceString:(NSString *)priceStr
{
    NSMutableString *str = priceStr.mutableCopy;
    NSRange range = [priceStr rangeOfString:@"."];
    NSInteger index = 0;
    if (range.length > 0) {
        //如果存在小数点，index就是小数点的位置
        index = range.location;
    }else{
        //不存在小数点，index就是输入数字的长度
        index = priceStr.length;
    }
    while ((index-3)>0) {
        index -= 3;
        [str insertString:@"," atIndex:index];
    }
    return str;
    
}

/** md5加密  */
- (NSString*)MD5
{
    // Create pointer to the string as UTF8
    const char *ptr = [self UTF8String];
    
    // Create byte array of unsigned chars
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
    
    // Create 16 byte MD5 hash value, store in buffer
    CC_MD5(ptr, (CC_LONG)strlen(ptr), md5Buffer);
    
    // Convert MD5 value in the buffer to NSString of hex values
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x",md5Buffer[i]];
    
    return output;
}

/** 计算字符串size */
- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

/** 计算字符串size */
- (CGSize)sizeWithFont:(UIFont *)font
{
    return [self sizeWithFont:font maxW:MAXFLOAT];
}

@end
