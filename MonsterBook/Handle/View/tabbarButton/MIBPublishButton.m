//
//  MIBPublicButton.m
//  MonsterBook
//
//  Created by Apple on 2020/7/30.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBPublishButton.h"

@implementation MIBPublishButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setImage:[UIImage imageNamed:@"中间加号"] forState:UIControlStateNormal];
    }
    return self;
}



@end
