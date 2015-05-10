//
//  currencyParserTests.m
//  currencyParserTests
//
//  Created by thiagolioy on 04/28/2015.
//  Copyright (c) 2014 thiagolioy. All rights reserved.
//

#import "CPCurrencyUtil.h"
#import "NSString+CPCurrencyUtils.h"

SpecBegin(InitialSpecs)

describe(@"Category on NSString to make it easy conver Formatted Currency String to numbers", ^{
    
    it(@"should convert from currency to number", ^{
        NSNumber *actual = [@"$2.50" currencyToNumber];
        NSNumber *expected = [NSNumber numberWithFloat:2.5];
        expect(actual).to.equal(expected);
    });
    
    it(@"should convert from currency to number", ^{
        NSNumber *actual = [@"R$ 2,50" currencyToNumberWithLocale:@"pt_BR"];
        NSNumber *expected = [NSNumber numberWithFloat:2.5];
        expect(actual).to.equal(expected);
    });
    
    
});


describe(@"Should parse arguments to a currencyFormatted String", ^{

    it(@"float arg with default locale", ^{
        NSString *actual = [CPCurrencyUtil format:2.5];
        NSString *expected = @"$2.50";
        expect(actual).to.equal(expected);
    });
    
    
    it(@"float arg with locale", ^{
        NSString *actual = [CPCurrencyUtil format:2.5 withLocaleID:@"pt_BR"];
        NSString *expected = @"R$ 2,50";
        expect(actual).to.equal(expected);
    });
    
});


describe(@"Helper methods", ^{
    
    it(@"easier way to get default currencySymbol", ^{
        NSString *actual = [CPCurrencyUtil currencySymbol];
        NSString *expected = @"$";
        expect(actual).to.equal(expected);
    });
    
    it(@"easier way to get default currencyCode", ^{
        NSString *actual = [CPCurrencyUtil currencyCode];
        NSString *expected = @"USD";
        expect(actual).to.equal(expected);
    });
    
    it(@"should get the currencySymbol for specified locationID", ^{
        NSString *actual = [CPCurrencyUtil currencySymbolFor:@"pt_BR"];
        NSString *expected = @"R$";
        expect(actual).to.equal(expected);
    });
    
    it(@"should get the currencyCode for specified locationID", ^{
        NSString *actual = [CPCurrencyUtil currencyCodeFor:@"pt_BR"];
        NSString *expected = @"BRL";
        expect(actual).to.equal(expected);
    });
    
});

SpecEnd
