//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>


@interface Mousai2SpotifyListController: HBListController {

}
@end

@implementation Mousai2SpotifyListController

+ (NSString *)hb_specifierPlist {
	return @"SpotifyM2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:25.0/255.0 green:219.0/255.0 blue:84.0/255.0 alpha:1.0];
}

-(void)spotify{

  system ("killall -9 Spotify");
}
@end

// vim:ft=objc
