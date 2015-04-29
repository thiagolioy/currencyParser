//
//  CPCurrencyUtil.h
//  currencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPCurrencyUtil : NSObject

+(NSString*)format:(float)value;
+(NSString*)format:(float)value withLocaleID:(NSString*)localeID;

+(NSString *)currencySymbol;
+(NSString *)currencySymbolFor:(NSString*)localeID;

+(NSString *)currencyCode;
+(NSString *)currencyCodeFor:(NSString*)localeID;
@end
