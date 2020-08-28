//
//  MIBMeNavigationController.m
//  MonsterBook
//
//  Created by Apple on 2020/8/14.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBMeNavigationController.h"
#import "MIBMeTableViewController.h"

@interface MIBMeNavigationController ()
@property(nonatomic,strong)MIBMeTableViewController *meTableVC;
@end
static MIBMeNavigationController *_instance = NULL;
@implementation MIBMeNavigationController

+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

//-(instancetype)init
//{
//    _instance = [super init];
//
//    _instance = [_instance initWithRootViewController:self.taleTableVC];
//
//    return _instance;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(instancetype)initWithRootViewController
{
    self = [super initWithRootViewController:self.meTableVC];
    [self setViewControllers:@[self.meTableVC]];
//    self.navigationBar.translucent = NO;
//    self.navigationBar.backgroundColor = [UIColor blueColor];
    return self;
}

- (MIBMeTableViewController *)meTableVC
{
    if (_meTableVC) {
        return _meTableVC;
    }
    _meTableVC = [[MIBMeTableViewController alloc] init];
    [MIBViewTools addChildrenVC:_meTableVC title:@"我的" image:@"my_Unselected" selectImage:@"my"];
    return _meTableVC;
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 1;
//}
//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
//    cell.textLabel.text = @"WHY";
//    cell.detailTextLabel.text = @"shiashishihsih";
//    return cell;
//
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
