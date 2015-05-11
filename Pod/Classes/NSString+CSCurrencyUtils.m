//
//  NSString+CSCurrencyUtils.m
//  CSCurrencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import "NSString+CSCurrencyUtils.h"
#import "CSCurrencyUtil.h"

@implementation NSString (CSCurrencyUtils)

-(NSNumber*)cs_currencyToNumber{
    
    return [[CSCurrencyUtil cs_setUpFormatter:nil] numberFromString:self];
}

-(NSNumber*)cs_currencyToNumberWithLocale:(NSString*)localeID{
    NSString *trimmedString = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    return [[CSCurrencyUtil cs_setUpFormatter:localeID] numberFromString:trimmedString];
}

@end
