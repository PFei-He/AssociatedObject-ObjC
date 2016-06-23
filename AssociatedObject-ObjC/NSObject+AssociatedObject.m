//
//  NSObject+AssociatedObject.m
//  AssociatedObject-ObjC
//
//  Created by PFei_He on 16/6/23.
//  Copyright © 2016年 PF-Lib. All rights reserved.
//

#import "NSObject+AssociatedObject.h"
#import <objc/runtime.h>

@implementation NSObject (AssociatedObject)

static char const * const associatedKey;

@dynamic associatedObject;

- (NSString *)associatedObject
{
    return objc_getAssociatedObject(self, &associatedKey);
}

- (void)setAssociatedObject:(NSString *)associatedObject
{
    objc_setAssociatedObject(self, &associatedKey, associatedObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
