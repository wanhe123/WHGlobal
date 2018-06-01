//
//  UIView+WHAdd.m
//  WHGlobal
//
//  Created by 万贺 on 2018/6/1.
//  Copyright © 2018年 万贺. All rights reserved.
//

#import "UIView+WHAdd.h"

@implementation UIView (WHAdd)

- (void)cutCornerWithRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii{
    if (self.bounds.size.height == 0 || self.bounds.size.width ==0) {
        return;
    }
    UIBezierPath * maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:cornerRadii];
    
    CAShapeLayer * maskLayer = [[CAShapeLayer alloc]init];
    
    maskLayer.frame = self.bounds;
    
    maskLayer.path = maskPath.CGPath;
    
    self.layer.mask = maskLayer;
}

- (void)cutCornerWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii{
    self.bounds = rect;
    [self cutCornerWithRoundingCorners:corners cornerRadii:cornerRadii];
}

@end
