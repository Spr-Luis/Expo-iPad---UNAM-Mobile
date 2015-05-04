//
//  ContenidoViewController.h
//  Expo
//
//  Created by Lu1s_Armandho0 on 21/08/14.
//  Copyright (c) 2014 UNAM Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"
#import "CustomTableViewCell.h"


@interface ContenidoViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,iCarouselDataSource, iCarouselDelegate>

@property (strong, nonatomic) IBOutlet UIView *menuLateral;
@property (strong, nonatomic) IBOutlet iCarousel *carousel;
@property (strong, nonatomic) IBOutlet UITableView *tabla;
- (IBAction)mostrarMenu:(UIButton *)sender;

@property int opc;

@end
