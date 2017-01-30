//
//  NSString+BSExtern.m
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import "NSString+BGExtern.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (BGExtern)

#pragma mark -

+ (BOOL)isEmptyString:(NSString *)string
{
    if (string == nil) {
        return YES ;
    }
    return string.length == 0;
}

- (BOOL)isEqualToStringCaseInsensitive:(NSString *)aString
{
    return [self compare:aString options:NSCaseInsensitiveSearch] == 0;
}


+ (NSString *)getStringFromData:(NSData *)data
{
    NSString *aString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return aString;
}


- (CGFloat)heightWithWidth:(CGFloat)width font:(UIFont *)font
{
    if (self.length == 0|| nil == font)
    {
        return 0;
    }
    CGSize labelSize = [self sizeWithFont:font constrainedToSize:CGSizeMake(width,MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    return labelSize.height;
}

- (CGFloat)heightWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize
{
    if (self.length == 0)
    {
        return 0;
    }
    CGSize labelSize = [self sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width,MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    return labelSize.height;
}

- (CGFloat)widthWithFontSize:(CGFloat)fontSize
{
    return [self sizeWithFont:[UIFont systemFontOfSize:fontSize]].width;
}

- (CGFloat)widthWithFont:(UIFont *)font
{
    return [self sizeWithFont:font].width;
}

@end
