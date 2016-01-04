//
//  MyPageVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/25.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "MyPageVC.h"
#import "UIImage+Addtions.h"
#import "LoginVC.h"

@interface MyPageVC ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MyPageVC
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
    self.modalPresentationStyle = UIModalPresentationCurrentContext;
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

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.0;
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
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.font=[UIFont systemFontOfSize:14];
    cell.textLabel.textAlignment=NSTextAlignmentLeft;
    cell.textLabel.textColor=[UIColor blackColor];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    CGRect frame=cell.imageView.frame;
    frame.size=CGSizeMake(40, 40);
    frame.origin.y=frame.origin.y+5;
    cell.imageView.frame=frame;
    NSUInteger section=indexPath.section;
    NSUInteger row=indexPath.row;
    if (titleAry.count>section) {
        NSArray *tempAry=titleAry[section];
        if (tempAry.count>row) {
            cell.textLabel.text=tempAry[row];
            cell.imageView.image=[UIImage imageWithContentFileName:@"new_user_address_logo"];
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
            [self presentViewController:vc animated:YES completion:^{
                
            }];
        }
            break;
            
        default:
            break;
    }
}


@end
