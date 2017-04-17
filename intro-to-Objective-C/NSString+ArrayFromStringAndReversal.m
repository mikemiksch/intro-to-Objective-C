//
//  NSString+ArrayFromStringAndReversal.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "NSString+ArrayFromStringAndReversal.h"

@implementation NSString (ArrayFromStringAndReversal)

-(NSArray *)arrayFromString:(NSString *)input {
    return [input componentsSeparatedByString:@" "];
}

@end
