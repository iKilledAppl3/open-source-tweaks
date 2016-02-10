#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define plist @"/var/mobile/Library/Preferences/com.ikilledappl3.mousai~prefs.plist"

static BOOL ConnectRestricted = NO;
static BOOL HideStatusBar = NO;
static BOOL HideArrowButton = NO;
static BOOL RadioRecents = NO;
static BOOL unlimitedRadioSkips = NO;
static BOOL HideRadioTab = NO;
static BOOL hideSubscriptionContent = NO;
static BOOL alwaysShowMiniPlayer = NO;
static BOOL bookmarkHistory = NO;
static BOOL HideRecentlyAdded = NO;
static BOOL PlaybackHistory = NO;
static BOOL HideArtistArtwork = NO;
static BOOL DisableBlur = NO;
static BOOL hidesAds = NO;
static BOOL autoRotateMusic = NO;
static BOOL hidesStatusBar = NO;

%hook UIViewController
-(bool)prefersStatusBarHidden{
      if (hidesStatusBar == YES)
      {
	  return TRUE;
      }
	   else 
      {
	   return %orig;
      }
}
%end

%hook UIWindow
-(BOOL)_shouldAutorotateToInterfaceOrientation:(int)arg1{
	if (autoRotateMusic == YES)
	{
		return 1;
	}
		else
	{
		return %orig;
	}
}


-(BOOL)_shouldAutorotateToInterfaceOrientation:(int)arg1:(BOOL)arg2:(BOOL*)arg3{
	if (autoRotateMusic == YES)
	{
		return 1;
	}
		else
	{
		return %orig;
	}
}
%end

%hook RURadioAdSlot
-(id)adSlot{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id) initWithAdSlot:(id)arg1{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)followingSongData{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)previousSongData{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)stationData{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)adSlot:(id)arg1:(id)arg2:(id)arg3{
	if (hidesAds == YES)
	{
		arg1 = nil;
		arg2 = nil;
		arg3 = nil;
	}
		else
	{
		%orig;
	}
}

-(void)wasPreparedAsStationEntryAdSlot:(BOOL)arg1{
	if (hidesAds == YES)
	{
		arg1 = FALSE;
	}
		else
	{
		%orig(arg1);
	}
}

