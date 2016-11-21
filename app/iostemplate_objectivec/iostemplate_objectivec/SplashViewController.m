//
//  SplashViewController.m
//  iostemplate_objectivec
//
//  Created by Jaenelle Isidro on 21/11/2016.
//  Copyright © 2016 Jaenelle Isidro. All rights reserved.
//

#import "SplashViewController.h"
#import "ViewController.h"

@interface SplashViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dispatch_time_t delay = dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC * 3);
    dispatch_after(delay, dispatch_get_main_queue(), ^(void){
        ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Login"];
        [self presentViewController:vc animated:YES completion:nil];
    });
}
@end
