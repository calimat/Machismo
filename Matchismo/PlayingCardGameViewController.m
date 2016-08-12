//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Oshyn on 8/10/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//

#import "PlayingCardGameViewController.h"

@implementation PlayingCardGameViewController
-(Deck *) createDeck{
    return [[PlayingCardDeck alloc]init];
}
@end
