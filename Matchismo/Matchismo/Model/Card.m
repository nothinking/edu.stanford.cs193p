//
//  Card.m
//  Matchismo
//
//  Created by nothinking on 13. 7. 5..
//  Copyright (c) 2013년 CS193p. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
