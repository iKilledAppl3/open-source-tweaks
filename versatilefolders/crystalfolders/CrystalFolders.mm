#import "header/PSListController.h"
#import "header/PSViewController.h"
#import <UIKit/UIKit.h>
#import "header/HBImageTableCell.m"

@interface CrystalFoldersListController: PSListController {
}
@end

@implementation CrystalFoldersListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"CrystalFolders" target:self] retain];
	}
	return _specifiers;
}

-(void)respring{

system("killall -9 SpringBoard");
}
@end

// vim:ft=objc
