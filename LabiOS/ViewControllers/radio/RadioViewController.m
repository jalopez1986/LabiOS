//
//  RadioViewController.m
//  LabiOS
//
//  Created by Jorge Lopez on 12/12/19.
//  Copyright © 2019 Jorge Lopez. All rights reserved.
//

#import "RadioViewController.h"

@interface RadioViewController ()

@end

@implementation RadioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createPanel];
    [self createRadio];
    
}

-(void) createPanel {
    NSLog(@"createPanel");
    Panel *panel1 = [[Panel alloc] initWithFrame:CGRectMake(30, 30, 110, 110)];
    [panel1 setBackgroundColorView:[UIColor redColor]];
    panel1.clipsToBounds = YES;

    
    [self.view addSubview:panel1];
}

- (void) createRadio {
    NSLog(@"createPanel");
    Radio* radio1 = [[Radio alloc] initWithFrame:CGRectMake(30, 200, 100, 100)];
    radio1.clipsToBounds = YES;
    [self.view addSubview:radio1];
    
    Radio* radio2 = [[Radio alloc] initWithFrame:CGRectMake(30, 350, 50, 100)];
    radio2.clipsToBounds = YES;
    [self.view addSubview:radio2];
    
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
