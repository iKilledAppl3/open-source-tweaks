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

#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

#include <substrate.h>
@class SBFolderBackgroundView; @class SBIconBlurryBackgroundView; 
static void (*_logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$)(_LOGOS_SELF_TYPE_NORMAL SBIconBlurryBackgroundView* _LOGOS_SELF_CONST, SEL, struct CGColor *, struct CGSize); static void _logos_method$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(_LOGOS_SELF_TYPE_NORMAL SBIconBlurryBackgroundView* _LOGOS_SELF_CONST, SEL, struct CGColor *, struct CGSize); static BOOL (*_logos_orig$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground)(_LOGOS_SELF_TYPE_NORMAL SBFolderBackgroundView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground(_LOGOS_SELF_TYPE_NORMAL SBFolderBackgroundView* _LOGOS_SELF_CONST, SEL); 

#line 25 "Tweak.xm"



static void _logos_method$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(_LOGOS_SELF_TYPE_NORMAL SBIconBlurryBackgroundView* _LOGOS_SELF_CONST self, SEL _cmd, struct CGColor * arg1, struct CGSize arg2) {
	  if(RED == YES)
	  {
		    
	   _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, RED_Folders, arg2);

	  }
	    else if(BLUE == YES)
	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, BLUE_Folders, arg2);

	  }
	    else if(DARK == YES)
	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, DARK_Folders, arg2);

	  }
	     else if(SFTBLU == YES)
	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, SFTBLU_Folders, arg2);

	  }
	     else if(YELLOW == YES)
	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, YELLOW_Folders, arg2);

	  }
	     else if(MAGENTA == YES)
	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, MAGENTA_Folders, arg2);

	  }
	  
	  else if(ORANGE == YES)

	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, ORANGE_Folders, arg2);

	  }

	  else if(PRODUCTRED == YES)

	  {
		    
	    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, PRODUCTRED_Folders, arg2);

	  }
		  
	  else 
		    {
		    _logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$(self, _cmd, arg1, arg2);
		    }
	  
}




static BOOL _logos_method$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground(_LOGOS_SELF_TYPE_NORMAL SBFolderBackgroundView* _LOGOS_SELF_CONST self, SEL _cmd) {
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

static __attribute__((constructor)) void _logosLocalCtor_c0df337f(int argc, char **argv, char **envp) 

{

	  CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.ikilledappl3.crystalfolders~prefs-changed"), NULL, CFNotificationSuspensionBehaviorCoalesce);

		    loadPrefs();

}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconBlurryBackgroundView = objc_getClass("SBIconBlurryBackgroundView"); if (_logos_class$_ungrouped$SBIconBlurryBackgroundView) {MSHookMessageEx(_logos_class$_ungrouped$SBIconBlurryBackgroundView, @selector(setWallpaperColor:phase:), (IMP)&_logos_method$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$, (IMP*)&_logos_orig$_ungrouped$SBIconBlurryBackgroundView$setWallpaperColor$phase$);} else {HBLogError(@"logos: nil class %s", "SBIconBlurryBackgroundView");}Class _logos_class$_ungrouped$SBFolderBackgroundView = objc_getClass("SBFolderBackgroundView"); if (_logos_class$_ungrouped$SBFolderBackgroundView) {MSHookMessageEx(_logos_class$_ungrouped$SBFolderBackgroundView, @selector(_shouldUseDarkBackground), (IMP)&_logos_method$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground, (IMP*)&_logos_orig$_ungrouped$SBFolderBackgroundView$_shouldUseDarkBackground);} else {HBLogError(@"logos: nil class %s", "SBFolderBackgroundView");}} }
#line 146 "Tweak.xm"
