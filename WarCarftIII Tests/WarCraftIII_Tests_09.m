//
//  WarCraftIII_Tests_09.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 7/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Barracks.h"
#import "Peasent.h"
#import "OCMock.h"

@interface WarCraftIII_Tests_09 : XCTestCase

@end

@implementation WarCraftIII_Tests_09
{
    Barracks *barracks;
    
}

- (void)setUp
{
    [super setUp];
    barracks = [Barracks new];
}

- (void)tearDown
{
   
    [super tearDown];
    barracks = nil;
}

-(void)testTrainPeasantCost90Gold
{
    [barracks trainPeasant];
    int result = barracks.gold;
    int expected = 910;
    XCTAssertEqual(expected,result);
}

-(void)testTrainPeasantCost5Food
{
    [barracks trainPeasant];
    int result = barracks.food;
    int expected = 75;
    XCTAssertEqual(expected,result);
}

-(void)testTrainPeasantProducesAUnit
{
    Peasent *peasent = [barracks trainPeasant];
    BOOL result = [peasent isKindOfClass:[Peasent class]];
    BOOL expected = YES;
    XCTAssertEqual(expected,result);
}


-(void)testShouldTrainPeasantBeTrueIfThereIsEnoughResources
{
    BOOL result = [barracks shouldTrainPeasent];
    BOOL expected = YES;
    XCTAssertEqual(expected,result);
}

-(void)testShouldTrainPeasantBeFalseIfThereIsntEnoughFood
{
    id barracks = [OCMockObject mockForClass:[Barracks class]];
    [[[barracks stub] andReturn:4] food];
    BOOL result = [barracks shouldTrainPeasent];
    BOOL expected = NO;
    XCTAssertEqual(expected,result);
}

-(void)testShouldTrainPeasantBeFalseIfThereIsntEnoughGold
{
    id barracks = [OCMockObject mockForClass:[Barracks class]];
    [[[barracks stub] andReturn:89] gold];
    BOOL result = [barracks shouldTrainPeasent];
    BOOL expected = NO;
    XCTAssertEqual(expected,result);
}

-(void)testTrainPeasantDoesNotTrainPeasantIfThereIsNotEnoughResources
{
    id barracks = [OCMockObject mockForClass:[Barracks class]];
    [[[barracks stub] andReturn:false] shouldtrainPeasant];
    id result = [barracks trainPeasant];
    id expeceted = nil;
    XCTAssertEqual(expected,result);
}

-(void)testTrainPeasantWillTrainIfThereIsEnoughResources
{
  
    Barracks *barracks = [barracks trainPeasant];
    BOOL result = [barracks isKindOfClass:[Barracks class]];
    BOOL expeceted = YES;
    XCTAssertEqual(expected,result);
}


@end
