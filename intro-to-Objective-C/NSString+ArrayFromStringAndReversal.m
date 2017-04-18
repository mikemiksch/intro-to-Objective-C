//
//  NSString+ArrayFromStringAndReversal.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "NSString+ArrayFromStringAndReversal.h"

@implementation NSString (ArrayFromStringAndReversal)

-(NSArray *)arrayFromString {
    NSArray *newArray = [self componentsSeparatedByString:@" "];
    NSLog(@"%@", newArray);
    return newArray;
}

-(NSString *)reverseString {
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger characterIndex = [self length];
    while (characterIndex > 0) {
        characterIndex--;
        NSRange subStringRange = NSMakeRange(characterIndex, 1);
        [reversedString appendString:[self substringWithRange:subStringRange]];
    }
    
    NSLog(@"%@", reversedString);
    return reversedString;
}

@end
