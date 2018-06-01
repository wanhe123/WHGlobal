//
//  WHGlobal.m
//  WHGlobal
//
//  Created by 万贺 on 2018/6/1.
//  Copyright © 2018年 万贺. All rights reserved.
//


#import "WHGlobal.h"

@implementation WHGlobal

/**
 * 在主线程中执行block
 */
void runMainThreadWithBlock(FunctionCallBack block)
{
    if (![NSThread isMainThread]) {
        dispatch_sync(dispatch_get_main_queue(), ^{
            block();
        });
    }
    else {
        block();
    }
}

/**
 * 分支处一个线程执行block(等级高)
 */
void runHighQueueWithBlock(FunctionCallBack block)
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        block();
    });
}

/**
 * 分支处一个线程执行block(等级中)
 */
void runDefaultQueueWithBlock(FunctionCallBack block)
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        block();
    });
}

/**
 * 分支处一个线程执行block(等级低)
 */
void runLowQueueWithBlock(FunctionCallBack block)
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        block();
    });
}



@end
