//
//  MYPersonalInformationCell.h
//  MonsterBook
//
//  Created by Apple on 2020/8/19.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYPersonalInformationModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MYPersonalInformationCell : UITableViewCell

@property(nonatomic,strong)UIImageView *headView;
@property(nonatomic,strong)UILabel *nameLab;
@property(nonatomic,strong)UILabel *vipLab;
@property(nonatomic,strong)UILabel *levelLab;
@property(nonatomic,strong)UILabel *honorLab;

-(void)config:(MYPersonalInformationModel *)model;
@end

NS_ASSUME_NONNULL_END
