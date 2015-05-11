//
//  CSCurrencyUtil.m
//  CSCurrencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import "CSCurrencyUtil.h"

@implementation CSCurrencyUtil


+(NSString*)cs_format:(float)value withLocaleID:(NSString*)localeID{
    NSNumber *number = [[NSNumber alloc] initWithFloat:value];
    NSString *formatted = [[CSCurrencyUtil cs_setUpFormatter:localeID] stringFromNumber:number];
    if ([localeID isEqualToString:@"pt_BR"])
        formatted = [formatted stringByReplacingOccurrencesOfString:@"R$" withString:@"R$ "];
    
    return formatted;
}

+(NSString*)cs_format:(float)value{
    return [CSCurrencyUtil cs_format:value withLocaleID:nil];
}

+(NSString *)cs_currencySymbol{
    return [[CSCurrencyUtil cs_setUpFormatter:nil] currencySymbol];
}
+(NSString *)cs_currencyCode{
    return [[CSCurrencyUtil cs_setUpFormatter:nil] currencyCode];
}

+(NSString *)cs_currencySymbolFor:(NSString*)localeID{
    return [[CSCurrencyUtil cs_setUpFormatter:localeID] currencySymbol];
}
+(NSString *)cs_currencyCodeFor:(NSString*)localeID{
    return [[CSCurrencyUtil cs_setUpFormatter:localeID] currencyCode];
}


+(NSNumberFormatter*)cs_setUpFormatter:(NSString*)localeID{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setLocale: localeID ? [[NSLocale alloc] initWithLocaleIdentifier:localeID] :
     [NSLocale currentLocale]];
    return formatter;
}

@end
