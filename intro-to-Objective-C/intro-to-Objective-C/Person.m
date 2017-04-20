//
//  Person.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                         andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        [firstName retain];
        [lastName retain];
        [age retain];
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

-(void)dealloc{
    [_firstName release];
    [_lastName release];
    [_age release];
    [super dealloc];
}

-(void)walk{
    NSString *firstName = [self firstName];
    [firstName retain];
    NSLog(@"%@ is walking...", firstName);
    [firstName release];
}

+(void)sayHello {
    NSLog(@"Hello!");
}

-(id)copyWithZone:(NSZone *)zone {
    Person *person = [[[[self class] alloc]init]autorelease];
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}


@end
