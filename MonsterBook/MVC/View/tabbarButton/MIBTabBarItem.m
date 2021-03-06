//
//  MIBTabBarItem.m
//  MonsterBook
//
//  Created by Apple on 2020/7/24.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBTabBarItem.h"
#import "AppDelegate.h"
#import "MIBPublishButton.h"
@interface MIBTabBarItem()
@property(nonatomic,strong)MIBPublishButton *publishButton;
@end

@implementation MIBTabBarItem

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews
{
    [super layoutSubviews];
    /**** 设置所有UITabBarButton的frame ****/
    // 按钮的尺寸
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    CGFloat buttonY = 0;
    // 按钮索引
    int buttonIndex = 0;
    for (UIView *subview in self.subviews) {
        // 过滤掉非UITabBarButton
        // if (![@"UITabBarButton" isEqualToString:NSStringFromClass(subview.class)]) continue;
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue;
        // 设置frame
        CGFloat buttonX = buttonIndex * buttonW;
        if (buttonIndex >= 2) { // 右边的2个UITabBarButton
            buttonX += buttonW;
        }
        subview.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        // 增加索引
        buttonIndex++;
    }
    /**** 设置中间的发布按钮的frame ****/
    self.publishButton.frame = CGRectMake(0, -buttonH/2, buttonW, buttonH);
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    [self.publishButton addTarget:self action:@selector(publishButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.publishButton];
}

- (MIBPublishButton *)publishButton
{
    if (_publishButton) {
        return _publishButton;
    }
    _publishButton = [MIBPublishButton buttonWithType:UIButtonTypeCustom];
   
    return _publishButton;
}

-(void)publishButtonClick
{
//    // 比如Loacl是en_Zh
//    NSString *identifier = [[NSLocale currentLocale] localeIdentifier];
//    // displayName = “中国”
//    NSString *displayName = [[NSLocale currentLocale] displayNameForKey:NSLocaleIdentifier value:identifier];
    
    NSString *udfLanguageCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    NSString *pfLanguageCode = [NSLocale preferredLanguages];
    NSString *localeLanguageCode = [[NSLocale currentLocale] objectForKey:NSLocaleLanguageCode];
    NSString *language =  [[NSBundle mainBundle] preferredLocalizations];
    RJLog(@"\nudfLanguageCode：%@ \npfLanguageCode:%@ \nlocaleLanguageCode:%@ \nlanguage:%@",udfLanguageCode,pfLanguageCode,localeLanguageCode,language);
    
    [self restart];
    
}

-(void)restart
{
    NSURL *url = [NSURL URLWithString:@"MB://"];
    bool canOpen = [[UIApplication sharedApplication] canOpenURL:url];
    if (!canOpen) {
        return;
    }
    [[UIApplication sharedApplication] openURL:url];
    
}
@end
