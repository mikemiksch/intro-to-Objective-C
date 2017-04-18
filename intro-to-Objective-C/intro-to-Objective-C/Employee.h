//
//  Employee.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "Person.h"

@interface Employee : Person

@property(strong, nonatomic) NSString *managerName;
@property(assign, nonatomic) int *employeeNumber;
@property(assign, nonatomic) int *yearsEmployed;

-(NSString *)managerName;

-(int *)yearsEmployed;

-(int *)employeeNumber;

//Senders
-(void)setManagerName:(NSString *)managerName;

-(void)setEmployeeNumber:(int *)employeeNumber;

-(void)setYearsEmployed:(int *)yearsEmployed;

@end
