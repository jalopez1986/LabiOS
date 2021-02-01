//
//  BasicsViewController.m
//  LabiOS
//
//  Created by Jorge Lopez on 1/02/21.
//  Copyright © 2021 Jorge Lopez. All rights reserved.
//

#import "BasicsViewController.h"

@interface BasicsViewController ()

@end

@implementation BasicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    name = @"Jorge";
    NSString *word = @"Hola";
    
    self.label.text = name;
    self.label.text = [NSString stringWithFormat:@"%@ %@", word,name];
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
