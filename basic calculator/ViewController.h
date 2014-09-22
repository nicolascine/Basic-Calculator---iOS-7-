//
//  ViewController.h
//  basic calculator
//
//  Created by nicolassilva on 22-09-14.
//  Copyright (c) 2014 Nicolas Silva. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

{
    
    int total;
    int modo;
    NSString *valordeCadena;
    IBOutlet UILabel *etiqueta;
    BOOL ultimoModo;
    
}

-(IBAction)pulsarLimpiar:(id)sender;
-(IBAction)pulsarNumero:(UIButton*)btn;
-(IBAction)pulsarSuma:(id)sender;
-(IBAction)pulsarResta:(id)sender;
-(IBAction)pulsarIgual:(id)sender;



@end