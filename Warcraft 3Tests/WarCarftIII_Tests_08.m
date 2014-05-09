//
//  WarCarftIII_Tests_08.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Peasent.h"
#import "Unit.h"

// Peasants are also units, but they are not soldiers like Footman are
// These guys have other duties like mining for resources (let's not worry about that for now)
// For our intents and purposes, Peasants are just another Unit which have lower HP and no AP (they can't attack other units)

@interface Peasent()
- (int)healthPoints;
- (int)attckPower;
@end

@interface WarCarftIII_Tests_08 : XCTestCase

@end

@implementation WarCarftIII_Tests_08

-(Peasent *)peasent
{
    return [Peasent new];
}

-(void)testPeasentShouldBeAUnit
{
    id result = [self.peasent class];
    XCTAssertEqualObjects(result, [Unit class], @"Peasant should be a type of unit");
}

-(void)testHasAndKnowsItsHPWhichIsLowerThanThatOfAFootman
{
    int result = self.peasent.healthPoints;
    int expected = 35;
    XCTAssertEqual((int)expected, (int)result);
}

-(void)testCantDamageOtherUnitsNoAttackPower
{
    int result = self.peasent.attckPower;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result);

}
@end
