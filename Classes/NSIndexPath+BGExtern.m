//
//  NSIndexPath+BGExtern.m
//  BGExtern
//
//  Created by duola on 2017/1/30.
//  Copyright © 2017年 sgabg. All rights reserved.
//

#import "NSIndexPath+BGExtern.h"

@implementation NSIndexPath (BGExtern)

- (BOOL)isEqualToIndexPath:(NSIndexPath *)indexPath
{
    if (!indexPath) {
        return NO;
    }
    if (self.row == indexPath.row && self.section == indexPath.section) {
        return YES;
    }
    return NO;
}

- (BOOL)isSmallThanIndexPath:(NSIndexPath *)indexPath
{
    if (!indexPath) {
        return NO;
    }
    if (self.section < indexPath.section) {
        return YES;
    } else if (self.section > indexPath.section) {
        return NO;
    } else {
        return self.row < indexPath.row;
    }
}

- (BOOL)isBiggerThanIndexPath:(NSIndexPath *)indexPath
{
    if (!indexPath) {
        return YES;
    }
    if (self.section > indexPath.section) {
        return YES;
    } else if (self.section < indexPath.section) {
        return NO;
    } else {
        return self.row > indexPath.row;
    }
}

@end
