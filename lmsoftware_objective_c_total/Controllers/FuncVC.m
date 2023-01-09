//
//  FuncVC.m
//  lmsoftware_objective_c_total
//
//  Created by MV962 on 09/01/2023.
//

#import "FuncVC.h"

@interface FuncVC ()

@end

@implementation FuncVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setLabel];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnStop:(id)sender {
    
    [timer invalidate];
    
}

- (IBAction)btnStart:(id)sender {
    
    counter = 0;
    self.lbCounter.text = [NSString stringWithFormat:@"%i",counter];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countTimer) userInfo:nil repeats:true];
    
}

- (IBAction)btnHelloClick:(id)sender {
    _lbHello.text = _txtInput.text;
    [self resignFirstResponder];
}

- (void) setLabel{
    self.lbHello.textColor = [UIColor redColor];
    
    [self.lbHello setFont:[UIFont fontWithName:@"Verdana" size:20]];
    
    self.lbHello.textAlignment = NSTextAlignmentCenter;
    
    self.lbHello.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.lbHello.layer.shadowOpacity = 0.5;
    self.lbHello.layer.shadowRadius = 1.0f;
    self.lbHello.layer.shadowOffset = CGSizeMake(0, 2);
}

- (void) countTimer{
    counter += 1;
    self.lbCounter.text = [NSString stringWithFormat:@"%i",counter];
}

@end
