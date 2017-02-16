//
//  TPISIdentityOCR.h
//  TinyBuilder
//
//  Created by kingdomrain on 2017/2/16.
//  Copyright © 2017年 Sunline. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol TPISIdentityOCRProtocol<JSExport>

@property(nonatomic, strong) JSValue *success;
@property(nonatomic, strong) JSValue *error;
-(void)start;
@end


@interface TPISIdentityOCR : NSObject<TPISIdentityOCRProtocol>

@end
