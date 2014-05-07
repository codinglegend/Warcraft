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


@interface WarCarftIII_Tests_08 : XCTestCase

@end

@implementation WarCarftIII_Tests_08

-(Peasent *)peasent
{
    return [Peasent new];
}

-(void)testPeasentShouldBeAUnit
{
    BOOL result = [self.peasent isKindOfClass:[Unit class]];
    BOOL expected = YES;
    XCTAssertEqual(expected,result);
}

-(void)testHasAndKnowsItsHPWhichIsLowerThanThatOfAFootman
{
    int result = self.peasent.healthPoints;
    int expected = 35;
    XCTAssertEqual(expected,result);
}

-(void)testCantDamageOtherUnitsNoAttackPower
{
    int result = self.peasent.attckPower;
    int expected = 0;
    XCTAssertEqual(expected,result);

}
@end
