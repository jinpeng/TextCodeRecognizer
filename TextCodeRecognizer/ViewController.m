//
//  ViewController.m
//  TextCodeRecognizer
//
//  Created by jinpeng on 2019/7/12.
//  Copyright © 2019 jinpeng. All rights reserved.
//

#import "ViewController.h"
#import "TextCodeScanViewController.h"

@interface ViewController ()<TextCodeScanViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *activationCodeTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [NSThread sleepForTimeInterval:2];
}

- (IBAction)ScanStart:(id)sender {
    TextCodeScanViewController *tcsVC = [[TextCodeScanViewController alloc] init];
    tcsVC.delegate = self;
    if (self.navigationController) {
        NSLog(@"navigationController is valid.");
    }
    [self.navigationController pushViewController:tcsVC animated:YES];
}

/**
 Callback
 
 @param result Recognized text code
 */
- (void)recognitionComplete:(NSString *)result {
    NSLog(@"%@", result);
    [self.activationCodeTextField setText:result];
}

@end
