//
//  UILabel+BGExtern.h
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (BGExtern)

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                       font:(UIFont *)font
                  superView:(UIView *)superView;

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                   fontSize:(CGFloat)fontSize
                  superView:(UIView *)superView;

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                       font:(UIFont *)font
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView;

+ (UILabel *)labelWithFrame:(CGRect)rect
                       text:(NSString *)text
                   fontSize:(CGFloat)fontSize
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView;

+ (UILabel *)labelWithFrame:(CGRect)rect
                       font:(UIFont *)font
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView;

+ (UILabel *)labelWithFrame:(CGRect)rect
                   fontSize:(CGFloat)fontSize
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment
                  superView:(UIView *)superView;

@end
