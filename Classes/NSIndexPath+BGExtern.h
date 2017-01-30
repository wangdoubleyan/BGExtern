//
//  NSIndexPath+BGExtern.h
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface NSIndexPath (BGExtern)

- (BOOL)isEqualToIndexPath:(NSIndexPath *)indexPath;
- (BOOL)isSmallThanIndexPath:(NSIndexPath *)indexPath;
- (BOOL)isBiggerThanIndexPath:(NSIndexPath *)indexPath;

@end
