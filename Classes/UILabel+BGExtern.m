//
//  UILabel+BGExtern.m
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import "UILabel+BGExtern.h"

@implementation UILabel (BGExtern)

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                       font:(UIFont *)font
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView
{
    UILabel *label = [[UILabel alloc] initWithFrame:rect];
    [superView addSubview:label];
    label.text = text;
    label.font = font;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = textAlignment;
    
    
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                       font:(UIFont *)font
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView
{
    UILabel *label = [[UILabel alloc] initWithFrame:rect];
    [superView addSubview:label];
    label.text = text;
    label.font = font;
    label.textColor = textColor;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = textAlignment;
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                       font:(UIFont *)font
                  superView:(UIView *)superView
{
    return [[self class] labelWithFrame:rect text:text font:font textAlignment:NSTextAlignmentLeft superView:superView];
}

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                   fontSize:(CGFloat)fontSize
                  superView:(UIView *)superView
{
    return [[self class] labelWithFrame:rect text:text fontSize:fontSize textAlignment:NSTextAlignmentLeft superView:superView];
}

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                   fontSize:(CGFloat)fontSize
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView
{
    return [[self class] labelWithFrame:rect text:text font:[UIFont systemFontOfSize:fontSize] textAlignment:textAlignment superView:superView];
}


+ (UILabel *)labelWithFrame:(CGRect)rect
                       font:(UIFont *)font
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView
{
    return [[self class] labelWithFrame:rect text:nil font:font textColor:textColor textAlignment:textAlignment superView:superView];
}

+ (UILabel *)labelWithFrame:(CGRect)rect
                   fontSize:(CGFloat)fontSize
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView
{
    return [[self class] labelWithFrame:rect text:nil font:[UIFont systemFontOfSize:fontSize] textColor:textColor textAlignment:textAlignment superView:superView];
}

@end
