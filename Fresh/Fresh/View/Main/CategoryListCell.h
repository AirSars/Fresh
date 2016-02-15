//
//  CategoryListCell.h
//  Fresh
//
//  Created by NADA_BM on 16/2/15.
//  Copyright © 2016年 NADA_BM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryListCell : UITableViewCell

@property (weak,nonatomic) IBOutlet UIImageView *goodsImage;

@property (weak,nonatomic) IBOutlet UILabel *goodsNameLabel;

@property (weak,nonatomic) IBOutlet UILabel *goodsWeightLabel;

@property (weak,nonatomic) IBOutlet UILabel *goodsPriceLabel;

@property (weak,nonatomic) IBOutlet UILabel *goodsOldPriceLabel;

-(IBAction)buttonAction:(id)sender;

@end
