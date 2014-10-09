//
//  WarCarftIII_Tests_08.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Peasant.h"
#import "Unit.h"

// Peasants are also units, but they are not soldiers like Footman are
// These guys have other duties like mining for resources (let's not worry about that for now)
// For our intents and purposes, Peasants are just another Unit which have lower HP and no AP (they can't attack other units)

@interface Peasant()
- (int)healthPoints;
- (int)attackPower;
@end

@interface WarCarftIII_Tests_08 : XCTestCase

@end

@implementation WarCarftIII_Tests_08

-(Peasant *)peasant
{
    return [Peasant new];
}

-(void)testpeasantShouldBeAUnit
{
    XCTAssertTrue([self.peasant isKindOfClass:[Unit class]], @"Peasant should be a kind of unit");
}

-(void)testHasAndKnowsItsHPWhichIsLowerThanThatOfAFootman
{
    int result = self.peasant.healthPoints;
    int expected = 35;
    XCTAssertEqual((int)expected, (int)result, @"Peasant HP should default to 35");
}

-(void)testCantDamageOtherUnitsNoAttackPower
{
    int result = self.peasant.attackPower;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"Peasant AP should be 0");

}
@end
