//
//  PlayingCard.m
//  Matchismo
//
//  Created by Oshyn on 8/5/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *) contents {
    
    NSArray *rankStrings = [PlayingCard rankStrings];
    
    return [rankStrings [self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;


-(int)match:(NSArray *)otherCards   {
    
    int score =  0;
    
    if([otherCards count] == 1)
    {
        id card = [otherCards firstObject];
        
        if([card isKindOfClass:[PlayingCard class]]) {
        
        PlayingCard *otherCard = (PlayingCard *) card;
        if([self.suit isEqualToString:otherCard.suit]) {
            score=1;
        }
        else if(self.rank == otherCard.rank) {
            score = 4;
        }
            
        }
        
    }
    
    return score;
    
}


+(NSArray *) validSuits
{
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}

-(void)setSuit:(NSString *) suit {
    
    if([ [PlayingCard validSuits] containsObject:suit] )
    {
        _suit = suit;
    }
}


-(NSString *) suit
{
    return _suit ? _suit : @"?";
}

+(NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger) maxRank { return [[self rankStrings] count]-1; }
-(void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}
    


@end
