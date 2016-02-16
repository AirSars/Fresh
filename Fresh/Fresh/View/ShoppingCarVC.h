//
//  ShoppingCarVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "BasicVC.h"

@interface ShoppingCarVC : BasicVC

@property (weak,nonatomic) IBOutlet UITableView *tableView;

@property (weak,nonatomic) IBOutlet NSLayoutConstraint *tableHeight;

-(IBAction)btnAction:(id)sender;

@end
