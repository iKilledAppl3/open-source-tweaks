//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>
#import "Mousai2Global.h"

@interface Mousai2ListController: HBListController {
}
@end

@implementation Mousai2ListController

+ (NSString *)hb_specifierPlist {
	return @"Mousai2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:177.0/255.0 green:66.0/255.0 blue:255.0/255.0 alpha:1.0];
}

- (void)loadView {
    [super loadView];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(shareTapped)];
}
- (void)shareTapped {
	NSString *text = [NSString stringWithFormat:TRANSLATED_TEXTS(@"SHARE_TEXT"), @"@iKilledAppl3"];

	if ([UIActivityViewController alloc]) {
		UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[text] applicationActivities:nil];
		[(UINavigationController *)[super navigationController] presentViewController:activityViewController animated:YES completion:NULL];
	}else {
		//awesomeness
	}
}

@end
// vim:ft=objc
