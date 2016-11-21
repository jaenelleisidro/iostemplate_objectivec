//
//  ViewController.m
//  iostemplate_objectivec
//
//  Created by Jaenelle Isidro on 19/11/2016.
//  Copyright © 2016 Jaenelle Isidro. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "HttpAdapter.h"
#import "MainViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *etUsername;
@property (weak, nonatomic) IBOutlet UITextField *etPassword;
@end

@implementation ViewController
{
    HttpAdapter *httpAdapter;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    httpAdapter=[[HttpAdapter alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onLoginClick:(id)sender {
    NSLog(@"booom");
    [httpAdapter postRequest];
    
    MainViewController *main = [self.storyboard instantiateViewControllerWithIdentifier:@"Main"];
    [self presentViewController:main animated:YES completion:nil];
}








@end
