//
//  ContenidoViewController.m
//  Expo
//
//  Created by Lu1s_Armandho0 on 21/08/14.
//  Copyright (c) 2014 UNAM Mobile. All rights reserved.
//

#import "ContenidoViewController.h"


@interface ContenidoViewController (){
    NSArray *Menu,*menuImg,*lampara,*drones,*health,*lp,*aviso,*gr,*mur,*smarty,*door,*pod,*premios,*sub1,*CU,*lab;
    NSMutableArray *gral,*datos;
}

@end

@implementation ContenidoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    gral = [[NSMutableArray alloc]init];
    datos = [[NSMutableArray alloc]init];
    

    
   //Menu
    
    Menu = [NSArray arrayWithObjects:@"El Laboratorio del Futuro",@"Internet of the things",@"- Health",@"- Wearables",@"- Drones",@"- Smarth Home - Lamp",@"Smart Home - Security",@"Mobile first",@"- Living Paints",@"- Genius Rex",@"- Smarty",@"- Murales CU",@"- Mis Avisos",@"Reconocimientos",@"Ciudad Universitaria", nil];
    menuImg = [NSArray arrayWithObjects:@"ico1.png",@"ico2.png",@"ico3.png",@"ico4.png",@"ico5.png", nil];
    lampara = [NSArray arrayWithObjects:@"lamp1.png",@"lamp2.png",@"lamp3.png", nil];
    drones = [NSArray arrayWithObjects:@"car1.png",@"car2.png",@"car3.png", nil];
    //lp = [NSArray arrayWithObjects:@"Mis-Avisos.png",@"Paints.png",@"smarty.png",@"Rex.png",@"Murles.png",@"Kanji.png",nil];
    lp = [NSArray arrayWithObjects:@"Paints.png",nil];
    gr = [NSArray arrayWithObjects:@"Rex.png", nil];
    smarty = [NSArray arrayWithObjects:@"smarty.png", nil];
    mur = [NSArray arrayWithObjects:@"Murles.png", nil];
    aviso = [NSArray arrayWithObjects:@"Mis-Avisos.png", nil];
    health = [NSArray arrayWithObjects:@"health1.png",@"health2.png",@"health3.png", nil];
    door = [NSArray arrayWithObjects:@"door1.png",@"door2.png", nil];
    pod = [NSArray arrayWithObjects:@"podium1.png",@"podium2.png",@"podium3.png", nil];
    premios = [NSArray arrayWithObjects:@"premios.png", nil];
    CU = [NSArray arrayWithObjects:@"CU1.png", nil];
    lab = [NSArray arrayWithObjects:@"LAB1.png",@"LAB2.png", nil];
    
    datos = [NSMutableArray arrayWithArray:Menu];
    
    switch (_opc) {
        case 1:
            gral = [NSMutableArray arrayWithArray:lab];
            break;
        case 2:
            gral = [NSMutableArray arrayWithArray:pod];
            break;
        case 3:
            gral = [NSMutableArray arrayWithArray:health];
            break;
        case 4:
            gral = [NSMutableArray arrayWithArray:premios];
            break;
        case 5:
            gral = [NSMutableArray arrayWithArray:CU];
            break;
        default:
            break;
    }
    
    _carousel.delegate = self;
    _carousel.dataSource = self;
    _carousel.type = iCarouselTypeLinear;
    _carousel.pagingEnabled=YES;

}


#pragma mark UITableViewDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.titulo.text = [datos objectAtIndex:indexPath.row];
    if (indexPath.row < 2) {
        cell.imageTipo.image = [UIImage imageNamed:[menuImg objectAtIndex:indexPath.row]];
    }else if(indexPath.row == 7){
        cell.imageTipo.image = [UIImage imageNamed:[menuImg objectAtIndex:2]];
    }else if(indexPath.row == 13){
        cell.imageTipo.image = [UIImage imageNamed:[menuImg objectAtIndex:3]];
    }else if(indexPath.row == 14){
        cell.imageTipo.image = [UIImage imageNamed:[menuImg objectAtIndex:4]];
    }else {
        cell.imageTipo.image = nil;
    }
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [datos count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Index: %d",indexPath.row);
    
    switch (indexPath.row) {
        case 0:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:lab];
            [_carousel reloadData];
        }
            break;
        case 1:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:health];
            [_carousel reloadData];

        }
            break;
        case 2:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:health];
            [_carousel reloadData];
            
        }
            break;
            
            
        case 3:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:pod];
            [_carousel reloadData];
            
        }
            break;
            
        case 4:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:drones];
            [_carousel reloadData];
            
        }
            break;
            
            
        case 5:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:lampara];
            [_carousel reloadData];
            
        }
            break;
            
        case 6:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:door];
            [_carousel reloadData];
            
        }
            break;
            
            
            
            
        case 7:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:lp];
            [_carousel reloadData];
            
        }
            break;
            
        case 8:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:lp];
            [_carousel reloadData];
            
        }
            break;
            
            
            
        case 9:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:gr];
            [_carousel reloadData];
            
        }
            break;
            
            
        case 10:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:smarty];
            [_carousel reloadData];
            
        }
            break;
            
            
        case 11:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:mur];
            [_carousel reloadData];
            
        }
            break;
            
            break;
        case 12:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:aviso];
            [_carousel reloadData];

        }
            break;
            
        case 13:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:premios];
            [_carousel reloadData];
        }
            break;
            
        case 14:{
            [UIView animateWithDuration:0.5 animations:^{
                CGPoint punto = CGPointMake(-160, _menuLateral.center.y);
                _menuLateral.center = punto;
            }];
            gral = [NSMutableArray arrayWithArray:CU];
            [_carousel reloadData];
        }
            break;
            
        default:
            break;
    }
    _carousel.currentItemIndex = 0;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark iCarousel methods

- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    //return the total number of items in the carousel
    return [gral count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    if (view == nil)
    {
        view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024,768)];
        ((UIImageView *)view).image = [UIImage imageNamed:[gral objectAtIndex:index]];
        ((UIImageView *)view).contentMode = UIViewContentModeScaleAspectFill;
        
    }
    
    
    return view;
}
- (IBAction)dis:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)mostrarMenu:(UIButton *)sender {
    [UIView animateWithDuration:0.25 animations:^{
        CGPoint punto = CGPointMake(160, _menuLateral.center.y);
        _menuLateral.center = punto;
    }];
}
@end