//
//  ViewController.m
//  DCDeviceSample
//
//  Created by 廣川政樹 on 2013/06/17.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //デバイス情報をラベルにセット
    [self setDeviceInformation];
}

- (void)setDeviceInformation
{
    //デバイス名称
    self.labelIOSDevice.text = [DCDevice iOSDevice];
    
    //iPhone5であれば1が返る
    self.labelIphone5.text = [NSString stringWithFormat:@"%@%d", @"isIphone5: ", [DCDevice isIphone5]];
    
    //iPhone4/4Sであれば1が返る
    self.labelIphone4.text = [NSString stringWithFormat:@"%@%d", @"isIphone4: ", [DCDevice isIphone4]];
    
    //iPhone3G/3GSであれば1が返る
    self.labelIphone3.text = [NSString stringWithFormat:@"%@%d", @"isIphone3: ", [DCDevice isIphone3]];
    
    //iPad/iPad2/iPad miniであれば1が返る
    self.labelIpad.text = [NSString stringWithFormat:@"%@%d", @"isIpad: ", [DCDevice isIpad]];
    
    //新しい iPad以降であれば1が返る
    self.labelIpadRetina.text = [NSString stringWithFormat:@"%@%d", @"isIpadRetina: ", [DCDevice isIpadRetina]];
    
    //4インチ端末であれば1が返る
    self.label4inch.text = [NSString stringWithFormat:@"%@%d", @"is4inch: ", [DCDevice is4inch]];
    
    //iOS6以降であれば1が返る
    self.labeliOS6.text = [NSString stringWithFormat:@"%@%d", @"isiOS6: ", [DCDevice isIOS6]];
    
    //言語設定が日本語であれば1が返る
    self.labelLanguage.text = [NSString stringWithFormat:@"%@%d", @"isJapaniese: ", [DCDevice isJapaneseLanguage]];
}

@end
