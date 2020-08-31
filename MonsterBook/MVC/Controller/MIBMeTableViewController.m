//
//  MIBMeTableViewController.m
//  MonsterBook
//
//  Created by Apple on 2020/8/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBMeTableViewController.h"
#import "MYPersonalInformationCell.h"

@interface MIBMeTableViewController ()
{
    UITableView *_tableView;
}

@property(nonatomic,strong)NSArray *dataArr;
@end

@implementation MIBMeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellID = @"mycell";
    if (indexPath.row > 0) {
        cellID = @"";
    }
//    MYPersonalInformationCell *cell = [tableView registerNib:[UINib nibWithNibName:@"MYPersonalInformation" bundle:nil] forCellReuseIdentifier:cellID];
    MYPersonalInformationCell *cellInfo = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cellInfo == nil) {
        cellInfo = [[MYPersonalInformationCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    [cellInfo config:self.dataArr[indexPath.row]];
    
//    cell.textLabel.text = @"Me";
//    cell.detailTextLabel.text = @"shiashishihsih";
    return cellInfo;
}


- (NSArray *)dataArr
{
    if (_dataArr) {
        return _dataArr;
    }
    MYPersonalInformationModel *model = [[MYPersonalInformationModel alloc] init];
    model.headView = [UIImage imageNamed:@"my"];
    model.name = @"你是谁";
    model.level = @"1";
    model.vip = @"0";
    model.honor = @"凡人";
    _dataArr = @[model];
    return _dataArr;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
