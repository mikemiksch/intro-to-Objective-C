//
//  EmployeeDatabase.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/18/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"


@interface EmployeeDatabase : NSObject

+(instancetype)shared;

-(NSInteger)count;

-(NSArray *)allEmployees;

-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;
-(void)remove:(Employee *)employee;
-(void)removeEmployeeAtIndex:(Employee *)employee atIndex:(int)index;
-(void)removeAllEmployees;

@end
