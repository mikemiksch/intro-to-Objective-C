//
//  ViewController.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewControllerDataSource.h"
#import "NSString+ArrayFromStringAndReversal.h"

static int goMoveNumber = 10; //Global variable that is not accessible to any other file

@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self requiredNumberForEachItem:100];
    
    Person *mike = [[Person alloc] init];
    
    [mike setName:@"Mike"]; //Creates and assigns value to the property
    
    NSString *personName = [mike name];
    
    [mike walk]; //Equivalent to "mike.walk" in other languages
    
    [Person sayHello]; //Can only be called on the type, not an instance
    
    NSString *testString = @"This string is a test. This is only a test. Had this been a real string, it would have tied something together";
    
    [testString arrayFromString:testString];
    [testString reverseString:testString];
    
}

- (void)requiredNumberForEachItem:(int)number {
    
}


@end
