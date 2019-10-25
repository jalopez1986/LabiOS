//
//  Panel.m
//  LabiOS
//
//  Created by Jorge Lopez on 10/24/19.
//  Copyright © 2019 Jorge Lopez. All rights reserved.
//

#import "Panel.h"

@implementation Panel

- (id) initWithFrame: (CGRect)aRect {
    self = [super initWithFrame:aRect];
    [self initProperties];
    
    return self;
}

- (void) initProperties {
    backgroundColorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self addSubview:backgroundColorView];
}

- (void) setBackgroundColorView:(UIColor*) color {
    backgroundColorView.backgroundColor = color;
}

    



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
