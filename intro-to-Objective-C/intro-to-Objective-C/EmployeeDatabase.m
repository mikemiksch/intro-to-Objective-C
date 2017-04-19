//
//  EmployeeDatabase.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/18/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

+(instancetype)shared {
    
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    
    return shared;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if (!_employees) {
            _employees = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

-(void)save{
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    if (success) {
        NSLog(@"Saved Employees");
    } else {
        NSLog(@"Save failed :(");
    }
}

-(NSInteger)count{
    return [self.employees count];
}

-(NSArray *)allEmployees{
    return self.employees;
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex:index];
}

-(void)add:(Employee *)employee{
    [self.employees addObject:employee];
    NSLog(@"%@", self.allEmployees);
    [self save];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];
}

-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
    [self save];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
    [self save];
}


//MARK Helper methods
-(NSURL *)documentsDirectory {
    
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL {
    
    return [[self documentsDirectory] URLByAppendingPathComponent: @"archive"];
    
}

@end
