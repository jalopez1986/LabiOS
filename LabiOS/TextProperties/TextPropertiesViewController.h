//
//  TextPropertiesViewController.h
//  LabiOS
//
//  Created by Jorge Lopez on 6/03/21.
//  Copyright © 2021 Jorge Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TextPropertiesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)setColour:(id)sender;
- (IBAction)setBackground:(id)sender;
- (IBAction)fontSize:(id)sender;
- (IBAction)dropShadow:(id)sender;
- (IBAction)shadowColour:(id)sender;
- (IBAction)center:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)setCustomFont:(id)sender;


@end

NS_ASSUME_NONNULL_END
