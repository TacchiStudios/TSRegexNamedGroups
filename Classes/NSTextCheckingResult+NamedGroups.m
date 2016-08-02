//
//  NSTextCheckingResult+NamedGroups.m
//
//
//  Created by Mark McFarlane on 8/2/16.
//
//

@implementation NSTextCheckingResult (NamedGroups)

// Public methods

- (NSRange)rangeForGroupName:(nonnull NSString *)groupName
{
    NSInteger index = [self indexOfNamedGroup:groupName];
    
    if (index >= 0) {
        index++; // Because of index 0 being the entire string.
        return [self rangeAtIndex:index];
    }
    
    return NSMakeRange(NSNotFound, 0);
}

- (nullable NSString *)valueForGroupName:(nonnull NSString *)groupName inString:(NSString *)string
{
    NSRange range = [self rangeForGroupName:groupName];
    if (range.location != NSNotFound) {
        return [string substringWithRange:range];
    }
    return nil;
}

// Private methods

- (NSInteger)indexOfNamedGroup:(NSString *)groupName
{
    NSString *bracketsPattern = @"(\\(.*?\\))";
    NSString *pattern = self.regularExpression.pattern;
    
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:bracketsPattern options:0 error:nil];
    NSArray* matches = [regex matchesInString:pattern options:0 range:NSMakeRange(0, pattern.length)];
    
    for (NSTextCheckingResult* match in matches) {
        for (int i = 0 ; i < match.numberOfRanges ; i++) {
            NSString *group = [pattern substringWithRange:[match rangeAtIndex:i]];
            if ([group rangeOfString:[NSString stringWithFormat:@"<%@>", groupName]].location != NSNotFound) {
                return [matches indexOfObject:match];
            }
        }
    }
    
    return -1;
}

@end