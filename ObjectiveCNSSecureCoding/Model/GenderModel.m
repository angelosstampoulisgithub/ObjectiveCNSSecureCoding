//
//  GenderModel.m
//  ObjectiveCNSSecureCoding
//
//  Created by Angelos Staboulis on 17/10/24.
//

#import "GenderModel.h"

@implementation GenderModel
+ (BOOL)supportsSecureCoding{
    return YES;
}
- (void)encodeWithCoder:(NSCoder *)coder {
   [coder encodeObject:self.name forKey:@"name"];
   [coder encodeObject:self.probability forKey:@"probability"];
   [coder encodeObject:self.gender forKey:@"gender"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
   self = [super init];
   if (self) {
       self.name = [coder decodeObjectOfClass:[NSString class] forKey:@"name"];
       self.probability = [coder decodeObjectOfClass:[NSString class] forKey:@"probability"];
       self.gender = [coder decodeObjectOfClass:[NSString class] forKey:@"gender"];
   }
   return self;
}
@end
