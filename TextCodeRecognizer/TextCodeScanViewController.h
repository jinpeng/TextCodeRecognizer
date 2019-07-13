//
//  TextCodeScanViewController.h
//  TextCodeRecognizer
//
//  Created by jinpeng on 2019/7/13.
//  Copyright © 2019 jinpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TextCodeScanViewControllerDelegate <NSObject>

/**
 Callback for text code recognition success
 @param result text code
 */
- (void)recognitionComplete:(NSString *)result;

@end

@interface TextCodeScanViewController : UIViewController

@property(nonatomic, weak) id<TextCodeScanViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
