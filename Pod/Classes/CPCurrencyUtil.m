//
//  CPCurrencyUtil.m
//  currencyParser
//
//  Created by Thiago Lioy on 4/28/15.
//  Copyright (c) 2015 thiagolioy. All rights reserved.
//

#import "CPCurrencyUtil.h"

@implementation CPCurrencyUtil

+(NSString*)format:(float)value{
    
    NSLocale *localeBR = [[NSLocale alloc] initWithLocaleIdentifier:@"pt_BR"];
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [numberFormatter setLocale:localeBR];
    NSNumber *number = [[NSNumber alloc] initWithFloat:value];
    
    NSString *fomatted = [numberFormatter stringFromNumber:number];
    
    return fomatted;
}

@end
