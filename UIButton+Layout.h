//
//  UIButton+Layout.h
//  WJToBKit
//
//  Created by lizhiqiang on 2019/1/16.
//  Copyright © 2019年 网家科技有限责任公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, WJLayoutStatus){
    /** 正常位置，图左字右 */
    WJLayoutStatusNormal,
    /** 图右字左 */
    WJLayoutStatusImageRight,
    /** 图上字下 */
    WJLayoutStatusImageTop,
    /** 图下字上 */
    WJLayoutStatusImageBottom,
};

@interface UIButton (Layout)

- (void)wj_layoutWithStatus:(WJLayoutStatus)status
                  andMargin:(CGFloat)margin;

@end

NS_ASSUME_NONNULL_END
