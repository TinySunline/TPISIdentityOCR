# TPISIdentityOCR

[![CI Status](http://img.shields.io/travis/sunjf@sunline.cn/TEGestureLock.svg?style=flat)](https://travis-ci.org/sunjf@sunline.cn/TEGestureLock)
[![License](https://img.shields.io/cocoapods/l/TEGestureLock.svg?style=flat)](http://cocoapods.org/pods/TEGestureLock)
[![Platform](https://img.shields.io/cocoapods/p/TEGestureLock.svg?style=flat)](http://cocoapods.org/pods/TEGestureLock)

## Usage
    var identityOCR = new ISIdentityOCR();
    identityOCR.success = function(data){
        log('data=='+ data);
    }
    identityOCR.error= function(data){
        log('data=='+ data);
    }
    identityOCR.start();

## Installation

TPISIdentityOCR is available through [CocoaPods](http://cocoapods.org). 需要手动加入ISIdentityOCR目录到工程中。如若需要集成该功能，请联系合合信息公司，获取OCR的SDK。

## Requirements
工程配置  
1. 将Release文件夹下的ISIDReaderPreviewSDK.framework和ISOpenSDKFoundation.embeddedframework 添加到您的工程项目中。2. 在您的工程项目“BuildPhases->Link Binary With Libraries” 中加入如下配置:1) “libstdc++.tbd”;2) “AVFoundation.framework”;3. 在您的工程项目配置“BuildSettings->Other Linker Flags”中加入“-ObjC” 。


## Author

kingdomrain, bygd2014@sina.com

## License

TPISIdentityOCR is available under the MIT license. See the LICENSE file for more info.
