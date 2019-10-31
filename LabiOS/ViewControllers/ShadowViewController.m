//
//  ShadowViewController.m
//  LabiOS
//
//  Created by Jorge Lopez on 10/24/19.
//  Copyright © 2019 Jorge Lopez. All rights reserved.
//

#import "ShadowViewController.h"
#import <YogaKit/UIView+Yoga.h>

@interface ShadowViewController ()

@end

@implementation ShadowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self createPanel];
    
    UIView *contentView = [UIView new];
    [contentView setBackgroundColor:[UIColor redColor]];
    
    [contentView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;
        layout.width = YGPointValue(320);
        layout.height = YGPointValue(80);
        layout.alignItems = YGAlignCenter;
        layout.justifyContent = YGJustifySpaceAround;
    }];
    
    UIView *child1 = [UIView new];
    child1.backgroundColor = [UIColor blueColor];
    [child1 configureLayoutWithBlock:^void(YGLayout *layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(50);
        layout.height = YGPointValue(50);
    }];
    
    UIView *child2 = [UIView new];
    child2.backgroundColor = [UIColor blueColor];
    [child2 configureLayoutWithBlock:^void(YGLayout *layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(50);
        layout.height = YGPointValue(50);
    }];
    
    UIView *child3 = [UIView new];
    child3.backgroundColor = [UIColor blueColor];
    [child3 configureLayoutWithBlock:^void(YGLayout *layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(50);
        layout.height = YGPointValue(50);
    }];
    
    [contentView addSubview:child1];
    [contentView addSubview:child2];
    [contentView addSubview:child3];
    [contentView.yoga applyLayoutPreservingOrigin:NO];
    [self.view addSubview:contentView];
    
    

    // Do any additional setup after loading the view.
}

-(void) createPanel {
    NSLog(@"JORGE");
    Panel *panel1 = [[Panel alloc] initWithFrame:CGRectMake(30, 30, 110, 110)];
    [panel1 setBackgroundColorView:[UIColor redColor]];
    //[panel1 setBackgroundColor:[UIColor greenColor]];
    panel1.clipsToBounds = YES;
    
    [self addShadow:panel1.layer];
    
    [self.view addSubview:panel1];
    
    
}

- (void) addShadow:(CALayer*) layer {
    layer.shadowColor = [UIColor.blueColor CGColor];
    layer.shadowOpacity = 1;
    layer.shadowOffset = CGSizeMake(0.0, 0.0);
    layer.shadowRadius = 10;
    layer.masksToBounds = NO;
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
