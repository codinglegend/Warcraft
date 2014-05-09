//
//  WarCarftIII_Tests.m
//  WarCarftIII Tests
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Footman.h"

// Units that can fight, such as the Footman, have both healthPoints points to indicate their healthPoints and attack power to indicate how much damage they deal to other units
// As such, they must start off with a certain amount of each

@interface Footman()
- (int)healthPoints;
- (int)attackPower;
@end

@interface WarCarftIII_Tests_01 : XCTestCase

@end

@implementation WarCarftIII_Tests_01

-(Footman *)footman
{
    return [Footman new];
}

- (void)testHasAndKnowItshealthPoints
{
    int result = self.footman.healthPoints;
    int expected = 60;
    XCTAssertEqual((int)expected, (int)result);
}

- (void)testHasAndKnowItsAttackPower
{
    int result = self.footman.attackPower;
    int expected = 10;
    XCTAssertEqual((int)expected, (int)result);
}
@end
