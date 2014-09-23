//
//  ViewController.m
//  basic calculator
//
//  Created by nicolassilva on 22-09-14.
//  Copyright (c) 2014 Nicolas Silva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    valordeCadena = @"";
}

-(IBAction)pulsarNumero:(UIButton*)btn{
    
    int num = btn.tag;
    
    if(num == 0 && total == 0){
        return;
    }
    
    if (ultimoModo){
        ultimoModo = NO;
        valordeCadena = @"";
    }
    
    NSString *numerocomoCandena = [NSString stringWithFormat: @"%i", num];
    valordeCadena = [valordeCadena stringByAppendingString:numerocomoCandena];
    NSNumberFormatter *formato = [NSNumberFormatter new];
    [formato setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *n = [formato numberFromString:valordeCadena];
    etiqueta.text = [formato stringFromNumber:n];
    
    if (total == 0){
        total = [valordeCadena intValue];
    }
    
}

-(IBAction)pulsarLimpiar:(id)sender{
    
    total = 0;
    valordeCadena = @"";
    etiqueta.text = @"0";
}

-(IBAction)pulsarSuma:(id)sender{
    
    [self asignarModo:1];
}

-(IBAction)pulsarResta:(id)sender{
    
    [self asignarModo:-1];
    
}

-(IBAction)pulsarMultiplicacion:(id)sender{
    
    [self asignarModo:2];
    
}

-(IBAction)pulsarIgual:(id)sender{
    
    switch (modo) {
        case 0:
            return;
            break;
        case 1:
            total += [valordeCadena intValue];
            break;
        case -1:
            total -= [valordeCadena intValue];
            break;
        case 2:
            total *= [valordeCadena intValue];
            break;
            
        default:
            break;
    }
    
    valordeCadena = [NSString stringWithFormat: @"%i", total];
    
    NSNumberFormatter *formato = [NSNumberFormatter new];
    [formato setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *n = [formato numberFromString:valordeCadena];
    etiqueta.text = [formato stringFromNumber:n];
    modo = 0;
    
}

-(void)asignarModo:(int)m{
    
    if (total == 0){
        return;
    }
    
    modo = m;
    ultimoModo = YES;
    total = [valordeCadena intValue];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
