//
//  Employee.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "EmployeeDatabase.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                  managerName:(NSString *)managerName
                        andEmail:(NSString *)email {
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self) {
        [yearsEmployed retain];
        [managerName retain];
        [email retain];
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        _email = email;
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        [aDecoder retain];
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        [aDecoder release];
    }
    return self;
}

-(void) dealloc {
    [_yearsEmployed release];
    [_managerName release];
    [_employeeNumber release];
    [_email release];
    [super dealloc];
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder retain];
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder release];
}

-(id)copyWithZone:(NSZone *)zone{
    
    Employee *employee = [[super copyWithZone:zone]autorelease];
    employee.managerName = self.managerName;
    employee.employeeNumber = self.employeeNumber;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}


@end
