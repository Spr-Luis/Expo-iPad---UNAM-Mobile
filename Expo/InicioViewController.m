//
//  InicioViewController.m
//  Expo
//
//  Created by Lu1s_Armandho0 on 20/08/14.
//  Copyright (c) 2014 UNAM Mobile. All rights reserved.
//

#import "InicioViewController.h"
#import "PrincipalViewController.h"

@interface InicioViewController ()

@end

@implementation InicioViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _iniciar.layer.cornerRadius = 5;
    _iniciar.layer.borderColor = [UIColor whiteColor].CGColor;
    _iniciar.layer.borderWidth = 1.f;
}


- (IBAction)iniciarAction:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PrincipalViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"principal"];
    [self presentViewController:controller animated:YES completion:nil];
}
@end
