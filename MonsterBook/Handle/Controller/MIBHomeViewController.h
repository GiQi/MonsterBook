//
//  MIBHomeViewController.h
//  MonsterBook
//
//  Created by Apple on 2020/7/29.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MIBHomeViewController : UIViewController

-(void)addChildrenVC:(UIViewController*)vc title:(NSString*)title image:(NSString*)imgStr selectImage:(NSString*)selectImgStr;
@end

NS_ASSUME_NONNULL_END
