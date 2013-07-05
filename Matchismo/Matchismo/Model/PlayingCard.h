//
//  PlayingCard.h
//  Matchismo
//
//  Created by nothinking on 13. 7. 5..
//  Copyright (c) 2013년 CS193p. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
