//
//  NSString+BSExtern.h
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (BGExtern)

+ (BOOL)isEmptyString:(NSString *)string;
+ (NSString *)getStringFromData:(NSData *)data;
- (BOOL)isEqualToStringCaseInsensitive:(NSString *)aString;

- (CGFloat)heightWithWidth:(CGFloat)width font:(UIFont *)font;
- (CGFloat)heightWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize;
- (CGFloat)widthWithFontSize:(CGFloat)fontSize;
- (CGFloat)widthWithFont:(UIFont *)font;

@end
