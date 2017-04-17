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
    NSArray *newArray = [input componentsSeparatedByString:@" "];
    NSLog(@"%@", newArray);
    return newArray;
}

-(NSMutableString *)reverseString:(NSString *)input {
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger characterIndex = [input length];
    while (characterIndex > 0) {
        characterIndex--;
        NSRange subStringRange = NSMakeRange(characterIndex, 1);
        [reversedString appendString:[input substringWithRange:subStringRange]];
    }
    
    NSLog(@"%@", reversedString);
    return reversedString;
}

@end
