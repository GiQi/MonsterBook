//
//  MIBTaleTableView.m
//  MonsterBook
//
//  Created by Apple on 2020/8/14.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBTaleTableView.h"
@interface MIBTaleTableView()
{
    UITableView *_tableView;
}
@end
@implementation MIBTaleTableView
- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.title = @"";
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    cell.textLabel.text = @"WHY";
    cell.detailTextLabel.text = @"shiashishihsih";
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
