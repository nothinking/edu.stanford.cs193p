//
//  CardGameViewController.m
//  Matchismo
//
//  Created by nothinking on 13. 7. 5..
//  Copyright (c) 2013년 CS193p. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}


- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    self.flipCount++;
    
    if (sender.selected) {
        [sender setTitle:[[self.deck drawRandomCard] contents] forState:UIControlStateSelected];
        NSLog(@"random %@", [[self.deck drawRandomCard] contents]);
    }
}



@end
