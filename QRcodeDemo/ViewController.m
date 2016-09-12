//
//  ViewController.m
//  QRcodeDemo
//
//  Created by 光 on 16/9/12.
//  Copyright © 2016年 光. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeViewController.h"


@interface ViewController () <QRCodeViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)QRcodeAction:(UIButton *)sender {
    
    QRCodeViewController *qrVc = [[QRCodeViewController alloc] init];
    qrVc.delegate = self;
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:qrVc];
    
    
    // 设置扫描完成后的回调
    //    __weak typeof (self) wSelf = self;
    [qrVc setCompletionWithBlock:^(NSString *resultAsString) {
//        [wSelf.navigationController popViewControllerAnimated:NO];
//        [[[UIAlertView alloc] initWithTitle:@"" message:resultAsString delegate:self cancelButtonTitle:@"好的" otherButtonTitles: nil] show];

//        WebVCtrl *webvc = [[WebVCtrl alloc] init];
//        webvc.urlString = [resultAsString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
//        [wSelf.navigationController pushViewController:webvc animated:YES];
    }];
    
//    [self presentViewController:nav animated:YES completion:nil];
    [self.navigationController pushViewController:qrVc animated:YES];
}

#pragma mark - 代理方法
- (void)reader:(QRCodeViewController *)reader didScanResult:(NSString *)result
{
    NSLog(@"%@",result);
//    [self dismissViewControllerAnimated:NO completion:^{
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"QRCodeController" message:result delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//        [alert show];
//    }];
    
}

@end
