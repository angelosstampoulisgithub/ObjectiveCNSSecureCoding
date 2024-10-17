//
//  ViewModel.m
//  ObjectiveCNSSecureCoding
//
//  Created by Angelos Staboulis on 17/10/24.
//

#import "ViewModel.h"

@implementation ViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        _services = [[Services alloc] init];
    }
    return self;
}
- (RACSignal *)makeRequest:(NSString *)nameString{
       return [self->_services createRequest:nameString];
}
@end
