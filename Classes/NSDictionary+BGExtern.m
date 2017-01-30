//
//  NSDictionary+BGExtern.m
//  BGExtern
//
//  Created by Yanyan on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <Foundation/Foundation.h>

@implementation NSDictionary (BGExtern)

- (id)objectWithDicKey:(NSString *)key
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNull class]]) {
        object = nil;
    }
    return object;
}

- (NSInteger)integerWithDicKey:(NSString *)key
{
    id object = [self objectWithDicKey:key];
    return [object integerValue];
}

- (BOOL)boolWithDicKey:(NSString *)key
{
    id object = [self objectWithDicKey:key];
    return [object boolValue];
}

@end
