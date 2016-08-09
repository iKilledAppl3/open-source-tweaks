#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>
#import "headers/CrystalFoldersColors.h"









#define plist @"/var/mobile/Library/Preferences/com.ikilledappl3.crystalfolders~prefs.plist" 



static BOOL RED = NO;
static BOOL BLUE = NO;
static BOOL DARK = NO;
static BOOL SFTBLU = NO;
static BOOL YELLOW = NO;
static BOOL MAGENTA = NO;
static BOOL ORANGE = NO;
static BOOL PRODUCTRED = NO;

#include <logos/logos.h>
#include <substrate.h>
@class SBIconBlurryBackgroundView; @class SBFolderBackgroundView; 
static void (*_logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$)(SBIconBlurryBackgroundView*, SEL, CGRect, CGImageRef, CGColorRef); static void _logos_method$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(SBIconBlurryBackgroundView*, SEL, CGRect, CGImageRef, CGColorRef); static BOOL (*_logos_orig$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground)(SBFolderBackgroundView*, SEL); static BOOL _logos_method$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground(SBFolderBackgroundView*, SEL); 

#line 25 "Tweak.xm"

	

static void _logos_method$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(SBIconBlurryBackgroundView* self, SEL _cmd, CGRect arg1, CGImageRef arg2, CGColorRef arg3)  {
	  if(RED == YES)
	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, RED_Folders, arg3);

	  }
	    else if(BLUE == YES)
	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, BLUE_Folders, arg3);

	  }
	    else if(DARK == YES)
	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, DARK_Folders, arg3);

	  }
	     else if(SFTBLU == YES)
	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, SFTBLU_Folders, arg3);

	  }
	     else if(YELLOW == YES)
	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, YELLOW_Folders, arg3);

	  }
	     else if(MAGENTA == YES)
	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, MAGENTA_Folders, arg3);

	  }
	  
	  else if(ORANGE == YES)

	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, ORANGE_Folders, arg3);

	  }

	  else if(PRODUCTRED == YES)

	  {
		    
		  _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg2, PRODUCTRED_Folders, arg3);

	  }
		  
	  else 
		    {
				_logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$(self, _cmd, arg1, arg2, arg3);
		    }
	  
}




static BOOL _logos_method$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground(SBFolderBackgroundView* self, SEL _cmd) {
       if(DARK == YES)
       {
		 return TRUE;
       }
       else
       {
		 return _logos_orig$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground(self, _cmd);
       }
}




static void loadPrefs()

{

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:plist];

    if(prefs)

    {					   
	
RED = ( [prefs objectForKey:@"RED"] ? [[prefs objectForKey:@"RED"] boolValue] : RED );

BLUE = ( [prefs objectForKey:@"BLUE"] ? [[prefs objectForKey:@"BLUE"] boolValue] : BLUE );

DARK = ( [prefs objectForKey:@"DARK"] ? [[prefs objectForKey:@"DARK"] boolValue] : DARK );

SFTBLU	= ( [prefs objectForKey:@"SFTBLU"] ? [[prefs objectForKey:@"SFTBLU"] boolValue] : SFTBLU );

YELLOW	= ( [prefs objectForKey:@"YELLOW"] ? [[prefs objectForKey:@"YELLOW"] boolValue] : YELLOW );

MAGENTA  = ( [prefs objectForKey:@"MAGENTA"] ? [[prefs objectForKey:@"MAGENTA"] boolValue] : MAGENTA );

ORANGE = ( [prefs objectForKey:@"ORANGE"] ? [[prefs objectForKey:@"ORANGE"] boolValue] : ORANGE );

PRODUCTRED = ( [prefs objectForKey:@"PRODUCTRED"] ? [[prefs objectForKey:@"PRODUCTRED"] boolValue] : PRODUCTRED );


 }

}

static __attribute__((constructor)) void _logosLocalCtor_c0df337f() 

{

	  CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.ikilledappl3.crystalfolders~prefs-changed"), NULL, CFNotificationSuspensionBehaviorCoalesce);

		    loadPrefs();

}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconBlurryBackgroundView = objc_getClass("SBIconBlurryBackgroundView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconBlurryBackgroundView, @selector(setWallpaperBackgroundRect:forContents:withFallbackColor:), (IMP)&_logos_method$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$, (IMP*)&_logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperBackgroundRect$forContents$withFallbackColor$);Class _logos_class$_ungrouped$SBFolderBackgroundView = objc_getClass("SBFolderBackgroundView"); MSHookMessageEx(_logos_class$_ungrouped$SBFolderBackgroundView, @selector(_shouldUseDarkBackground), (IMP)&_logos_method$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground, (IMP*)&_logos_orig$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground);} }
#line 146 "Tweak.xm"
