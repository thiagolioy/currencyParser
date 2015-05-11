//
//  currencyParserTests.m
//  currencyParserTests
//
//  Created by thiagolioy on 04/28/2015.
//  Copyright (c) 2014 thiagolioy. All rights reserved.
//

#import <CSCurrencyParser.h>

SpecBegin(InitialSpecs)

describe(@"Category on NSString to make it easy conver Formatted Currency String to numbers", ^{
    
    it(@"should convert from currency to number", ^{
        expect([@"$2.50" cs_currencyToNumber]).to.equal(2.5);
    });
    
    it(@"should convert from currency to number", ^{
        expect([@"R$ 2,50" cs_currencyToNumberWithLocale:@"pt_BR"]).to.equal(2.5);
    });
    
    
});


describe(@"Should parse arguments to a currencyFormatted String", ^{

    it(@"float arg with default locale", ^{
        expect([CSCurrencyUtil cs_format:2.5]).to.equal(@"$2.50");
    });
    
    
    it(@"float arg with locale", ^{
        expect([CSCurrencyUtil cs_format:2.5 withLocaleID:@"pt_BR"]).to.equal(@"R$ 2,50");
    });
    
});


describe(@"Helper methods", ^{
    
    it(@"easier way to get default currencySymbol", ^{
        expect([CSCurrencyUtil cs_currencySymbol]).to.equal(@"$");
    });
    
    it(@"easier way to get default currencyCode", ^{
        expect([CSCurrencyUtil cs_currencyCode]).to.equal(@"USD");
    });
    
    it(@"should get the currencySymbol for specified locationID", ^{
        expect([CSCurrencyUtil cs_currencySymbolFor:@"pt_BR"]).to.equal(@"R$");
    });
    
    it(@"should get the currencyCode for specified locationID", ^{
        expect([CSCurrencyUtil cs_currencyCodeFor:@"pt_BR"]).to.equal(@"BRL");
    });
    
});

SpecEnd
