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

@interface WarCarftIII_Tests_07 : XCTestCase

@end

@implementation WarCarftIII_Tests_07
{
    Footman *_footman;
}


-(Footman *)footman
{
    if (!_footman){
        [Footman new];
    }
    return _footman;
}

-(void)testAttackShouldDoDeal10APDamageToTheEnemyUnit
{
    id enemy = [OCMockObject mockForClass:[Footman class]];
    [[enemy expect] damage:10];
    [self.footman attack:enemy];
}


-(void)testDamageShouldReduceTheUnitHealthPointsBy
{
    [self.footman damage:4];
    int result = [self.footman healthPoints];
    int expected = 56;
    XCTAssertEqual(expected,result);
}
@end
