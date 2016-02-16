//
//  ShoppingCarVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "ShoppingCarVC.h"
#import "GoodsListCell.h"
#import "UIView+BMLine.h"
#import "CheckOutVC.h"

@interface ShoppingCarVC ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ShoppingCarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupUI];
}

-(void)setupUI
{
    UIBarButtonItem *item=[[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStyleDone target:self action:@selector(edit)];
    self.navigationItem.rightBarButtonItem=item;
    if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    if ([_tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    [_tableView addLineWithType:0 color:nil position:BMLinePostionCustomBottom];
}

-(void)edit
{
    
}

#pragma mark - TableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 97;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GoodsListCell *cell=[tableView dequeueReusableCellWithIdentifier:@"goodsListCell"];
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"GoodsListCell" owner:self options:nil][0];
    }
    [self configureCell:cell atIndex:indexPath];
    return cell;
}

-(void)configureCell:(GoodsListCell *)cell atIndex:(NSIndexPath *)indexPath
{
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
}

-(void)btnAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0:
        {
            CheckOutVC *vc=[[CheckOutVC alloc]init];
            vc.hidesBottomBarWhenPushed=YES;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}


@end
