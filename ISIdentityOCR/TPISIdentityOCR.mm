//
//  TPISIdentityOCR.m
//  TinyBuilder
//
//  Created by kingdomrain on 2017/2/16.
//  Copyright © 2017年 Sunline. All rights reserved.
//

#import "TPISIdentityOCR.h"
#import <UIKit/UIKit.h>
#import <ISOpenSDKFoundation/ISOpenSDKFoundation.h>
#import <ISIDReaderPreviewSDK/ISIDReaderPreviewSDK.h>
#import <ISOpenSDKFoundation/ISOpenSDKStatus.h>


@interface TPISIdentityOCR()<ISOpenSDKCameraViewControllerDelegate>
@property(strong,nonatomic) UIViewController *viewController;
@end

@implementation TPISIdentityOCR
@synthesize error;
@synthesize success;

-(instancetype)init{
    if (self = [super init]) {
        self.viewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    }
    return self;
}


-(void)start{
    NSLog(@"ocr start");
    NSString *appKey = @"appkey";
    NSString *subAppkey = nil;//reserved for future use
    ISOpenSDKCameraViewController *cameraVC = [[ISIDCardReaderController sharedISOpenSDKController] cameraViewControllerWithAppkey:appKey subAppkey:subAppkey needCompleteness:YES];
    cameraVC.needShowBackButton = YES;
    cameraVC.customInfo = @"请将身份证放在框内识别";
    //cameraVC.shouldHightlightCorners = YES;
    cameraVC.delegate = self;
    cameraVC.addPictureSuffix = YES;
    [self.viewController presentViewController:cameraVC animated:YES completion:nil];
}


- (void)cameraViewController:(UIViewController *)viewController didFinishRecognizeCard:(NSDictionary *)resultInfo cardSDKType:(ISOpenPreviewSDKType)sdkType
{
    if (resultInfo != nil)
    {
        
    }
}

@end
