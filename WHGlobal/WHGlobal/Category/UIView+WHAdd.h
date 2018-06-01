//
//  UIView+WHAdd.h
//  WHGlobal
//
//  Created by 万贺 on 2018/6/1.
//  Copyright © 2018年 万贺. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WHAdd)

/**
 根据一个Rect针对四角中的某个或多个角设置圆角(切角的控件必须有size才会起作用)

 @param corners 切角位置 如：UIRectCornerBottomLeft|UIRectCornerTopLeft
 @param cornerRadii 指定了圆角的半径，这个参数的取值是 CGSize 类型，也就意味着这里需要给出的是椭圆的半径。 CGSizeMake(3, 3)
 */
- (void)cutCornerWithRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;

/**
 根据一个Rect针对四角中的某个或多个角设置圆角

 @param rect CGRect一个矩形
 @param corners 切角位置 如：UIRectCornerBottomLeft|UIRectCornerTopLeft
 @param cornerRadii 指定了圆角的半径，这个参数的取值是 CGSize 类型，也就意味着这里需要给出的是椭圆的半径。 CGSizeMake(3, 23)
 */
- (void)cutCornerWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;

@end
