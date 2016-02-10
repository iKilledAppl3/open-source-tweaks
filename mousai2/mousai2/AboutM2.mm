//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBAboutListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>
#import <MessageUI/MessageUI.h>
#import <MobileGestalt/MobileGestalt.h>

@interface Mousai2AboutListController: HBListController <MFMailComposeViewControllerDelegate> {
}
@end

@implementation Mousai2AboutListController

+ (NSString *)hb_specifierPlist {
	return @"AboutM2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:177.0/255.0 green:66.0/255.0 blue:255.0/255.0 alpha:1.0];
}

-(void)emailiKilledAppl3 {

MFMailComposeViewController *mailCompose = [[MFMailComposeViewController alloc] init];

[mailCompose setSubject:@"Mousai 2 Support &/or Feature Request"];
     
[mailCompose setToRecipients:[NSArray arrayWithObjects:@"iKilledAppl3 <ipodnewbee234@icloud.com>" ,nil]];
	
NSString *deviceType = nil, *iOSVersion = nil, *buildNumber = nil;
	
		//Detects what iOS version and which device the user has
		//Really helpful especailly with logs!
	
	deviceType = (NSString *)MGCopyAnswer(kMGProductType);
	iOSVersion = (NSString *)MGCopyAnswer(kMGProductVersion);
	buildNumber = (NSString *)MGCopyAnswer(kMGBuildVersion);
	
	
[mailCompose setMessageBody:[NSString stringWithFormat:@"Hello Developer I am writing this email in regards to see a feature that I have in mind might become a reality or I have an issue with the tweak so this is the reason why I am emailing you. \n\nCurrent Device Type: %@, iOS Version: %@ (%@)", deviceType, iOSVersion, buildNumber] isHTML:NO];
	
	 
 [mailCompose addAttachmentData:[NSData dataWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ikilledappl3.mousai2.plist"] mimeType:@"application/xml" fileName:@"Mousai2.plist"]; system("/usr/bin/dpkg -l >/tmp/dpkgl.log");
	 
	 [mailCompose addAttachmentData:[NSData dataWithContentsOfFile:@"/tmp/dpkgl.log"] mimeType:@"text/plain" fileName:@"dpkgl.txt"];
    
    
	 //Present email view on the users device
  [self.navigationController presentViewController:mailCompose animated:YES completion:nil];
    mailCompose.mailComposeDelegate = self;
    [mailCompose release];
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [self dismissViewControllerAnimated: YES completion: nil];
}


-(void)donate { 
 
   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.com/us/cgi-bin/webscr?cmd=_flow&SESSION=fvtaGZl4UsJi0a-206u84dn4H5De8b2AkHQb5mMrHDp4cU-cl4q7RI5rzYS&dispatch=5885d80a13c0db1f8e263663d3faee8d64ad11bbf4d2a5a1a0d303a50933f9b2"]];
}

@end
// vim:ft=objc
