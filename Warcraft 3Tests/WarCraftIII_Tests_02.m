//
//  WarCraftIII_Tests_02.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Barracks.h"

// Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

@interface Barracks()
- (int)gold;
- (int)food;
@end

@interface WarCraftIII_Tests_02 : XCTestCase

@end

@implementation WarCraftIII_Tests_02

-(Barracks *)barracks
{
    return [Barracks new];
}

-(void)testStartsOffWith1000GoldResources
{
    int result = self.barracks.gold;
    int expected = 1000;
    XCTAssertEqual((int)expected, (int)result);
}

-(void)testStartsOffWith80FoodResources
{
    int result = self.barracks.food;
    int expected = 80;
    XCTAssertEqual((int)expected, (int)result);
}

@end
