//
//  MyPageVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/25.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "BasicVC.h"

@interface MyPageVC : BasicVC

@property (weak,nonatomic) IBOutlet UITableView *tableView;

-(IBAction)buttonAction:(id)sender;

@end
