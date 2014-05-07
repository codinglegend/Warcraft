//
//  WarCraftIII_Tests_04.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Barracks.h"
#import "Footman.h"


// A Barracks should only be able to train footmen if it has enough resources
// Introduce a new method that checks to see if there are enough resources to train one
// Of course, it should then also be leveraged by the train_footman method

@interface WarCraftIII_Tests_04 : XCTestCase

@end

@implementation WarCraftIII_Tests_04
{
    Barracks *_barracks;
}

-(Barracks *)barracks
{
    if (!_barracks) {
        _barracks = [Barracks new];
    }
    return _barracks;
}

-(void)testShouldTrainFootmanIfThereIsEnoughResources
{
    BOOL result = [self.barracks shouldTrainFootman];
    BOOL expected = YES;
    XCTAssertEqual(expected,result);
}

-(void)testShouldTrainFootmanFalseIfThereIsntEnoughFood
{
    self.barracks.food = 1;
    BOOL result = [self.barracks shouldTrainFootman];
    BOOL expected = NO;
    XCTAssertEqual(expected,result);
}

-(void)testShouldTrainFootmanFalseIfThereIsntEnoughGold
{
    self.barracks.gold = 134;
    BOOL result = [self.barracks shouldTrainFootman];
    BOOL expected = NO;
    XCTAssertEqual(expected,result);
}

-(void)testWillNotTrainFootmanWithoutEnoughResources
{
    self.barracks.food = 1;
    Footman *result = [self.barracks trainFootman];
    id expected = nil;
    XCTAssertEqual(expected,result);
}

-(void)testWillTrainFootmanWithEnoughResources
{
    Footman *footman = [self.barracks trainFootman];
    BOOL result = [footman isKindOfClass:[Footman class]];
    BOOL expected = YES;
    XCTAssertEqual(expected,result);
}

@end
