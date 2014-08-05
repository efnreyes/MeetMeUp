//
//  WebViewController.m
//  MeetMeUp
//
//  Created by Efrén Reyes Torres on 8/4/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *forwardButton;

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:self.homepageURL];
    [self.webView loadRequest:urlRequest];

}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    [self checkStatusForButtons];
}

- (IBAction)onBackButtonPressed:(id)sender {
    [self.webView goBack];
}

- (IBAction)onForwardButtonPressed:(id)sender {
    [self.webView goForward];
}

- (void) checkStatusForButtons {
    if ([self.webView canGoBack]) {
        [self.backButton setEnabled:TRUE];
    }else{
        [self.backButton setEnabled:FALSE];
    }
    if ([self.webView canGoForward]) {
        [self.forwardButton setEnabled:TRUE];
    }else{
        [self.forwardButton setEnabled:FALSE];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
