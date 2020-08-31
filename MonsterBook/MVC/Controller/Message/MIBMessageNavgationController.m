//
//  MIBMessageNavgationController.m
//  MonsterBook
//
//  Created by Apple on 2020/8/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBMessageNavgationController.h"
#import "MIBMessageViewController.h"
#import "MIBBackButton.h"

@interface MIBMessageNavgationController ()<UIGestureRecognizerDelegate>
@property(nonatomic,strong)MIBMessageViewController *messageVC;
@property(nonatomic,strong)MIBBackButton *backButton;
@end

static MIBMessageNavgationController *_instance = NULL;
@implementation MIBMessageNavgationController

+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(instancetype)initMessage
{
    _instance = [super init];
    _instance = [_instance initWithRootViewController:self.messageVC];
    
    return _instance;
}

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    _instance = [super initWithRootViewController:rootViewController];
    _instance.viewControllers = @[rootViewController];
    return _instance;
}

- (MIBMessageViewController *)messageVC
{
    if (_messageVC) {
        return _messageVC;
    }
    _messageVC = [[MIBMessageViewController alloc] init];
    [MIBViewTools addChildrenVC:_messageVC title:@"消息" image:@"honmepage_Unselected" selectImage:@"honmepage"];
    return _messageVC;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    self.interactivePopGestureRecognizer.delegate = self;
//    if (self.childViewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.backButton];
//    }
    [super pushViewController:viewController animated:animated];
    
}

- (MIBBackButton *)backButton
{
    if (_backButton == nil) {
        _backButton = [MIBBackButton setBackButtonWithTarget:self action:@selector(backButtonClick)];
    }
    return _backButton;
}

-(void)backButtonClick
{
    [self popoverPresentationController];
    RJLog(@"event - backbuttonClick");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
