//
//  Card.m
//  Matchismo
//
//  Created by Oshyn on 8/5/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card





-(int)match:(NSArray *)otherCards   {
    
    int score = 0;
    
    for(Card *card in otherCards)
        if([card.contents isEqualToString:self.contents]){
            score =1;
        }
    return score;
}

@end

