//
//  ViewController.m
//  OCBase
//
//  Created by 杜志 on 2021/2/19.
//  Copyright © 2021 duzhi. All rights reserved.
//

#import "ViewController.h"
#import "DZDispatchTimer.h"
@interface ViewController ()
{
    dispatch_source_t timer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createTimer];
}


-(BOOL)canContribute:(NSString *)targetStr originalStr:(NSString *)originalStr{
    BOOL result = TRUE;
    
    for (NSInteger i = 0; i < targetStr.length ; i++){
        NSString * subString = [targetStr substringWithRange:NSMakeRange(i, 1)];
        
        if(![originalStr containsString:subString]){
            result = FALSE;
            break;
        }
    }
    return result;
}

static int count = 0;
static int timeInterval = 0;

-(void)createTimer{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC, 0.001 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(timer, ^{
        int timeInter = NSDate.date.timeIntervalSince1970;
        NSLog(@"Dispatch Timer test [%d]\r\n",timeInter - timeInterval);
        timeInterval = timeInter;
    });
    dispatch_resume(timer);
}

@end
