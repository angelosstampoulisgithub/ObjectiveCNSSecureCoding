//
//  ViewModel.h
//  ObjectiveCNSSecureCoding
//
//  Created by Angelos Staboulis on 17/10/24.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC/ReactiveObjC.h>
#import "Services.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewModel : NSObject
-(RACSignal *) makeRequest:(NSString*) nameString;
@property Services *services;
@end

NS_ASSUME_NONNULL_END
