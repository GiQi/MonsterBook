//
//  MIBPublicButton.m
//  MonsterBook
//
//  Created by Apple on 2020/7/30.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBPublishButton.h"
static MIBPublishButton *_instance = NULL;
@implementation MIBPublishButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initButtonWithTarget:(id)target action:(SEL)action
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance= [MIBPublishButton buttonWithType:UIButtonTypeCustom];
    });
    [_instance addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return _instance;
}

-(void)layoutSubviews
{
    [super layoutSubviews];

}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundImage:[UIImage imageNamed:@"中间加号"] forState:UIControlStateNormal];
        [self setBackgroundImage:[UIImage imageNamed:@"中间加号"] forState:UIControlStateHighlighted];
    }
    return self;
}

@end
