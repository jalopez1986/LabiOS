//
//  Radio.m
//  LabiOS
//
//  Created by Jorge Lopez on 12/12/19.
//  Copyright © 2019 Jorge Lopez. All rights reserved.
//

#import "Radio.h"

@implementation Radio {
    CAShapeLayer* outerCircleLayer;
    CAShapeLayer* innerCircleLayer;
    CGColorRef outerColor;
    CGColorRef innerColor;
    CGColorRef backgroundOuterColor;
    
    CGFloat outerCircleLineWidth;
    CGFloat innerCircleGap;
    
}

- (id) initWithFrame: (CGRect)aRect {
    self = [super initWithFrame:aRect];
    [self initProperties];
    
    return self;
}

- (void) initProperties {
    //self.backgroundColor = UIColor.greenColor;
    outerCircleLayer = [CAShapeLayer layer];
    innerCircleLayer = [CAShapeLayer layer];
    
    outerColor = [UIColor.redColor CGColor];
    innerColor = [UIColor.redColor CGColor];
    backgroundOuterColor = [UIColor.lightGrayColor CGColor];
    
    outerCircleLineWidth = 3.0;
    innerCircleGap = 10.0;
    
    outerCircleLayer.strokeColor = outerColor;
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(radioTapped)];
    [self addGestureRecognizer:tapGesture];
    
    
    [self customInitialization];
    
    
}

-(void)radioTapped
{
    self.selected = !self.selected;
    [self setFillState];
    
}

- (CGFloat) setCircleRadius {
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    
    CGFloat lenght =  width > height ? height : width;
    
    return (lenght - outerCircleLineWidth) / 2;
}

- (CGRect) setCircleFrame {
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    
    CGFloat radius = [self setCircleRadius];
    
    CGFloat x;
    CGFloat y;
    
    if (width > height) {
        y = outerCircleLineWidth / 2;
        x = (width / 2) - radius;
    } else {
        x = outerCircleLineWidth / 2;
        y = (height / 2) - radius;
    }
    
    CGFloat diameter = 2 * radius;
    
    return  CGRectMake(x, y, diameter, diameter);
    
}

-(UIBezierPath*) circlePath {
    return [UIBezierPath bezierPathWithRoundedRect:[self setCircleFrame] cornerRadius:[self setCircleRadius]];
}

-(UIBezierPath*) fillCirclePath {
    CGFloat trueGap = innerCircleGap + (outerCircleLineWidth / 2);
    CGRect circleFrameInset = CGRectInset([self setCircleFrame], trueGap, trueGap);
    
    return [UIBezierPath bezierPathWithRoundedRect:circleFrameInset cornerRadius:[self setCircleRadius]];
    
}

- (void) customInitialization {
    outerCircleLayer.frame = self.bounds;
    outerCircleLayer.lineWidth = outerCircleLineWidth;
    outerCircleLayer.fillColor = backgroundOuterColor;
    outerCircleLayer.strokeColor = outerColor;
    [self.layer addSublayer:outerCircleLayer];
    
    innerCircleLayer.frame = self.bounds;
    innerCircleLayer.lineWidth = outerCircleLineWidth;
    innerCircleLayer.fillColor = [UIColor.clearColor CGColor];
    innerCircleLayer.strokeColor = innerColor;
    [self.layer addSublayer:innerCircleLayer];
    
    [self setFillState];
}

- (void) setFillState {
    if (self.isSelected) {
        innerCircleLayer.fillColor = innerColor;
        innerCircleLayer.strokeColor = innerColor;
    } else {
        innerCircleLayer.fillColor = [UIColor.clearColor CGColor];
        innerCircleLayer.strokeColor = [UIColor.clearColor CGColor];
    }
}

- (void) setCircleLayouts {
    outerCircleLayer.frame = self.bounds;
    outerCircleLayer.lineWidth = outerCircleLineWidth;
    outerCircleLayer.path = [self circlePath].CGPath;
    
    innerCircleLayer.frame = self.bounds;
    innerCircleLayer.lineWidth = outerCircleLineWidth;
    innerCircleLayer.path = [self fillCirclePath].CGPath;
}

-(void) layoutSubviews {
    [super layoutSubviews];
    [self setCircleLayouts];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
