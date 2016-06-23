//
//  main.m
//  AssociatedObject-ObjC
//
//  Created by PFei_He on 16/6/23.
//  Copyright © 2016年 PF-Lib. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+AssociatedObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSObject *object = [[NSObject alloc] init];
        object.associatedObject = @"I just make a test !!";
        NSLog(@"%@", object.associatedObject);
    }
    return 0;
}
