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
#import "EmployeeDatabase.h"



@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *employeesTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.employeesTableView.dataSource = self;
    
    Employee *mike = [[Employee alloc]initWithFirstName:@"Mike" lastName: @"Miksch" age:@37 yearsEmployed:@1 managerName:@"Monica" andEmail:@"mike@email.com"];
    
    Employee *ben = [[Employee alloc]initWithFirstName:@"Ben" lastName:@"Riceman" age:@30 yearsEmployed:@2 managerName:@"Janet" andEmail:@"ben@email.com"];
    
    Employee *missy = [[Employee alloc]initWithFirstName:@"Missy" lastName:@"Tidd" age:@36 yearsEmployed:@5 managerName:@"Todd" andEmail:@"missy@email.com"];
    
    Employee *candy = [[Employee alloc]initWithFirstName:@"Candy" lastName:@"Dawson" age:@40 yearsEmployed:@3 managerName:@"Jimbob" andEmail:@"candy@email.com"];
    
    Employee *tyler = [[Employee alloc]initWithFirstName:@"Tyler" lastName:@"Durden" age:@30 yearsEmployed:@5 managerName:@"Richard" andEmail:@"tyler@email.com"];
}


- (IBAction)addEmployeeButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"AddEmployeeViewController" sender:self];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [EmployeeDatabase.shared count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Employee *selectedEmployee = [EmployeeDatabase.shared employeeAtIndex: indexPath.row];
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", selectedEmployee.firstName, selectedEmployee.lastName];
    cell.textLabel.text = fullName;
    return cell;
}

@end
