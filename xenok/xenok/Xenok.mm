//
//  Xenok "Xenok.mm (Preferences) core code"
//
//  Created by iKilledAppl3 on 4/26/15.
//  Copyright (c) 2015 ToxicAppl3 Inc. All rights reserved.
// 
// Code is messy but it works for me.
//
// HBImageTableCell is borrowed from HASHBANG PRODUCTIONS "@hbangws (Twitter)" (open sourced code on Github)
//
//

#import "header/PSListController.h"
#import "header/PSViewController.h"
#import <UIKit/UIKit.h>
#import "header/HBImageTableCell.m"

@interface XenokListController: PSListController {
}
@end

@interface ShowCaseListController: PSListController {
}
@end

@interface XCreditsListController: PSListController {
}
@end

@interface SpringBoardListController: PSListController {
}
@end

@interface MobileCameraListController: PSListController {
}
@end

@interface CCListController: PSListController {
}
@end

@interface ClockListController: PSListController {
}
@end

@interface iPodSettingsListController: PSListController {
}
@end

@implementation XenokListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Xenok" target:self] retain]; 
       }
	return _specifiers;
}
- (void)loadView {
    [super loadView];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(shareTapped)];
}
- (void)shareTapped {
	NSString *text = @"I'm using #Xenok by @iKilledAppl3 to take control of my device!";

	if ([UIActivityViewController alloc]) {
		UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[text] applicationActivities:nil];
		[(UINavigationController *)[super navigationController] presentViewController:activityViewController animated:YES completion:NULL];
	}else {
		//awesomeness
	}
}
- (void)donate {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.amazon.com/gp/product/B004LLIKVU/gcrnsts?ie=UTF8&qid=1407245584&ref_=sr_1_1&s=gift-cards&sr=1-1"]];

}
@end

@implementation XCreditsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Xenok-Credits" target:self] retain];
	}
	return _specifiers;
}
- (void)mailto {
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:ipodnewbee234@icloud.com?subject=Xenok%20Support/Request"]];

}
- (void)followMe:(id)specifier {
	if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]]) {
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tweetbot:///user_profile/iKilledAppl3"]];
	}

	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]]) {
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitterrific:///profile?screen_name=iKilledAppl3"]];
	}

	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]]) {
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tweetings:///user?screen_name=iKilledAppl3"]];
	}

	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]]) {
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=iKilledAppl3"]];
	}

	else {
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/iKilledAppl3"]];
	}
}
@end

@implementation SpringBoardListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SpringBoard-Stuff" target:self] retain];
	}
	return _specifiers;
}
- (void)respring {
system("killall -9 SpringBoard"); 

}
@end

@implementation MobileCameraListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"ShowCaseNC" target:self] retain];
	}
	return _specifiers;
}
- (void)respring {
system("killall -9 SpringBoard"); 

}
@end

@implementation CCListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"CC-Settings" target:self] retain]; 
       }
	return _specifiers;
}
- (void)respring {
system("killall -9 SpringBoard"); 

}
@end

@implementation ShowCaseListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"ShowCaseLS" target:self] retain]; 
       }
	return _specifiers;
}
- (void)respring {
system("killall -9 SpringBoard"); 

}

-(void)save
{
    [self.view endEditing:YES];
}
@end

@implementation ClockListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Applications-Xenok" target:self] retain]; 
       }
	return _specifiers;
}
- (void)respring {
system("killall -9 SpringBoard"); 

}
@end

@implementation iPodSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Extras-Xenok" target:self] retain]; 
       }
	return _specifiers;
}
- (void)respring {
system("killall -9 SpringBoard");
 
}
@end
// vim:ft=objc
