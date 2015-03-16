//
//  UIColor+DL.m
//  DLCircleGraph
//
//  Created by Chris Petersen on 3/16/15.
//
//

#import "UIColor+DL.h"

@implementation UIColor (DL)

#pragma mark -

+ (UIColor *)dte_blue {
    UIColor *color =[UIColor colorWithRed:(48/255) green:(168/255) blue:(222/255) alpha:1.0];
    return color;
}

+ (UIColor *)dte_blueDown {
    UIColor *color = [UIColor dlr_colorWithRed:0 green:115 blue:157];
    return color;
}

+ (UIColor *)dte_whiteButtonColor {
    UIColor *color = [UIColor whiteColor];
    return color;
}

+ (UIColor *)dte_whiteButtonHighlightedColor {
    UIColor *color = [UIColor dlr_colorWithRed:219 green:219 blue:219];
    return color;
}

+ (UIColor *)dte_whiteBackground {
    UIColor *color = [UIColor dlr_colorWithRed:240 green:240 blue:240];
    return color;
}

+ (UIColor *)dte_blueBackground {
    UIColor *color = [UIColor dlr_colorWithRed:48 green:168 blue:222];
    return color;
}

+ (UIColor *)dte_darkBlue {
    UIColor *color = [UIColor dlr_colorWithRed:8 green:75 blue:143];
    return color;
}

+ (UIColor *)dte_darkTextColor {
    UIColor *color = [UIColor dlr_colorWithRed:52 green:60 blue:52];
    return color;
}

+ (UIColor *)dte_lightTextColor {
    UIColor *color = [UIColor dlr_colorWithRed:90 green:90 blue:90];
    return color;
}

+ (UIColor *)dte_lightGrayColor {
    UIColor *color = [UIColor dlr_colorWithRed:235 green:235 blue:235];
    return color;
}

+ (UIColor *)dte_searchBlue {
    UIColor *color = [UIColor dlr_colorWithRed:127 green:161 blue:181];
    return color;
}

+ (UIColor *)dte_grayTextColor {
    UIColor *color = [UIColor dlr_colorWithRed:128 green:128 blue:128];
    return color;
}

+ (UIColor *)dte_greenColor {
    UIColor *color = [UIColor dlr_colorWithRed:72 green:169 blue:66];
    return color;
}

+ (UIColor *)dte_maizeColor {
    UIColor *color = [UIColor dlr_colorWithRed:246 green:182 blue:50];
    return color;
}

+ (UIColor *)dte_graphiteColor {
    UIColor *color = [UIColor dlr_colorWithRed:160 green:160 blue:160];
    return color;
}

@end
