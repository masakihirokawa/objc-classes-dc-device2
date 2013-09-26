DCDevice
=======================

iPhone/iPadのデバイス情報を判別する「DCDevice」クラスです。

##主な機能

1. iOSバージョンの取得
2. iPhone 5であるかの判別
3. iPhone 4/4Sであるかの判別
4. iPhone 3G/3GSであるかの判別
5. iPadであるかの判別
6. iPad Retina端末であるかの判別
7. iOS6以降であるかの判別
8. iOS7以降であるかの判別
9. 4インチ端末であるかの判別
10. ユーザー言語が日本語か否かの判別

##サンプルソースコード

```objective-c
- (void)setDeviceInformation
{
  //デバイス名の取得
  self.labelIOSDevice.text = [Device iOSDevice];
  
  //iPhone5であるか
  self.labeliPhone5.text = [NSString stringWithFormat:@"%@%d", @"isiPhone5: ", [Device isiPhone5]];
  
  //iPhone4/4Sであるか
  self.labeliPhone4.text = [NSString stringWithFormat:@"%@%d", @"isiPhone4: ", [Device isiPhone4]];
  
  //iPhone3G/3GSであるか
  self.labeliPhone3.text = [NSString stringWithFormat:@"%@%d", @"isiPhone3: ", [Device isiPhone3]];
  
  //iPad/iPad2/iPad miniであるか
  self.labelIpad.text = [NSString stringWithFormat:@"%@%d", @"isIpad: ", [Device isIpad]];
  
  //新しい iPad以降であるか
  self.labelIpadRetina.text = [NSString stringWithFormat:@"%@%d", @"isIpadRetina: ", [Device isIpadRetina]];
  
  //4インチ端末であれば1が返る
  self.label4inch.text = [NSString stringWithFormat:@"%@%d", @"is4inch: ", [Device is4inch]];
  
  // iOS 6以降であれば1が返る
  self.labeliOS6.text = [NSString stringWithFormat:@"%@%d", @"isIOS6: ", [Device isIOS6]];
  
  // iOS 7以降であれば1が返る
  self.labeliOS7.text = [NSString stringWithFormat:@"%@%d", @"isIOS7: ", [Device isIOS7]];
  
  // 言語設定が日本語であれば1が返る
  BOOL isJapaniese = [DCDevice isJapaneseLanguage];
}
```
