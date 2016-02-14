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
#import "MenuCollectionCell.h"
#import "UIView+BMLine.h"
#import "RegisterVC.h"

static NSString *cellIdentifier=@"MenuCell";
@interface MyPageVC ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation MyPageVC
{
    NSArray *titleAry;
    NSArray *imageAry;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UINib *nib=[UINib nibWithNibName:@"MenuCollectionCell" bundle:nil];
    [_collectionView registerNib:nib forCellWithReuseIdentifier:cellIdentifier];
    titleAry=@[@"My Orders",@"My Favourite",@"My Address",@"Delivery Status",@"My Contact",@"More",@"Share APP"];
    imageAry=@[@"my-orders",@"my-favorite",@"my-address",@"delivery-status",@"my-contact",@"more",@"share-app"];
    [self setupUI];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (_isLogin) {
        _loginView.hidden=1;
        _hasLoginView.hidden=0;
        self.title=@"My Account";
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"Logout" forState:UIControlStateNormal];
        [btn setTintColor:[UIColor whiteColor]];
        UIBarButtonItem *item=[[UIBarButtonItem alloc]initWithTitle:@"Logout" style:UIBarButtonItemStyleDone target:self action:@selector(logout)];
        self.navigationItem.rightBarButtonItem=item;
    }else{
        _loginView.hidden=0;
        _hasLoginView.hidden=1;
        self.title=@"Fresh+";
        self.navigationItem.rightBarButtonItem=nil;
    }
}

-(void)logout
{
    _isLogin=NO;
    _loginView.hidden=0;
    _hasLoginView.hidden=1;
    self.title=@"Fresh+";
    self.navigationItem.rightBarButtonItem=nil;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [_collectionView addLineWithType:0 color:nil position:BMLinePostionCustomTop];
    [_collectionView addLineWithType:0 color:nil position:BMLinePostionCustomBottom];
}

-(void)setupUI
{
    self.modalPresentationStyle = UIModalPresentationCurrentContext;
}

#pragma mark - UICollectionViewDelegate
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return titleAry.count;
}

//定义每个UICollectionView 的大小（返回CGSize：宽度和高度）
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(KFrameWidth/2,80);
}

//定义每个UICollectionView 的间距（返回UIEdgeInsets：上、左、下、右）
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MenuCollectionCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell removeAllLines];
    if (titleAry.count>indexPath.row) {
        cell.contentLabel.text=titleAry[indexPath.row];
        cell.contentLabel.textColor=RGBACOLOR(137, 137, 137, 1);
        cell.contentImage.image=[UIImage imageWithContentFileName:imageAry[indexPath.row]];
        [cell addLineWithType:0 color:nil position:BMLinePostionCustomRight];
        [cell addLineWithType:0 color:nil position:BMLinePostionCustomBottom];
    }
    return cell;
}


#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 1://登陆
        {
            LoginVC *vc=[[LoginVC alloc]init];
            vc.hidesBottomBarWhenPushed=YES;
            vc.myPageVC=self;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2://注册
        {
            RegisterVC *vc=[[RegisterVC alloc]init];
            vc.hidesBottomBarWhenPushed=YES;
            [self.navigationController pushViewController:vc animated:YES];
        }
        default:
            break;
    }
}


@end
