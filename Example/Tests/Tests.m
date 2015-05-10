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
        expect([@"$2.50" currencyToNumber]).to.equal(2.5);
    });
    
    it(@"should convert from currency to number", ^{
        expect([@"R$ 2,50" currencyToNumberWithLocale:@"pt_BR"]).to.equal(2.5);
    });
    
    
});


describe(@"Should parse arguments to a currencyFormatted String", ^{

    it(@"float arg with default locale", ^{
        expect([CPCurrencyUtil format:2.5]).to.equal(@"$2.50");
    });
    
    
    it(@"float arg with locale", ^{
        expect([CPCurrencyUtil format:2.5 withLocaleID:@"pt_BR"]).to.equal(@"R$ 2,50");
    });
    
});


describe(@"Helper methods", ^{
    
    it(@"easier way to get default currencySymbol", ^{
        expect([CPCurrencyUtil currencySymbol]).to.equal(@"$");
    });
    
    it(@"easier way to get default currencyCode", ^{
        expect([CPCurrencyUtil currencyCode]).to.equal(@"USD");
    });
    
    it(@"should get the currencySymbol for specified locationID", ^{
        expect([CPCurrencyUtil currencySymbolFor:@"pt_BR"]).to.equal(@"R$");
    });
    
    it(@"should get the currencyCode for specified locationID", ^{
        expect([CPCurrencyUtil currencyCodeFor:@"pt_BR"]).to.equal(@"BRL");
    });
    
});

SpecEnd
