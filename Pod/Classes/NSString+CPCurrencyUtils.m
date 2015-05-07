//
//  NSString+CPCurrencyUtils.m
//  currencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import "NSString+CPCurrencyUtils.h"
#import "CPCurrencyUtil.h"

@implementation NSString (CPCurrencyUtils)
-(NSNumber*)currencyToNumber{
    return [[CPCurrencyUtil setUpFormatter:nil] numberFromString:self];
}
-(NSNumber*)currencyToNumberWithLocale:(NSString*)localeID{
    NSString *trimmedString = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    return [[CPCurrencyUtil setUpFormatter:localeID] numberFromString:trimmedString];
}
@end
