//
//  ViewController.h
//  Matchismo
//
//  Created by Oshyn on 8/5/16.
//  Copyright © 2016 Oshyn. All rights reserved.
//
//Abstract class. Must implement methods below

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface ViewController : UIViewController

//protected
//for subclasses
-(Deck*)createDeck; //abstract
@end

