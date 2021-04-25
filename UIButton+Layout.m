//
//  UIButton+Layout.m
//  WJToBKit
//
//  Created by lizhiqiang on 2019/1/16.
//  Copyright © 2019年 网家科技有限责任公司. All rights reserved.
//

#import "UIButton+Layout.h"

@implementation UIButton (Layout)

- (void)wj_layoutWithStatus:(WJLayoutStatus)status
                  andMargin:(CGFloat)margin {
    CGFloat imgWidth = self.imageView.bounds.size.width;
    CGFloat imgHeight = self.imageView.bounds.size.height;
    CGFloat labWidth = self.titleLabel.bounds.size.width;
    CGFloat labHeight = self.titleLabel.bounds.size.height;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (labWidth < frameSize.width) {
        labWidth = frameSize.width;
    }
    CGFloat kMargin = margin / 2.0;
    switch (status) {
        case WJLayoutStatusNormal: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -kMargin, 0, kMargin)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, kMargin, 0, -kMargin)];
        }
            break;
        case WJLayoutStatusImageRight: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, labWidth + kMargin, 0, -labWidth - kMargin)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth - kMargin, 0, imgWidth + kMargin)];
        }
            break;
        case WJLayoutStatusImageTop: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, labHeight + margin, -labWidth)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(imgHeight + margin, -imgWidth, 0, 0)];
        }
            break;
        case WJLayoutStatusImageBottom: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(labHeight + margin,0, 0, -labWidth)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, imgHeight + margin, 0)];
        }
            break;
        default:
            break;
    }
}

@end
