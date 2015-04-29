//
//  NSString+CPCurrencyUtils.h
//  currencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CPCurrencyUtils)
-(NSNumber*)currencyToNumber;
-(NSNumber*)currencyToNumberWithLocale:(NSString*)localeID;
@end
