//
//  MIBTaleNavigationController.m
//  MonsterBook
//
//  Created by Apple on 2020/8/14.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBTaleNavigationController.h"
#import "MIBTaleTableView.h"

@interface MIBTaleNavigationController ()
@property(nonatomic,strong)MIBTaleTableView *taleTableVC;
@end
static MIBTaleNavigationController *_instance = NULL;
@implementation MIBTaleNavigationController

+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[MIBTaleNavigationController alloc] init];
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
    self = [super initWithRootViewController:self.taleTableVC];
    [self setViewControllers:@[self.taleTableVC]];
//    self.navigationBar.translucent = NO;
//    self.navigationBar.backgroundColor = [UIColor blueColor];
    return self;
}

- (MIBTaleTableView *)taleTableVC
{
    if (_taleTableVC) {
        return _taleTableVC;
    }
    _taleTableVC = [[MIBTaleTableView alloc] init];
    [_taleTableVC addChildrenVC:_taleTableVC title:@"奇谈" image:@"动态未选中" selectImage:@"动态选中"];
//    _taleTableVC
    return _taleTableVC;
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
