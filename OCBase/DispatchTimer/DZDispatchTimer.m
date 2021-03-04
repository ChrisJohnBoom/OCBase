//
//  DZDispatchTimer.m
//  OCBase
//
//  Created by 杜志 on 2021/2/28.
//  Copyright © 2021 duzhi. All rights reserved.
//

#import "DZDispatchTimer.h"


@interface DZDispatchTimer ()

@property (nonatomic,strong) dispatch_source_t timer;

@end


@implementation DZDispatchTimer

-(void)createDispatchTimer{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(_timer, DISPATCH_TIME_NOW, 0.0 * NSEC_PER_SEC, 1.0 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(_timer, ^{
        NSLog(@"Dispatch Timer test \r\n");
    });
    dispatch_resume(_timer);
}

@end
