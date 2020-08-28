//
//  MYPersonalInformationCell.m
//  MonsterBook
//
//  Created by Apple on 2020/8/19.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MYPersonalInformationCell.h"

@implementation MYPersonalInformationCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    CGFloat place = 0;
    CGFloat headViewW = self.cl_width/4;
    CGFloat viewH = headViewW-place*2;
    self.frame = CGRectMake(0, 0, self.cl_width, viewH);
    //头像
    _headView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, headViewW, headViewW)];
    [self.contentView addSubview:_headView];
    //
    _nameLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.contentView addSubview:_nameLab];
    
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)config:(MYPersonalInformationModel *)model
{
    self.headView.image = model.headView;
    self.nameLab.text = model.name;
    self.vipLab.text = model.vip;
    self.levelLab.text = model.level;
    self.honorLab.text = model.honor;
}

@end
