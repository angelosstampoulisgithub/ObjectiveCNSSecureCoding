//
//  MainViewController.m
//  ObjectiveCNSSecureCoding
//
//  Created by Angelos Staboulis on 17/10/24.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeViewController];
}
-(void) initializeViewController{
    _viewModel = [[ViewModel alloc] init];
    [[self navigationItem] setTitle:@"Genderize"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnFillFields:(id)sender {
    RACSignal *signal = [self->_viewModel makeRequest:[self->_txtFirstName text]];
    [signal subscribeNext:^(id  _Nullable x) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSString *gender = [NSString stringWithFormat:@"%@",[x gender]];
            NSString *probability = [NSString stringWithFormat:@"%@",[x probability]];
            [self->_txtGender setText:gender];
            [self->_txtProbability setText:probability];
        });
    } completed:^{
        NSLog(@"completed");
    }];
}
@end
