//
//  Deck.h
//  Matchismo
//
//  Created by nothinking on 13. 7. 5..
//  Copyright (c) 2013년 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
