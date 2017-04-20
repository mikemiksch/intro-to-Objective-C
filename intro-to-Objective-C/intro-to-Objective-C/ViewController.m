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



@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *employeesTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.employeesTableView.dataSource = self;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleData) name:@"reloadData" object:nil];
}

- (void)handleData{
    [self.employeesTableView reloadData];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Go to employee details
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [EmployeeDatabase.shared removeEmployeeAtIndex:indexPath.row];
        [self.employeesTableView reloadData];
    }
}


@end
