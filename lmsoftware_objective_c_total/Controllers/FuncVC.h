//
//  FuncVC.h
//  lmsoftware_objective_c_total
//
//  Created by MV962 on 09/01/2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FuncVC : UIViewController{

    NSTimer *timer;
    NSInteger *counter;
}

@property (weak, nonatomic) IBOutlet UITextField *txtInput;
@property (weak, nonatomic) IBOutlet UILabel *lbHello;
- (IBAction)btnHelloClick:(id)sender;
- (IBAction)btnStart:(id)sender;
- (IBAction)btnStop:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lbCounter;

@end

NS_ASSUME_NONNULL_END
