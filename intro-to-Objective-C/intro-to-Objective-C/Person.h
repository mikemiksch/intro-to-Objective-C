//
//  Person.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(assign, nonatomic) int *age;

////Name Accessor Methods
//-(NSString *)name;
//-(void)setName:(NSString *)name;

// Instance Method
-(void)walk;

//Class Method
+(void)sayHello;

@end
