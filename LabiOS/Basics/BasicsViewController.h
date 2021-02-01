//
//  BasicsViewController.h
//  LabiOS
//
//  Created by Jorge Lopez on 1/02/21.
//  Copyright © 2021 Jorge Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BasicsViewController : UIViewController
{
    NSString *name;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

NS_ASSUME_NONNULL_END
