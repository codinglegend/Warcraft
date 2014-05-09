//
//  WarCraft_Tests_06.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Footman.h"
#import "Unit.h"

// Since a Footman is a type of Unit, it makes sense to now make Footman inherit from Unit
// Furthermore,

// This test doesn't look for it, but there are other things that you could do at this point. Think about what else you could refactor in the Footman class, now that it is inheriting functionality (code) from the Unit class.


@interface WarCraftIII_Tests_06 : XCTestCase

@end

@implementation WarCraftIII_Tests_06

-(Footman *)footman
{
    return [Footman new];
}


-(void)testFootmanShouldBeAUnit
{
    XCTAssertTrue([self.footman isKindOfClass:[Unit class]], @"footman should be a kind of unit");
}

@end
