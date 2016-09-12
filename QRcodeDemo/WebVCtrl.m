//
//  WebVCtrl.m
//  QRcodeDemo
//
//  Created by 光 on 16/9/12.
//  Copyright © 2016年 光. All rights reserved.
//

#import "WebVCtrl.h"

@interface WebVCtrl ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebVCtrl

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    
    
//    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    self.webView.delegate = self;
//    [self.view addSubview:self.webView];
    
    NSURL *url = [NSURL URLWithString:self.urlString];//@"https://www.baidu.com"];//@"https://cn.bing.com/"];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}
#pragma mark - dealloc
- (void)dealloc
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)back
{
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidFinishLoad");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    NSLog(@"didFailLoadWithError");
}


@end
