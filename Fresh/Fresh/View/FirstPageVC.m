//
//  FirstPageVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "FirstPageVC.h"
#import "SDCycleScrollView.h"
#import "UIImage+Addtions.h"
#import "UIView+Addtions.h"
#import "FGoodsDetailVC.h"
#import "MenuCollectionCell.h"
#import "UIView+BMLine.h"

static NSString *cellIdentifier=@"MenuCell";
@interface FirstPageVC ()<SDCycleScrollViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation FirstPageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UINib *nib=[UINib nibWithNibName:@"MenuCollectionCell" bundle:nil];
    [_collectionView registerNib:nib forCellWithReuseIdentifier:cellIdentifier];
    self.searchBar.translucent = YES;
    self.searchBar.backgroundImage = [[UIImage alloc] init];
    self.searchBar.barTintColor = [UIColor clearColor];
    self.searchBar.backgroundColor = GREEN_COLOR;
    self.searchBar.tintColor = [UIColor grayColor];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden=YES;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self setupUI];
}

-(void)setupUI
{
    SDCycleScrollView *view=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, _adView.width, _adView.height) imagesGroup:@[[UIImage imageWithContentFileName:@"banner"],[UIImage imageWithContentFileName:@"banner"],[UIImage imageWithContentFileName:@"banner"],[UIImage imageWithContentFileName:@"banner"]]];
    view.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    view.delegate = self;
    view.dotColor = [UIColor whiteColor]; // 自定义分页控件小圆标颜色
//    view.placeholderImage = [UIImage imageNamed:@"placeholder"];
    [_adView addSubview:view];
}

#pragma mark - SDCDelegate
-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    FGoodsDetailVC *vc=[[FGoodsDetailVC alloc]init];
    vc.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UICollectionViewDelegate
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

//定义每个UICollectionView 的大小（返回CGSize：宽度和高度）
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(KFrameWidth/2, 90);
}

//定义每个UICollectionView 的间距（返回UIEdgeInsets：上、左、下、右）
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MenuCollectionCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
        {
            cell.contentImage.image=[UIImage imageWithContentFileName:@"vegetable"];
            cell.contentLabel.text=@"Vegetable";
        }
            break;
        case 1:
        {
            cell.contentImage.image=[UIImage imageWithContentFileName:@"fruits"];
            cell.contentLabel.text=@"Fruits";
        }
            break;
        case 2:
        {
            cell.contentImage.image=[UIImage imageWithContentFileName:@"organic"];
            cell.contentLabel.text=@"Organic";
        }
            break;
        case 3:
        {
            cell.contentImage.image=[UIImage imageWithContentFileName:@"popular"];
            cell.contentLabel.text=@"Popular";
        }
            break;
        default:
            break;
    }
    return cell;
}


@end
