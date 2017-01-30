//
//  UIButton+BGExtern.h
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BGExtern)


- (void)setTitleFont:(UIFont *)font;
- (void)setTitleFontSize:(CGFloat)size;
- (void)setNormalImage:(UIImage *)image;
- (void)setNormalImageName:(NSString *)imageName;
- (void)setHighImage:(UIImage *)image;
- (void)setHighImageName:(NSString *)imageName;
- (void)setNormalBgImage:(UIImage *)image;
- (void)setNormalBgImageName:(NSString *)imageName;
- (void)setHighBgImage:(UIImage *)image;
- (void)setHighBgImageName:(NSString *)imageName;
- (void)setSelBgImage:(UIImage *)image;
- (void)setSelBgImageName:(NSString *)imageName;
- (void)setSelImageName:(NSString *)imageName;
- (void)setSelImage:(UIImage *)image;
- (void)addTouchUpInsideEventWithTarget:(id)target selector:(SEL)selector;

@end
