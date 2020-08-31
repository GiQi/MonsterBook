//
//  MIBLoginView.m
//  MonsterBook
//
//  Created by Apple on 2020/8/26.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBLoginView.h"

@interface MIBLoginView ()<UITextFieldDelegate>

@end

@implementation MIBLoginView

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
    
    CGFloat offset = 10;
    CGFloat imgViewX = self.cl_x;
    CGFloat imgViewH = self.cl_height/4;
    CGFloat viewW = self.cl_width;
    
    CGFloat accountLabW = viewW/4;
    CGFloat accountH = imgViewH/2-offset;
    
    CGFloat TextX = accountLabW+offset;
    CGFloat passwordY = accountH+offset;
    
    
    UIView *imgView = [[UIView alloc] initWithFrame:CGRectMake(imgViewX, self.cl_y, viewW, imgViewH)];

    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, offset, imgViewH, imgViewH)];
    img.center = imgView.center;
    img.image = [UIImage imageNamed:@"Logo"];

    [imgView addSubview:img];
    
    UIView *inputView = [[UIView alloc] initWithFrame:CGRectMake(0, imgViewH, viewW, imgViewH)];
    inputView.backgroundColor = RJColor(0, 255, 0);
 
    //账号
//    UILabel *labAccount = [[UILabel alloc] initWithFrame:CGRectMake(0, offset, accountLabW, accountH)];
//    [labAccount setText:@"账号:"];
//    [labAccount setFont:[UIFont fontWithName:@"幼圆" size:17]];
//    labAccount.textAlignment = NSTextAlignmentCenter;
//    [inputView addSubview:labAccount];
    
    UITextField *accountText = [[UITextField alloc] initWithFrame:CGRectMake(0, offset, viewW-TextX, accountH)];
    accountText.placeholder = @"手机号/邮箱/用户名";
    accountText.delegate = self;
    accountText.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"my"]];
    [inputView addSubview:accountText];
    
    //密码
//    UILabel *labPassword = [[UILabel alloc] initWithFrame:CGRectMake(0, passwordY, accountLabW, accountH)];
//    [labPassword setFont:[UIFont fontWithName:@"幼圆" size:17]];
//    labPassword.text = @"密码:";
//    labPassword.backgroundColor = [UIColor lightGrayColor];
//    labPassword.textAlignment = NSTextAlignmentCenter;
//    [inputView addSubview:labPassword];
    
    UITextField *passwordText = [[UITextField alloc] initWithFrame:CGRectMake(0, passwordY, viewW-TextX, accountH)];
    passwordText.secureTextEntry = YES;
    passwordText.delegate = self;
    [inputView addSubview:passwordText];
    
    [self addSubview:inputView];
    [self addSubview:imgView];
    return self;
}

- (void)layoutSubviews
{

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
