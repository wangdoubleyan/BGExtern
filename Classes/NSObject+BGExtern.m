//
//  NSObject+BGExtern.m
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import "NSObject+BGExtern.h"

@implementation NSObject (BGExtern)

+ (id)object
{
    return [[[self class] alloc] init];
}

+ (NSString *)className
{
    return NSStringFromClass([self class]);
}


+ (id)objectWithDictionary:(NSDictionary *)dictionay
{
    if (!dictionay) {
        return nil;
    }
    return [[self alloc] initWithDictionary:dictionay];
}

+ (id)modelWithDictionary:(NSDictionary *)dictionay
{
    return nil ;
}

- (id)initWithDictionary:(NSDictionary *)dictionay
{
    return [self init];
}

- (BOOL)isDictionaryClass
{
    return [self isKindOfClass:[NSDictionary class]];
}

- (BOOL)isArrayClass
{
    return [self isKindOfClass:[NSArray class]];
}

- (BOOL)isObjectValid
{
    return YES;
}

+ (NSArray *)objectListWithDictionaryList:(NSArray *)dictList
{
    if (!dictList.count) {
        return nil;
    }
    NSMutableArray *objectList = [NSMutableArray arrayWithCapacity:dictList.count];
    [dictList enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSDictionary *dict = (NSDictionary *)obj;
        id item = [[self class] objectWithDictionary:dict];
        if (item && [item isObjectValid]) {
            [objectList addObject:item];
        }
    }];
    return objectList;
}

+ (NSArray *)modelListWithDictionaryList:(NSArray *)dictList
{
    if (!dictList.count) {
        return nil;
    }
    NSMutableArray *objectList = [NSMutableArray arrayWithCapacity:dictList.count];
    [dictList enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSDictionary *dict = (NSDictionary *)obj;
        id item = [[self class] modelWithDictionary:dict];
        if (item && [item isObjectValid]) {
            [objectList addObject:item];
        }
    }];
    return objectList;
}


- (NSInvocation *)createInvocationWithSelector:(SEL)selector
{
    if (!selector) {
        return nil;
    }
    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:selector];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    [invocation setTarget:self];
    [invocation setSelector:selector];
    return invocation;
}

- (void)performBlock:(void(^)(void))block afterDelay:(NSTimeInterval)delayInSecond
{
    dispatch_queue_t dispatchQueue = dispatch_get_main_queue();
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSecond * NSEC_PER_SEC));
    dispatch_after(popTime, dispatchQueue, ^(void){
        block();
    });
    
}
@end
