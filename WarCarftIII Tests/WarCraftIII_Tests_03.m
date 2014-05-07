//
//  WarCraftIII_Tests_03.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Footman.h"
#import "Barracks.h"

// Now that our Barracks and Footman classes are initializable, lets allow the player to train a footman from their barracks
// This of course costs the player some resources

@interface WarCraftIII_Tests_03 : XCTestCase

@end

@implementation WarCraftIII_Tests_03


-(Barracks *)barracks
{
    return [Barracks new];
}

-(void)testTrainFootmanCosts135Gold
{
    [self.barracks trainFootman];
    int result = self.barracks.gold;
    int expected = 865; // Starts with 1000
    XCTAssertEqual(expected,result);
}

-(void)testTrainFootmanCosts2Food
{
    [self.barracks trainFootman];
    int result = self.barracks.food;
    int expected = 78; // Starts with 80
    XCTAssertEqual(expected,result);
}

-(void)testTrainFootmanProducesAFootmanUnit
{
    Footman *footman = [self.barracks trainFootman];
    BOOL result = [footman isKindOfClass:[Footman class]];
    BOOL expected = YES;
    XCTAssertEqual(expected,result);
}

@end
