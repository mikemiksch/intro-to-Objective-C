//
//  Person.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "Person.h"

@implementation Person

//@property abstracts this all away.
//NSString *_name; //underlying instance variable
//
////Getter
//-(NSString *)name{
//    return _name;
//}
//
////Setter
//-(void)setName:(NSString *)name {
//    _name = name;
//}

-(void)walk{
    NSString *firstName = [self firstName];
    NSLog(@"%@ is walking...", firstName);
}

+(void)sayHello {
    NSLog(@"Hello!");
}


@end
