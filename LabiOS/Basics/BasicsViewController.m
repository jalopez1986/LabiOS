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
    
    
}

-(void)consAndVariablesSection {
    NSString *word1 = @"Hello";
    word1 = @"change de value";
    
    NSString * const word2 = @"Goodbye";
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
