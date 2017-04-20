//
//  PersonQueue.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

@required
-(void)enqueue:(Person)person;

-(Person)dequeue;

@optional
-(int)count;


@end
