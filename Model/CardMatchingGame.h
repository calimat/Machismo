//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Oshyn on 8/8/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initializer
-(instancetype)initWithCardCound:(NSUInteger)count usingDeck:(Deck *)deck;

-(void) chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;
-(void) resetGame; 
@property (nonatomic, readonly) NSInteger score;

@property (nonatomic) NSInteger numberofMatchingCards;

@end
