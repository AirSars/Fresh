//
//  FGoodsDetailVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "BasicVC.h"

@interface FGoodsDetailVC : BasicVC

@property (weak,nonatomic) IBOutlet UIView *adView;
@property (weak,nonatomic) IBOutlet UILabel *labelGoodsName;
@property (weak,nonatomic) IBOutlet UILabel *labelGoodsPrice;
@property (weak,nonatomic) IBOutlet UILabel *labelGoodsNum;
@property (weak,nonatomic) IBOutlet UILabel *labelCarrige;
@property (weak,nonatomic) IBOutlet UIView *detailView;
@property (weak,nonatomic) IBOutlet UIView *bottomView;
@property (weak,nonatomic) IBOutlet UIButton *goBuyBtn;
@property (weak,nonatomic) IBOutlet UIButton *addCarBtn;


-(IBAction)buttonAction:(id)sender;

@end
