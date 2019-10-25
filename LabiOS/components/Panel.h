//
//  Panel.h
//  LabiOS
//
//  Created by Jorge Lopez on 10/24/19.
//  Copyright © 2019 Jorge Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Panel : UIView {
    UIView* backgroundColorView;
}

- (void)setBackgroundColorView:(UIColor*) color;

@end

NS_ASSUME_NONNULL_END
