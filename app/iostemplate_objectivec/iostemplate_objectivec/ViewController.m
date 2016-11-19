//
//  ViewController.m
//  iostemplate_objectivec
//
//  Created by Jaenelle Isidro on 19/11/2016.
//  Copyright © 2016 Jaenelle Isidro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *etUsername;
@property (weak, nonatomic) IBOutlet UITextField *etPassword;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLoginClick:(id)sender {
    NSLog(@"booom");
}

@end
