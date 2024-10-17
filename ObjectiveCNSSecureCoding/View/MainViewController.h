//
//  MainViewController.h
//  ObjectiveCNSSecureCoding
//
//  Created by Angelos Staboulis on 17/10/24.
//

#import <UIKit/UIKit.h>
#import "ViewModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController
@property ViewModel *viewModel;
@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UILabel *txtGender;
@property (weak, nonatomic) IBOutlet UILabel *txtProbability;
- (IBAction)btnFillFields:(id)sender;

@end

NS_ASSUME_NONNULL_END
