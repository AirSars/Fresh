//
//  CategoryListCell.m
//  Fresh
//
//  Created by NADA_BM on 16/2/15.
//  Copyright © 2016年 NADA_BM. All rights reserved.
//

#import "CategoryListCell.h"

@implementation CategoryListCell

- (void)awakeFromNib {
    // Initialization code
    NSAttributedString *attrStr =
    [[NSAttributedString alloc]initWithString:@"￥170"
                                  attributes:
  @{NSFontAttributeName:[UIFont systemFontOfSize:14],NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle|NSUnderlinePatternSolid)}];
    _goodsOldPriceLabel.attributedText = attrStr;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0:
        {
            
        }
            break;
            
        default:
            break;
    }
}

@end
