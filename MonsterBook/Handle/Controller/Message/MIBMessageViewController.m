//
//  MIBMessageViewController.m
//  MonsterBook
//
//  Created by Apple on 2020/8/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "MIBMessageViewController.h"

@interface MIBMessageViewController ()<segmentDelegate>

@end

@implementation MIBMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [MIBViewTools initSegmentControl:self];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)doSomethingSegment:(nonnull UISegmentedControl *)segment {
      NSInteger index = segment.selectedSegmentIndex;
      switch (index) {
          case 0:
              
              break;
          case 1:
              
              break;
          default:
              break;
      }
}


@end
