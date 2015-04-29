//
//  currencyParserTests.m
//  currencyParserTests
//
//  Created by thiagolioy on 04/28/2015.
//  Copyright (c) 2014 thiagolioy. All rights reserved.
//

#import "CPCurrencyUtil.h"

SpecBegin(InitialSpecs)

describe(@"Should parse arguments to a currencyFormatted String", ^{

    it(@"float arg", ^{
        NSString *actual = [CPCurrencyUtil format:2.5];
        NSString *expected = @"R$2,50";
        expect(expected).to.equal(actual);
    });
});

SpecEnd
