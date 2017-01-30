//
//  UIButton+BGExtern.m
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import "UIButton+BGExtern.h"
#import "NSString+BGExtern.h"

@implementation UIButton (BGExtern)


- (void)setTitleFont:(UIFont *)font
{
    self.titleLabel.font = font;
}

- (void)setTitleFontSize:(CGFloat)size
{
    self.titleLabel.font = [UIFont systemFontOfSize:size];
}

- (void)setNormalTitle:(NSString *)title
{
    [self setTitle:title forState:UIControlStateNormal];
}



- (void)setNormalImage:(UIImage *)image
{
    [self setImage:image forState:UIControlStateNormal];
}

- (void)setNormalImageName:(NSString *)imageName
{
    if (![NSString isEmptyString:imageName]) {
        [self setNormalImage:[UIImage imageNamed:imageName]];
    }
}

- (void)setHighImage:(UIImage *)image
{
    [self setImage:image forState:UIControlStateHighlighted];
}

- (void)setHighImageName:(NSString *)imageName
{
    if (![NSString isEmptyString:imageName]) {
        [self setHighImage:[UIImage imageNamed:imageName]];
    }
}

- (void)setNormalBgImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

- (void)setNormalBgImageName:(NSString *)imageName
{
    if (![NSString isEmptyString:imageName]) {
        [self setNormalBgImage:[UIImage imageNamed:imageName]];
    }
}

- (void)setHighBgImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateHighlighted];
}

- (void)setHighBgImageName:(NSString *)imageName
{
    if (![NSString isEmptyString:imageName]) {
        [self setHighBgImage:[UIImage imageNamed:imageName]];
    }
}

- (void)setSelBgImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateSelected];
}

- (void)setSelImage:(UIImage *)image
{
    [self setImage:image forState:UIControlStateSelected];
}

- (void)setSelBgImageName:(NSString *)imageName
{
    if (![NSString isEmptyString:imageName]) {
        [self setSelBgImage:[UIImage imageNamed:imageName]];
    }
}

- (void)setSelImageName:(NSString *)imageName
{
    if (![NSString isEmptyString:imageName]) {
        [self setSelImage:[UIImage imageNamed:imageName]];
    }
}

- (void)addTouchUpInsideEventWithTarget:(id)target selector:(SEL)selector
{
    [self addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
}

@end
