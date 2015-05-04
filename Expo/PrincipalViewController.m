//
//  PrincipalViewController.m
//  Expo
//
//  Created by Lu1s_Armandho0 on 21/08/14.
//  Copyright (c) 2014 UNAM Mobile. All rights reserved.
//

#import "PrincipalViewController.h"
#import "ContenidoViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)dis:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)premios:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ContenidoViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"contenido"];
    controller.opc = 4;
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)labFuturo:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ContenidoViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"contenido"];
    controller.opc = 1;
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)mobileFirst:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ContenidoViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"contenido"];
    controller.opc = 3;
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)internet:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ContenidoViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"contenido"];
    controller.opc = 2;
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)cu:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ContenidoViewController* controller = [storyboard instantiateViewControllerWithIdentifier:@"contenido"];
    controller.opc = 5;
    [self presentViewController:controller animated:YES completion:nil];
}
@end
