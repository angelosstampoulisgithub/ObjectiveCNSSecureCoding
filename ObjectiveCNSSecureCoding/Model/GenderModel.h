//
//  GenderModel.h
//  ObjectiveCNSSecureCoding
//
//  Created by Angelos Staboulis on 17/10/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GenderModel : NSObject<NSSecureCoding>
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *probability;
@property (nonatomic,strong) NSString *gender;
@end

NS_ASSUME_NONNULL_END
