//
//  MemberVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "MemberVC.h"
#import "UIImage+Addtions.h"
#import "LoginVC.h"

@interface MemberVC ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MemberVC
{
    NSArray *titleAry;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    titleAry=@[
               @[@"我的订单",@"我的优惠券",@"我的水果"],@[@"我的收藏",@"我的收货地址"],@[@"设置",@"给我们评价"]
               ];
    [self setupUI];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)setupUI
{
    
}

#pragma mark - UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return titleAry.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [titleAry[section] count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellID=@"MemberCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellID];
    }
    cell.textLabel.font=[UIFont systemFontOfSize:14];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    NSUInteger section=indexPath.section;
    NSUInteger row=indexPath.row;
    if (titleAry.count>section) {
        NSArray *tempAry=titleAry[section];
        if (tempAry.count>row) {
            cell.textLabel.text=tempAry[row];
            cell.imageView.image=[UIImage imageWithContentFileName:@"new_user_address_logo.png"];
        }
    }
    return cell;
}

#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0://登陆
        {
            LoginVC *vc=[[LoginVC alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}


@end
