//
//  NSObject+BGExtern.h
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (BGExtern)

+ (id)object;
+ (NSString *)className;
+ (id)objectWithDictionary:(NSDictionary *)dictionay;
- (id)initWithDictionary:(NSDictionary *)dictionay;
- (BOOL)isDictionaryClass;
- (BOOL)isArrayClass;
- (BOOL)isObjectValid;
+ (NSArray *)objectListWithDictionaryList:(NSArray *)dictList;

+ (id)modelWithDictionary:(NSDictionary *)dictionay;
+ (NSArray *)modelListWithDictionaryList:(NSArray *)dictList;


- (NSInvocation *)createInvocationWithSelector:(SEL)selector;

- (void)performBlock:(void(^)(void))block afterDelay:(NSTimeInterval)delayInSecond;

@end
