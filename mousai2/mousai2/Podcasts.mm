//#import "Mousai2Tint.h"//
#import <CepheiPrefs/HBListController.h>
#import <CepheiPrefs/HBTintedTableCell.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBTwitterCell.h>
#import <CepheiPrefs/HBImageTableCell.h>
#import <CepheiPrefs/HBPackageNameHeaderCell.h>

@interface Mousai2PodcastsListController:HBListController {
}
@end

@implementation Mousai2PodcastsListController

+ (NSString *)hb_specifierPlist {
        return @"PodcastsM2";
}

+ (UIColor *)hb_tintColor {
 return [UIColor colorWithRed:114.0/255.0 green:36.0/255.0 blue:219.0/255.0 alpha:1.0];
}

-(void)podcasts{

  system ("killall -9 Podcasts");

}

@end

// vim:ft=objc
