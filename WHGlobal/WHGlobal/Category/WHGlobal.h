//
//  WHGlobal.h
//  WHGlobal
//
//  Created by 万贺 on 2018/6/1.
//  Copyright © 2018年 万贺. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^FunctionCallBack)(void);   ///< 无参、无返回值block


@interface WHGlobal : NSObject

/**
 * 在主线程中执行block
 */
void runMainThreadWithBlock(FunctionCallBack block);

/**
 * 分支处一个线程执行block(等级高)
 */
void runHighQueueWithBlock(FunctionCallBack block);

/**
 * 分支处一个线程执行block(等级中)
 */
void runDefaultQueueWithBlock(FunctionCallBack block);

/**
 * 分支处一个线程执行block(等级低)
 */
void runLowQueueWithBlock(FunctionCallBack block);



@end
