//
//  ViewController.m
//  Matchismo
//
//  Created by Oshyn on 8/5/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//

#import "Deck.h"
#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (nonatomic, strong)  Deck  *deck;
@property(nonatomic,strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;




@end

@implementation ViewController
- (IBAction)switchGameType:(id)sender {
    
    if(self.segmentControl.selectedSegmentIndex == 0)
    {
        self.game.numberofMatchingCards = 2;
    }
    else{
        
        self.game.numberofMatchingCards = 3;
    }
    
}

- (IBAction)reDealButtonClick:(id)sender {
    
    [self.game resetGame];
    [self updateUI];
    
    
}


-(CardMatchingGame *) game
{
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCound:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}



-(Deck*)createDeck //abstract
{
    return nil;
}


- (IBAction)touchCardButton:(UIButton *)sender {
    
    NSInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}



-(void) updateUI
{
    for (UIButton *cardButton in self.cardButtons)
    {
        NSInteger cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        [cardButton setBackgroundImage:
         [self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        
    }
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.game.score];
    
}

-(NSString *) titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}


-(UIImage *) backgroundImageForCard:(Card *)card {
    
    return [UIImage imageNamed:card.isChosen ? @"cardfront": @"cardback"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
