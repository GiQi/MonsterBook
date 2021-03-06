//
//  MIBBackButton.m
//  MonsterBook
//
//  Created by Apple on 2020/8/6.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBBackButton.h"

@implementation MIBBackButton

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
        [self setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"back_click"] forState:UIControlStateHighlighted];
        [self sizeToFit];
    }
    return self;
}

+(instancetype)setBackButtonWithTarget:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setImage:[UIImage imageNamed:@"news_Unselected"] forState:UIControlStateNormal];
//    [button setImage:[UIImage imageNamed:@"search_button"] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

@end
