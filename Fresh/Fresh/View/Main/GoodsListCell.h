//
//  GoodsListCell.h
//  Fresh
//
//  Created by NADA_BM on 16/2/15.
//  Copyright © 2016年 NADA_BM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoodsListCell : UITableViewCell

@property (assign,nonatomic) BOOL isSelected;
@property (copy,nonatomic) NSString *goodsCount;
@property (weak,nonatomic) IBOutlet UIButton *selectBtn;
@property (weak,nonatomic) IBOutlet UIImageView *goodsImage;
@property (weak,nonatomic) IBOutlet UILabel *goodsNameLabel;
@property (weak,nonatomic) IBOutlet UILabel *goodsPriceLabel;
@property (weak,nonatomic) IBOutlet UILabel *goodsStoreLabel;
@property (weak,nonatomic) IBOutlet UILabel *goodsNumLabel;

-(IBAction)buttonAction:(id)sender;

@end
