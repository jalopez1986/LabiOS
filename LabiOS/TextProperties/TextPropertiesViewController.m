//
//  TextPropertiesViewController.m
//  LabiOS
//
//  Created by Jorge Lopez on 6/03/21.
//  Copyright © 2021 Jorge Lopez. All rights reserved.
//

#import "TextPropertiesViewController.h"

@interface TextPropertiesViewController ()

@end

@implementation TextPropertiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)right:(id)sender {
    self.label.textAlignment = NSTextAlignmentRight;
}

- (IBAction)left:(id)sender {
    self.label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)center:(id)sender {
    self.label.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)shadowColour:(id)sender {
    self.label.layer.shadowColor = [[UIColor yellowColor] CGColor];
}

//Cuando tiene background la sombra es sobre el rectangulo
- (IBAction)dropShadow:(id)sender {
    self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.label.layer.shadowOpacity = 0.5;
    self.label.layer.shadowRadius = 1.0f;
    self.label.layer.shadowOffset = CGSizeMake(2, 2);
    
}

- (IBAction)fontSize:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Verdana" size:30]];
    
}

- (IBAction)setBackground:(id)sender {
    self.label.backgroundColor = [UIColor blueColor];
}

- (IBAction)setColour:(id)sender {
    self.label.textColor = [UIColor redColor];
}
@end
