//
//  NSString+CSCurrencyUtils.h
//  CSCurrencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CSCurrencyUtils)

-(NSNumber*)cs_currencyToNumber;
-(NSNumber*)cs_currencyToNumberWithLocale:(NSString*)localeID;

@end
