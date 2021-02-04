//
//  MIBLoginView.m
//  MonsterBook
//
//  Created by Apple on 2020/8/26.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBLoginView.h"

@interface MIBLoginView ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *accountTextField;
@property(nonatomic,strong)UITextField *passwordTextField;

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
    
//    CGFloat offset = 10;
//    CGFloat imgViewX = self.cl_x;
//    CGFloat imgViewH = self.cl_height/5;
//    CGFloat viewW = self.cl_width;
//
//    CGFloat accountH = imgViewH/2-offset;
//    CGFloat passwordY = accountH+offset*2;
//
//
//    UIView *imgView = [[UIView alloc] initWithFrame:CGRectMake(imgViewX, self.cl_y, viewW, imgViewH)];
//
//    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, offset, imgViewH, imgViewH)];
//    img.center = imgView.center;
//    img.image = [UIImage imageNamed:@"Logo"];
//
//    [imgView addSubview:img];
//
//    UIView *inputView = [[UIView alloc] initWithFrame:CGRectMake(0, imgViewH, viewW, imgViewH)];
//    inputView.backgroundColor = RJColor(0, 255, 0);
//
//    //账号
////    UILabel *labAccount = [[UILabel alloc] initWithFrame:CGRectMake(0, offset, accountLabW, accountH)];
////    [labAccount setText:@"账号:"];
////    [labAccount setFont:[UIFont fontWithName:@"幼圆" size:17]];
////    labAccount.textAlignment = NSTextAlignmentCenter;
////    [inputView addSubview:labAccount];
//
//    _accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, offset, viewW, accountH)];
//    _accountTextField.placeholder = @"手机号/邮箱/用户名";
//    _accountTextField.delegate = self;
//    _accountTextField.leftViewMode = UITextFieldViewModeAlways;
////    _accountTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"my"]];
//    _accountTextField.tag = 1000;
//    _accountTextField.borderStyle = UITextBorderStyleRoundedRect;
//    _accountTextField.layer.cornerRadius = 4;
//    _accountTextField.layer.borderWidth = 1;
//    _accountTextField.layer.borderColor = [UIColor systemPinkColor].CGColor;
//    [inputView addSubview:_accountTextField];
//
//    //密码
////    UILabel *labPassword = [[UILabel alloc] initWithFrame:CGRectMake(0, passwordY, accountLabW, accountH)];
////    [labPassword setFont:[UIFont fontWithName:@"幼圆" size:17]];
////    labPassword.text = @"密码:";
////    labPassword.backgroundColor = [UIColor lightGrayColor];
////    labPassword.textAlignment = NSTextAlignmentCenter;
////    [inputView addSubview:labPassword];
//
//    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, passwordY, viewW, accountH)];
//    _passwordTextField.tag = 1001;
//    _passwordTextField.placeholder = @"密码";
//    _passwordTextField.secureTextEntry = YES;
//    _passwordTextField.delegate = self;
//    _passwordTextField.leftViewMode = UITextFieldViewModeAlways;
//    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
//    [inputView addSubview:_passwordTextField];
//
//    [self addSubview:inputView];
//    [self addSubview:imgView];
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat offsetX = 30;
    CGFloat viewTop_X = 0;
    CGFloat viewTop_Y = 0;
    CGFloat viewTop_W = self.cl_width;
    CGFloat viewTop_H = self.cl_height/10;
    CGFloat viewTop_img = viewTop_H/2;
    
    CGFloat offsetY = 60;
    CGFloat viewCenter_X = offsetX;
    CGFloat viewCenter_Y = viewTop_H+offsetY;
    CGFloat viewCenter_W = self.cl_width-offsetX*2;
    CGFloat viewCenter_H = self.cl_height/3;
    
    CGFloat viewBottom_X = 0;
    CGFloat viewBottom_Y = self.cl_height*0.6+offsetY;
    CGFloat viewBottom_W = self.cl_width;
    CGFloat viewBottom_H = self.cl_height*0.4-offsetY;
    
    //顶部view 注册
    UIView *viewTop = [[UIView alloc] initWithFrame:CGRectMake(viewTop_X, viewTop_Y, viewTop_W, viewTop_H)];
    viewTop.backgroundColor = RJColor(100, 200, 200);
//    UIImageView *backImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, viewTop_img-viewTop_img/2, viewTop_img, viewTop_img)];
//    backImg.image = [UIImage imageNamed:@"back_click"];
//    [viewTop addSubview:backImg];
    UIButton *closeBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, viewTop_img-viewTop_img/2, viewTop_img, viewTop_img)];
    closeBtn.imageView.image = [UIImage imageNamed:@"back_click"];
    [closeBtn addTarget:self action:@selector(closeView) forControlEvents:UIControlEventTouchUpInside];
    [viewTop addSubview:closeBtn];
    [self addSubview:viewTop];
    
    //中间view 账号密码
    UIView *viewCenter = [[UIView alloc] initWithFrame:CGRectMake(viewCenter_X, viewCenter_Y, viewCenter_W, viewCenter_H)];
    viewCenter.backgroundColor = RJColor(200, 100, 200);
    [self addSubview:viewCenter];
    
    //底部view 快速登录
    UIView *viewBottom = [[UIView alloc] initWithFrame:CGRectMake(viewBottom_X, viewBottom_Y, viewBottom_W, viewBottom_H)];
    viewBottom.backgroundColor = RJColor(200, 200, 100);
    [self addSubview:viewBottom];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
//    if (textField.tag == 1000) {
//        [_passwordTextField becomeFirstResponder];
//    }else{
//        [_passwordTextField resignFirstResponder];
//    }
    [textField resignFirstResponder];
    
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self endEditing:YES];
}

-(void)closeView
{
    NSLog(@"click closeView button");
}
@end
