//
//  NSTextCheckingResult+NamedGroups.h
//
//
//  Created by Mark McFarlane on 8/2/16.
//
//

#import <Foundation/Foundation.h>

@interface NSTextCheckingResult (NamedGroups)

// Fits with the naming convention of rangeAtIndex:
// Currenlt only supports groups named with angle brackets (<*>), and doesn't look for the existance of ? or other characters.
- (NSRange)rangeForGroupName:(nonnull NSString *)groupName;

// Convenience method for just pulling the value out
- (nullable NSString *)valueForGroupName:(nonnull NSString *)groupName inString:(nonnull NSString *)string;

@end