//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>

@interface Mousai2PandoraListController: HBListController {
}
@end

@implementation Mousai2PandoraListController

+ (NSString *)hb_specifierPlist {
	return @"PandoraM2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:46.0/255.0 green:63.0/255.0 blue:152.0/255.0 alpha:1.0];
}

-(void)pandora{

  system ("killall -9 Pandora");
}
@end

// vim:ft=objc
