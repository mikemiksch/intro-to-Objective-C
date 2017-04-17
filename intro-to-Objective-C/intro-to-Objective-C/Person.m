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
    NSString *name = [self name];
    NSLog(@"%@ is walking...", name);
}

+(void)sayHello {
    NSLog(@"Hello!");
}


@end
