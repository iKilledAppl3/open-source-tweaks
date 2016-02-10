//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>

@interface Mousai2YTMusicListController: HBListController {
}
@end

@implementation Mousai2YTMusicListController

+ (NSString *)hb_specifierPlist {
	return @"YTMusicM2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:230.0/255.0 green:22.0/255.0 blue:32.0/255.0 alpha:1.0];
}

-(void)YTMusic{

  system ("killall -9 YouTubeMusic");
}
@end

// vim:ft=objc
