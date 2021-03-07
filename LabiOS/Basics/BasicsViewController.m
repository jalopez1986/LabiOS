//
//  BasicsViewController.m
//  LabiOS
//
//  Created by Jorge Lopez on 1/02/21.
//  Copyright © 2021 Jorge Lopez. All rights reserved.
//

#import "BasicsViewController.h"

@interface BasicsViewController ()

@end

@implementation BasicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self StringsSection];
    [self intSection];
    [self doubleSection];
    [self booleanSection];
    [self arraySection];
    [self NSTimerTest];
    
}

-(void)consAndVariablesSection {
    NSString *word1 = @"Hello";
    word1 = @"change de value";
    
    NSString * const word2 = @"Goodbye";
    self.label.text = word2;
    //word2 = @"change de value"; no se puede porque es constante
    // esa sintaxis solo aplica cuando es String
    
    //para el resto de tipos
    int intVariable = 10;
    intVariable = 20;  //lo permite
    
    const int intConstante = 50;
    //intConstante = 60; no se puede es constante
    
}


-(void)StringsSection {
    name = @"Jorge";
    NSString *word = @"Hola";
    
    self.label.text = name;
    self.label.text = [NSString stringWithFormat:@"%@ %@", word,name];
}

-(void)intSection {
    numberA = 10;
    numberB = 200;
    
    int score = numberA * numberB;
    self.label.text = [NSString stringWithFormat:@"%d", score];
}

-(void)doubleSection {
    double numberA = 100.343;
    double numberB = 213.324;
    
    double score = numberA + numberB;
    
    //.2 indica el numero de decimales que quiero. En este caso 2
    self.label.text = [NSString stringWithFormat:@"%.2f", score];
    
}

-(void)booleanSection {
    BOOL isButtonEnabled = NO;
    BOOL isSwitchOn = true;
    
    self.myButton.enabled = isButtonEnabled;
    self.mySwitch.on = isSwitchOn;
    
    //En objective C se recomienda usar YES NO
    //en c es true/false
    
}

-(void)arraySection {
    NSArray *array = @[@"Apple", @"Banana", @"Orange"];
    NSLog(@"Array section: %@",array[2]);  //orange
    
    NSMutableArray * arrayMutable = [[NSMutableArray alloc] initWithObjects:@"Apple", @"Banana", @"Orange", nil];
    
    NSLog(@"Array section: %@",arrayMutable[2]);  //orange
    
    [arrayMutable addObject:@"Melon"];  //add to the end
    NSLog(@"Array section: %@",arrayMutable[3]);  //Melon
    
    [arrayMutable insertObject:@"Strawberry" atIndex:3];
    NSLog(@"Array section: %@",arrayMutable[3]);  //Strawberry
    
    [arrayMutable removeObjectAtIndex:3];
    NSLog(@"Array section: %@",arrayMutable[3]);  //Melon
    
    NSLog(@"Array section count: %lu",arrayMutable.count);  //Melon
    
}

-(void)NSTimerTest {
    [self updateTimer];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}


- (void)updateTimer {
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"hh:mm:ss"];
    self.timeLabel.text = [timeFormat stringFromDate:[NSDate date]];
}

-(void)randomNumbers {
    
    
}

- (IBAction)generateRandomNumbers:(id)sender {
    int randomNum0To100 = arc4random() % 100;
    NSLog(@"Random Number 0To100; %i", randomNum0To100);
    
    int randomNum10To20 = arc4random_uniform(20-10) + 10;
    NSLog(@"Random Number 10To20; %i", randomNum10To20);
    
}
@end
