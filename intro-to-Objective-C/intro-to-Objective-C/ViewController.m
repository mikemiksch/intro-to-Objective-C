//
//  ViewController.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "ViewController.h"

//static void *kvoContext = &kvoContext;

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *employeesTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.employeesTableView.dataSource = self;
    self.employeesTableView.delegate = self;
    [[EmployeeDatabase shared] addObserver:self forKeyPath:@"employees" options:NSKeyValueObservingOptionNew | NSKeyValueChangeInsertion context:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleData) name:@"reloadData" object:nil];
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqual: @"employees"]) {
        [self.employeesTableView reloadData];
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
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
    [self performSegueWithIdentifier:@"EmployeeDetailViewController" sender:self];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmployeeDatabase shared] removeEmployeeAtIndex:indexPath.row];
        [self.employeesTableView reloadData];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    if ([segue.identifier  isEqualToString: @"EmployeeDetailViewController"]) {
        int selectedIndex = self.employeesTableView.indexPathForSelectedRow.row;
        Employee *selectedEmployee = [EmployeeDatabase.shared employeeAtIndex:selectedIndex];
        EmployeeDetailViewController *destinationController = segue.destinationViewController;
        destinationController.selectedEmployee = selectedEmployee;
    }
}

//-(void)dealloc
//{
//    [[EmployeeDatabase shared] removeObserver:self forKeyPath:@"employees"];
//}

@end
