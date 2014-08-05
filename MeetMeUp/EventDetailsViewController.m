//
//  EventDetailsViewController.m
//  MeetMeUp
//
//  Created by Efrén Reyes Torres on 8/4/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "EventDetailsViewController.h"
#import "WebViewController.h"

@interface EventDetailsViewController ()
@property (strong, nonatomic) IBOutlet UILabel *eventName;
@property (strong, nonatomic) IBOutlet UILabel *RSVPCount;
@property (strong, nonatomic) IBOutlet UILabel *hostingGroup;
@property (strong, nonatomic) IBOutlet UILabel *eventDesc;
@end

@implementation EventDetailsViewController

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
    NSError *err = nil;
    NSDictionary *group = self.event[@"group"];
    self.eventName.text = self.event[@"name"];
    self.RSVPCount.text = [NSString stringWithFormat:@"Yes: %@ Maybe: %@", self.event[@"yes_rsvp_count"], self.event[@"maybe_rsvp_count"]];
    self.hostingGroup.text = [NSString stringWithFormat:@"Group name: %@\nJoin mode: %@\nWho: %@", group[@"name"], group[@"join_mode"], group[@"who"]];
    NSString *html = [NSString stringWithFormat:@"<html><body>%@</body></html>", self.event[@"description"]];
    self.eventDesc.attributedText = [[NSAttributedString alloc]
                                     initWithData: [html dataUsingEncoding:NSUTF8StringEncoding]
                                     options: @{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType }
                                     documentAttributes: nil
                                     error: &err];
    if(err)
        NSLog(@"Unable to parse label text: %@", err);


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showHomePageSegue"]) {
        WebViewController *wvc = (WebViewController *) segue.destinationViewController;
        wvc.homepageURL = [NSURL URLWithString: self.event[@"event_url"]];
    }
}

@end
