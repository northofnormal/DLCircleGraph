//
//  DLCircleGraphView.m
//  DLCircleGraph
//
//  Created by Chris Petersen on 3/16/15.
//
//

#import "DLCircleGraphView.h"

#import "NSArray+DLPercentage.h"
#import "UIColor+DTE.h"

#define ARC_START 3 * M_PI_2
#define SPACER M_PI / 210.f
#define LINE_WIDTH 12.f
#define RADIANS(x) 2 * M_PI * x - SPACER

@implementation DTEUsageCircleGraphView

- (void)setUsageValuesArray:(NSArray *)usageValuesArray {
    _usageValuesArray = usageValuesArray;
    
    [self setNeedsDisplay];
}

- (NSArray *)usageColorArray {
    if (_usageColorArray) {
        return _usageColorArray;
    }
    
    _usageColorArray = @[[UIColor dte_blue], [UIColor dte_graphiteColor], [UIColor dte_maizeColor]];
    
    return _usageColorArray;
}

- (UIColor *)colorAtIndex:(NSInteger)index {
    UIColor *color;
    
    if (index < self.usageColorArray.count) {
        color = self.usageColorArray[index];
    }
    else {
        color = [UIColor blueColor];
    }
    
    return color;
}

# pragma mark draw circle methods

- (void)drawRect:(CGRect)rect {
    [self drawCircleGivenArray:self.usageValuesArray];
}

- (void)drawCircleGivenArray:(NSArray *)values {
    CGPoint circleCenter = [self getCenter];
    CGFloat radius = [self getRadius];
    CGFloat start = ARC_START, end;
    
    NSArray *percentages = [values dte_arrayOfPercentagesFromNumbers];
    
    for (NSInteger i = 0; i < [percentages count]; ++i) {
        CGFloat floatFromPercentage = [((NSNumber *)percentages[i]) floatValue];
        if (floatFromPercentage != 0.0f) {
            if (floatFromPercentage!= 1.0f) {
                end = start + RADIANS(floatFromPercentage);
            } else {
                end = start + RADIANS(floatFromPercentage) + SPACER;
            }
            
            CGContextRef context = UIGraphicsGetCurrentContext();
            CGContextAddArc(context, circleCenter.x , circleCenter.y, radius, start, end, NO);
            CGContextSetLineWidth(context, LINE_WIDTH);
            
            UIColor *color = [self colorAtIndex:i];
            CGContextSetStrokeColorWithColor(context, color.CGColor);
            
            CGContextStrokePath(context);
            start = end + SPACER;
        }
    }
}

# pragma mark circle requirements methods

- (CGPoint)getCenter {
    return CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
}

- (CGFloat)getRadius {
    CGFloat leastDimension = MIN(self.frame.size.width, self.frame.size.height);
    CGFloat radius = (leastDimension / 2.0) - (LINE_WIDTH * 2);
    return radius;
}

@end
