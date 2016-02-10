//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>

@interface Mousai2AppleMusicListController: HBListController {
}
@end

@implementation Mousai2AppleMusicListController

+ (NSString *)hb_specifierPlist {
	return @"AppleMusicM2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:255.0/255.0 green:45.0/255.0 blue:85.0/255.0 alpha:1.0];
}


-(void)openSongCountTweak {
    
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"cydia://package/com.noeliel.songcount"]];
    
    
}

-(void)music{

  system ("killall -9 Music");
}
@end

// vim:ft=objc