-(id)adTracks{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setFollowingTracks:(id)arg1{
	if (hidesAds == YES)
	{
		%orig(arg1);
	}
}

-(BOOL)isGatewayAdSlot{
	if (hidesAds == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(void)setGatewayAdSlot:(BOOL)arg1{
	if (hidesAds == YES)
	{
		arg1 = FALSE;
	}
		else
	{
		%orig(arg1);
	}
}

-(void)setStationData:(id)arg1{
	if (hidesAds == YES)
	{
		%orig(arg1);
	}
}

-(void)setPreviousSongData:(id)arg1{
	if (hidesAds == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

-(void)didFinishPlaybackOfAdTracks:(id)arg1:(int)arg2{
	if (hidesAds == YES)
	{
		%orig;
	}
}

-(BOOL)wasPreparedAsStationEntryAdSlot{
	if (hidesAds == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(id)identifier{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)init{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)dealloc{
	if (hidesAds == YES)
	{
		%orig;
	}
}
%end

%hook RURadioQueueFeeder
-(id)preparedAdSlotForRadioTrack:(id)arg1{
	if (hidesAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)_adSlotAdTracksDidChangeNotification:(id)arg1{
	if (hidesAds == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

-(void)_setAdSlot:(id)arg1:(id)arg2{
	if (hidesAds == YES)
	{
		%orig(arg1, arg2);
	}
}
%end

%hook MusicLibraryRecentlyAddedCollectionViewConfiguration
-(id)initWithEntityLimit:(unsigned long long)arg1{
	if (HideRecentlyAdded == YES)
	{
		return 0;
	}
		else
	{
		return %orig;
	}
}
%end

%hook MusicDefaults
-(BOOL)shouldForceShowingSubscriberTabs{
		if (hideSubscriptionContent == YES)
		{
			return FALSE;
		}
			else
		{
			return %orig;
		}
}

- (BOOL)hasUserRequestedSubscriptionHidden{
		if (hideSubscriptionContent == YES)
		{
			return TRUE;
		}
			else
		{
			return %orig;
		}
}
%end

%hook MPUBlurEffectView
- (void)layoutSubviews{
	if (DisableBlur == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}

- (id)blurImageView{
	if (DisableBlur == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

- (id)blurView{
	if (DisableBlur == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

- (void)setBlurImageView:(id)arg1{
	if (DisableBlur == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig;
	}
}

- (void)setBlurView:(id)arg1{
	if (DisableBlur == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig;
	}
}
%end

%hook MPMediaItemCollection
-(id)albumArtistArtworkCatalog{
		if (HideArtistArtwork == YES)
		{
			  return nil;
		}
			else
		{
			return %orig;
		}
}

-(id)artistArtworkCatalog{
		if (HideArtistArtwork == YES)
		{
			  return nil;
		}
			else
		{
			return %orig;
		}
}
%end

%hook MPMediaLibrary
-(id)playbackHistoryPlaylist{
		if (PlaybackHistory == YES)
		{
			  return nil;
		}
			else
		{
			return %orig;
		}
}
%end

%hook MPMediaQuery
+(id)playbackHistoryPlaylist{
		if (PlaybackHistory == YES)
		{
			  return nil;
		}
			else
		{
			return %orig;
		}
}
%end


%hook MusicTabBarController 
-(void)setMiniPlayerVisible:(BOOL)arg1{
 if (alwaysShowMiniPlayer == YES)
    {
	  arg1 = TRUE;
    }
	   else
    {
	%orig;
    }
}

-(BOOL)isMiniPlayerVisisble{
 if (alwaysShowMiniPlayer == YES)
    {
	  return TRUE;
    }
	   else
    {
	  return %orig;
    }
}
%end

%hook MPMediaItem
-(BOOL)rememberBookmarkTime{
		if (bookmarkHistory == YES)
		{
			return TRUE;
		}
			else
		{
			return %orig;
		}
}
%end

%hook MusicJSUserInterfaceStatusController
-(BOOL)canShowConnect{
		if (ConnectRestricted == YES)
		{
			return FALSE;
		}
			else
		{
			return %orig;
		}
}

-(BOOL)canShowSubscriptionContent{
		if (hideSubscriptionContent == YES)
		{
			return FALSE;
		}
			else
		{
			return %orig;
		}
}

-(BOOL)canShowRadio{
	if(HideRadioTab == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}
%end		


%hook MusicUserInterfaceStatusController
-(bool)_isConnectRestricted{
		if (ConnectRestricted == YES)
		{
			return TRUE;
		}
			else
		{
			return %orig;
		}
}

-(BOOL)canShowConnect{
		if (ConnectRestricted == YES)
		{
			return FALSE;
		}
			else
		{
			return %orig;
		}
}

-(BOOL)canShowSubscriptionContent{
		if (hideSubscriptionContent == YES)
		{
			return FALSE;
		}
			else
		{
			return %orig;
		}
}

-(BOOL)canShowRadio{
	if(HideRadioTab == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}
%end		


%hook RadioAvailabilityController
-(BOOL)isRadioAvailable{
	if(HideRadioTab == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}
%end

%hook RadioStationSkipController
-(int)numberOfAvailableSkips{
		if (unlimitedRadioSkips == YES)
	{
		return 999999;
	}
		else
	{
		return %orig;
	}
	
}

-(BOOL)hasSkipsEnabled{
	if(unlimitedRadioSkips == YES)
	{
		return FALSE;
	}
		else

	{
		return %orig;

	}

}
%end


%hook RadioMutablePlaybackContext
-(void)setNumberOfSkipsUsed:(int)arg1{
		if (unlimitedRadioSkips == YES)
		{
			arg1 = 0;

		}
			else
		{
			%orig(arg1);
		}

}
%end

%hook RadioPlaybackContext
-(int)numbersOfSkipsUsed{
	if (unlimitedRadioSkips ==  YES)
	{
		return 0;
	}
		else
	{
		return %orig;
	}

}
%end

%hook RadioRecentStationsController
-(id)init{
	if (RadioRecents == YES)
	{
		return nil;
	}
		else
	{ 
		return %orig;
	}

}

-(id)stations{
	if (RadioRecents == YES)
	{
		return nil;
	}
		else
	{ 
		return %orig;
	}

}
%end

%hook MusicNowPlayingFloatingButton

-(void)setGlyphImage:(id)arg1{

	if (HideArrowButton == YES)

	{

		arg1 = nil;

	}

		else

	{

		%orig(arg1);

	}

}



-(id)initWithFrame:(CGRect)arg1{
	if (HideArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(bool)pointInside:(CGRect)arg1:(id)arg2

{

	return HideArrowButton ? FALSE: %orig(arg1,arg2);

}

-(void)layoutSubviews{

	if (HideArrowButton == YES)

	{

		nil;

	}

		else

	{

		%orig;

	}

}



-(void)setHighlighted:(bool)arg1{
	if (HideArrowButton == YES)
	{
		arg1 = FALSE;
	}
		else
	{
		%orig(arg1);
	}
}

-(id)effectView{
	if (HideArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setEffectView:(id)arg1{
	if (HideArrowButton == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

-(long long)effect
{

	return HideArrowButton ? 0 : %orig;

}



-(void)setEffect:(long long)arg1{
	if (HideArrowButton == YES)
	{
		arg1 = nil;
	}
		else
	{
		 %orig(arg1);
	}
}

-(void)setGlyphImageOffset:(UIOffset)arg1{
	if (HideArrowButton == YES)
	{
		 nil;
	}
		else
	{
		%orig(arg1);
	}
}



-(id)glyphImage

{

	return HideArrowButton ? NULL : %orig;

}

-(bool)hideShadow{

	if(HideArrowButton == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(id)glyphImageView{
	if (HideArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setGlyphImageView:(id)arg1{
	if (HideArrowButton == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

-(id)backdropGroupName{
	if (HideArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setBackdropGroupName:(id)arg1{
	if (HideArrowButton == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}
%end

%hook MusicNowPlayingPresentationController
-(bool)_shouldChangeStatusBarViewController{
	if (HideStatusBar == YES)
	{
		return TRUE;
	}
		else
	{
		return %orig;
	}
}
-(id)nowPlayingStatusBarController
{
	if (HideStatusBar == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)_updateStatusBar{
	if (HideStatusBar == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}

-(void)_restoreStatusBar{
	if (HideStatusBar == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}

-(BOOL)wantsAtmospericStatusBar{
	if (HideStatusBar == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(void)_setNowPlayingStatusBar:(id)arg1{
	if (HideStatusBar == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}
%end

%hook MusicNowPlayingViewController
-(bool)prefersStatusBarHidden{
	if (HideStatusBar == YES)
	{
		return TRUE;
	}
		else
	{
		return %orig;
	}
}

-(id)statusBarLegibilityGradient{
	if (HideStatusBar == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}
%end


//Prefs Area

//



static void loadPrefs()

{

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:plist];

    if(prefs)

    {					   

HideArrowButton = ( [prefs objectForKey:@"HideArrowButton"] ? [[prefs objectForKey:@"HideArrowButton"] boolValue] : HideArrowButton );

HideArtistArtwork = ( [prefs objectForKey:@"HideArtistArtwork"] ? [[prefs objectForKey:@"HideArtistArtwork"] boolValue] : HideArtistArtwork);

HideStatusBar = ( [prefs objectForKey:@"HideStatusBar"] ? [[prefs objectForKey:@"HideStatusBar"] boolValue] : HideStatusBar );

hideSubscriptionContent = ( [prefs objectForKey:@"hideSubscriptionContent"] ? [[prefs objectForKey:@"hideSubscriptionContent"] boolValue] : hideSubscriptionContent );

DisableBlur = ( [prefs objectForKey:@"DisableBlur"] ? [[prefs objectForKey:@"DisableBlur"] boolValue] : DisableBlur );

HideRadioTab = ( [prefs objectForKey:@"HideRadioTab"] ? [[prefs objectForKey:@"HideRadioTab"] boolValue] : HideRadioTab );

PlaybackHistory = ( [prefs objectForKey:@"PlaybackHistory"] ? [[prefs objectForKey:@"PlaybackHistory"] boolValue] : PlaybackHistory);

bookmarkHistory = ( [prefs objectForKey:@"bookmarkHistory"] ? [[prefs objectForKey:@"bookmarkHistory"] boolValue] : bookmarkHistory);

hidesAds = ( [prefs objectForKey:@"hidesAds"] ? [[prefs objectForKey:@"hidesAds"] boolValue] : hidesAds);

HideRecentlyAdded = ( [prefs objectForKey:@"HideRecentlyAdded"] ? [[prefs objectForKey:@"HideRecentlyAdded"] boolValue] : HideRecentlyAdded);

autoRotateMusic = ( [prefs objectForKey:@"autoRotateMusic"] ? [[prefs objectForKey:@"autoRotateMusic"] boolValue] : autoRotateMusic);


hidesStatusBar = ( [prefs objectForKey:@"hidesStatusBar"] ? [[prefs objectForKey:@"hidesStatusBar"] boolValue] : hidesStatusBar);


alwaysShowMiniPlayer = ( [prefs objectForKey:@"alwaysShowMiniPlayer"] ? [[prefs objectForKey:@"alwaysShowMiniPlayer"] boolValue] : alwaysShowMiniPlayer);

unlimitedRadioSkips = ( [prefs objectForKey:@"unlimitedRadioSkips"] ? [[prefs objectForKey:@"unlimitedRadioSkips"] boolValue] : unlimitedRadioSkips);

RadioRecents = ( [prefs objectForKey:@"RadioRecents"] ? [[prefs objectForKey:@"RadioRecents"] boolValue] : RadioRecents );


ConnectRestricted = ( [prefs objectForKey:@"ConnectRestricted"] ? [[prefs objectForKey:@"ConnectRestricted"] boolValue] : ConnectRestricted );

	  }

}



%ctor 

{

	  CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.ikilledappl3.mousai~prefs-changed"), NULL, CFNotificationSuspensionBehaviorCoalesce);

		    loadPrefs();

}