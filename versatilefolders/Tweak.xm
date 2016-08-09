#import <UIKit/UIKit.h>
#import "headers/CrystalFoldersColors.h"

// CrystalFolders (VersatileFolders) © 2015 - 2016 iKilledAppl3 //

// Core code for CrystalFolders/VersatileFolders//

// Do as you wish //

// Preferences plist //

#define plist @"/var/mobile/Library/Preferences/com.ikilledappl3.crystalfolders~prefs.plist" 

// Keys //

static BOOL RED = NO;
static BOOL BLUE = NO;
static BOOL DARK = NO;
static BOOL SFTBLU = NO;
static BOOL YELLOW = NO;
static BOOL MAGENTA = NO;
static BOOL ORANGE = NO;
static BOOL PRODUCTRED = NO;

%hook SBIconBlurryBackgroundView

- (void)setWallpaperColor:(struct CGColor *)arg1 phase:(struct CGSize)arg2
{
	  if(RED == YES)
	  {
		    
	   %orig(RED_Folders, arg2);

	  }
	    else if(BLUE == YES)
	  {
		    
	    %orig(BLUE_Folders, arg2);

	  }
	    else if(DARK == YES)
	  {
		    
	    %orig(DARK_Folders, arg2);

	  }
	     else if(SFTBLU == YES)
	  {
		    
	    %orig(SFTBLU_Folders, arg2);

	  }
	     else if(YELLOW == YES)
	  {
		    
	    %orig(YELLOW_Folders, arg2);

	  }
	     else if(MAGENTA == YES)
	  {
		    
	    %orig(MAGENTA_Folders, arg2);

	  }
	  
	  else if(ORANGE == YES)

	  {
		    
	    %orig(ORANGE_Folders, arg2);

	  }

	  else if(PRODUCTRED == YES)

	  {
		    
	    %orig(PRODUCTRED_Folders, arg2);

	  }
		  
	  else 
		    {
		    %orig(arg1, arg2);
		    }
	  
}
%end

%hook SBFolderBackgroundView

-(BOOL)_shouldUseDarkBackground {
       if(DARK == YES)
       {
		 return TRUE;
       }
       else
       {
		 return %orig;
       }
}
%end

// Prefs Area //

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

%ctor 

{

	  CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.ikilledappl3.crystalfolders~prefs-changed"), NULL, CFNotificationSuspensionBehaviorCoalesce);

		    loadPrefs();

}
