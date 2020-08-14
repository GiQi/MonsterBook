//
//  MIBTaleTableView.h
//  MonsterBook
//
//  Created by Apple on 2020/8/14.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MIBTaleTableView : UITableViewController
-(void)addChildrenVC:(UITableViewController*)vc title:(NSString*)title image:(NSString*)imgStr selectImage:(NSString*)selectImgStr;

@end

NS_ASSUME_NONNULL_END
