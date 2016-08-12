//
//  Deck.h
//  Matchismo
//
//  Created by Oshyn on 8/5/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"




@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end

