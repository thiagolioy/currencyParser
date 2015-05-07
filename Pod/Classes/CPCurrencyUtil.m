//
//  CPCurrencyUtil.m
//  currencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import "CPCurrencyUtil.h"

@implementation CPCurrencyUtil


+(NSString*)format:(float)value withLocaleID:(NSString*)localeID{
    NSNumber *number = [[NSNumber alloc] initWithFloat:value];
    NSString *formatted = [[CPCurrencyUtil setUpFormatter:localeID] stringFromNumber:number];
    if ([localeID isEqualToString:@"pt_BR"])
        formatted = [formatted stringByReplacingOccurrencesOfString:@"R$" withString:@"R$ "];
    
    return formatted;
}

+(NSString*)format:(float)value{
    return [CPCurrencyUtil format:value withLocaleID:nil];
}

+(NSString *)currencySymbol{
    return [[CPCurrencyUtil setUpFormatter:nil] currencySymbol];
}
+(NSString *)currencyCode{
    return [[CPCurrencyUtil setUpFormatter:nil] currencyCode];
}

+(NSString *)currencySymbolFor:(NSString*)localeID{
    return [[CPCurrencyUtil setUpFormatter:localeID] currencySymbol];
}
+(NSString *)currencyCodeFor:(NSString*)localeID{
    return [[CPCurrencyUtil setUpFormatter:localeID] currencyCode];
}


+(NSNumberFormatter*)setUpFormatter:(NSString*)localeID{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setLocale: localeID ? [[NSLocale alloc] initWithLocaleIdentifier:localeID] :
     [NSLocale currentLocale]];
    return formatter;
}

@end
