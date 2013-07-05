//
//  Card.h
//  Matchismo
//
//  Created by nothinking on 13. 7. 5..
//  Copyright (c) 2013년 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;
@end
