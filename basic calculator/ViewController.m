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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    valordeCadena = @"";
}

-(IBAction)pulsarNumero:(UIButton*)btn
{
    
    NSInteger num = btn.tag;
    
    if(num == 0 && total == 0)
    {
        return;
        
        
    }
    
    
    
    if (ultimoModo)
    {
        
        ultimoModo = NO;
        valordeCadena = @"";
    }
    
    
    NSString *numerocomoCandena = [NSString stringWithFormat: @"%li", num];
    valordeCadena = [valordeCadena stringByAppendingString:numerocomoCandena];
    etiqueta.text = valordeCadena;
    
    if (total == 0)
    {
        total = [valordeCadena intValue];
    }
    
}

-(IBAction)pulsarLimpiar:(id)sender
{
    
    total = 0;
    valordeCadena = @"";
    etiqueta.text = @"0";
    
}
-(IBAction)pulsarSuma:(id)sender
{
    
    [self asignarModo:1];
}

-(IBAction)pulsarResta:(id)sender
{
    
    [self asignarModo:-1];
    
}

-(IBAction)pulsarIgual:(id)sender
{
    
}

-(void)asignarModo:(int)m
{
    
    if (total == 0) {
        return;
    }
    
    modo = m;
    ultimoModo = YES;
    total = [valordeCadena intValue];
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
