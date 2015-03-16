//
//  NSArray+DLPercentage.m
//  DLCircleGraph
//
//  Created by Chris Petersen on 3/16/15.
//
//

#import "NSArray+DLPercentage.h"

@implementation NSArray (DLPercentage)

- (NSArray *)dl_arrayOfPercentagesFromNumbers {
    NSMutableArray *percentages = [NSMutableArray new];
    CGFloat total = [self dl_arrayOfPercentagesFromNumbers_totalOfPositiveNumbers];
    for (NSNumber *i in self) {
        CGFloat amount = MAX(0.0f, i.floatValue);
        CGFloat percent = amount/total;
        
        [percentages addObject:@(percent)];
    }
    return percentages;
}

- (CGFloat)dl_arrayOfPercentagesFromNumbers_totalOfPositiveNumbers {
    CGFloat total = 0;
    for (NSNumber *i in self) {
        total = (total + MAX(0, i.floatValue));
    }
    return total;
}

@end
