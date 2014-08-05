//
//  WebViewController.h
//  MeetMeUp
//
//  Created by Efrén Reyes Torres on 8/4/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSURL *homepageURL;
@end
