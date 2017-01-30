//
//  NSDictionary+BGExtern.h
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (BGExtern)

- (id)objectWithDicKey:(NSString *)key;
- (NSInteger)integerWithDicKey:(NSString *)key;
- (BOOL)boolWithDicKey:(NSString *)key;

@end
