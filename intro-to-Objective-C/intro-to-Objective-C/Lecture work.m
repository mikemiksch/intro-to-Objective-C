//
//  Lecture work.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/18/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewControllerDataSource.h"
#import "NSString+ArrayFromStringAndReversal.h"
#import "EmployeeDatabase.m"
#import "Employee.h"
static int goMoveNumber = 10; //Global variable that is not accessible to any other file

@interface Lecture_work () <ViewControllerDataSource>

@end

@implementation Lecture_work

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNumber *num1 = @123;
    NSNumber *num2 = @321;
    
    switch ([num1 compare:num2]) {
        case NSOrderedSame:
            NSLog(@"Numbers are equal");
            break;
        case NSOrderedAscending:
            NSLog(@"Less Than");
            break;
        case NSOrderedDescending:
            NSLog(@"Greater Than");
            break;
    }
    
    NSString *string1 = @"One";
    NSString *string2 = @"Two";
    NSString *string3 = @"Three";
    NSNumber *number = @4;
    
    NSArray *array = @[string1, string2, string3, number];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithObjects:string1, string2, string3, number, nil];
    
    NSDictionary *dictionary = @{@"firstName": @"Mike", @"lastName": @"Miksch", @"age": @37};
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] initWithDictionary:@{@"firstName": @"Mike", @"lastName": @"Miksch", @"age": @37}];
    
    [mutableDictionary setObject:@"cat" forKey:@"pet"];
    
    NSString *firstName = dictionary[@"firstName"];
    
    mutableDictionary[@"pet"] = @"Dog";
    
    EmployeeDatabase *test = [[EmployeeDatabase alloc]init];
    
    NSLog(@"%@", [test documentsDirectory]);
    NSLog(@"%@", [test archiveURL]);
    
    
    
    [self requiredNumberForEachItem:100];
    
    Person *mike = [[Person alloc] init];
    
    [mike setFirstName:@"Mike"]; //Creates and assigns value to the property
    [mike setLastName:@"Miksch"];
    [mike setAge: @37];
    
    [mike walk]; //Equivalent to "mike.walk" in other languages
    
    [Person sayHello]; //Can only be called on the type, not an instance
    
    NSString *testString = @"This string is a test. This is only a test. Had this been a real string, it would have tied something together";
    
    [testString arrayFromString];
    [testString reverseString];

}


@end
