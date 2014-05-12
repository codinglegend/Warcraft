//
//  WarCarftIII_Test_07.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Footman.h"
#import "OCMock.h"

// A Footman should be able to attack other units as well as receive damage
// Later on, other units such as the peasant will be incapable of attacking

@interface Footman()
- (void)attack:(Footman *)enemy;
- (void)damage:(int)damage;
- (int)healthPoints;
@end

@interface WarCarftIII_Tests_07 : XCTestCase

@end

@implementation WarCarftIII_Tests_07
{
    Footman *_footman;
}

- (void)setUp {
	[super setUp];
	_footman = [Footman new];
}

- (void)tearDown {
	[super tearDown];
	_footman = nil;
}

-(void)testAttackShouldDoDeal10APDamageToTheEnemyUnit
{
    id enemy = [OCMockObject mockForClass:[Footman class]];
    [[enemy expect] damage:10];
    [_footman attack:enemy];
}


-(void)testDamageShouldReduceTheUnithealthPointsBy
{
    [_footman damage:4];
    int result = [_footman healthPoints];
    int expected = 56;
    XCTAssertEqual(expected,result);
}
@end
