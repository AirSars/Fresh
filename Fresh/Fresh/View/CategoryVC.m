//
//  CategoryVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "CategoryVC.h"
#import "CategoryListCell.h"
#import "FGoodsDetailVC.h"
#import "FSearchVC.h"

@interface CategoryVC ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation CategoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupUI];
}

-(void)setupUI
{
    UIImage *searchimage=[UIImage imageNamed:@"mag_glass"];
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStyleDone target:self action:@selector(searchprogram)];
    barbtn.image=searchimage;
    self.navigationItem.rightBarButtonItem=barbtn;
    if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    if ([_tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
}

-(void)searchprogram
{
    FSearchVC *vc=[[FSearchVC alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - TableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 97;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CategoryListCell *cell=[tableView dequeueReusableCellWithIdentifier:@"categoryCell"];
    if (!cell) {
        cell=[[NSBundle mainBundle]loadNibNamed:@"CategoryListCell" owner:self options:nil][0];
    }
    [self configureCell:cell atIndex:indexPath];
    return cell;
}

-(void)configureCell:(CategoryListCell *)cell atIndex:(NSIndexPath *)indexPath
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FGoodsDetailVC *vc=[[FGoodsDetailVC alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
