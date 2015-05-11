//
//  CSCurrencyUtil.h
//  CSCurrencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSCurrencyUtil : NSObject

+(NSNumberFormatter*)cs_setUpFormatter:(NSString*)localeID;

+(NSString*)cs_format:(float)value;
+(NSString*)cs_format:(float)value withLocaleID:(NSString*)localeID;

+(NSString *)cs_currencySymbol;
+(NSString *)cs_currencySymbolFor:(NSString*)localeID;

+(NSString *)cs_currencyCode;
+(NSString *)cs_currencyCodeFor:(NSString*)localeID;

@end
