//
//  WarCarftIII_Tests_10.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 7/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Unit.h"
#import "OCMock.h"

@interface Unit()
@property (nonatomic)

- (instancetype)initWithHP:(int)hp AP:(int)ap;
- (void)sethealthPoints:(int)hp;
- (int)healthPoints;
- (void)attack:(Unit *)enemy;
- (void)damage:(int)damage;
@end

@interface WarCarftIII_Tests_10 : XCTestCase

@end

@implementation WarCarftIII_Tests_10
{
    Unit *unit;
    Unit *enemy;
}

- (void)setUp
{
    [super setUp];
    unit = [[Unit alloc] initWithHP:100 AP:3];
    enemy = [[Unit alloc] initWithHP:40 AP:5];
}

- (void)tearDown
{
    unit = nil;
    enemy = nil;
    [super tearDown];
}

-(void)testDamageShouldReduceTheUnithealthPointsByTheAttackPower
{
    [unit damage:12];
    int result = unit.healthPoints;
    int expected = 88;
    XCTAssertEqual(expected,result);
}

-(void)testAttackShouldDealDamageToEnemy
{
    id enemy = [OCMockObject mockForClass:[Unit class]];
    [[enemy expect] damage:3];
    [unit attack:enemy];
}

@end
