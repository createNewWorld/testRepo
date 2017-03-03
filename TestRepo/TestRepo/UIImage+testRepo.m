//
//  UIImage+testRepo.m
//  TestRepo
//
//  Created by 包勇 on 2017/3/3.
//  Copyright © 2017年 包勇. All rights reserved.
//

#import "UIImage+testRepo.h"

@implementation UIImage (testRepo)

- (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
