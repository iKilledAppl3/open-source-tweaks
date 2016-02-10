#import "Mousai2.h"
/* Copyright 2015-2016 iKilledAppl3. All rights reserved.

Since all declartions are in the Mousai2.h file this will be much more clean :D */

/* //Spotify Hooks
%hook InAppPurchaseControllerImplementation
-(BOOL)isPremiumUser{
	if (unlimitedTrial == YES)
	{
		return TRUE;
	}
	else
	{
		return %orig;
	}
}

-(void)verifyStoredTransactionReceipt{
	if (unlimitedTrial == YES)
	{
		YES;
	}

	else
	{
		%orig;
	}
}

-(void)isTransactionPurchased {
	if (unlimitedTrial == YES)
	{
		YES;
	}

	else
	{
		%orig;
	}
}

-(void)transactionPurchased:(id)arg1{
	if (unlimitedTrial == YES)
	{
		YES;
	}

	else
	{
		%orig;
	}
}
%end

%hook SPTAccountController7DayTrialProductActivation
-(void)start{
	if (unlimitedTrial == YES)
	{
		YES;
	}

	else
	{
		%orig;
	}
}
%end

%hook SPSession
-(BOOL)isIncognitoModeEnabled{
	if (allowIncognitoMode == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook AdController
-(void)setAdFreePeriod:(unsigned int)arg1{
	if(disableSpotAds) arg1 = 999999;
		else %orig(arg1);
}
%end

%hook AdsFeatureImplementation
-(BOOL)isTrialOrPremiumUser {
	if (unlimitedTrial == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(BOOL)isAdsEnabledForProductState:(id)arg1 {

	if (disableSpotAds == YES)
	{
		return FALSE;

	}

	else
	{
		return %orig;
	}
}
%end


%hook SPTStatefulPlayerTrackPosition
-(BOOL)disallowSeekingAlways{

	if (allowSeeking == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(BOOL)deriveDisallowSeeking {
	if (allowSeeking ==  YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(id)restrictions{
	if (allowSeeking == YES)
	{
		return nil;
	}

	else
	{
		return %orig;
	}
}

-(BOOL)deriveDisallowSeekingAlways {
	if (allowSeeking == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook SPTStatefulPlayer

-(bool)disallowSeekingAlways {
	if (allowSeeking == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(bool)disallowSeeking {
	if (allowSeeking == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(BOOL)disallowSkippingToRelativeIndex:(int)arg1{
	if (unlimitedSpotSkips == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook SPTAccountTrialController
-(BOOL)isTrialActive{
	if(unlimitedTrial == YES)
	{
		return TRUE;
	}

	else 
	{
		return %orig;
	}
}

-(BOOL)isTrialState{
	if(unlimitedTrial == YES)
	{
		return TRUE;
	}

	else 
	{
		return %orig;
	}
}

-(id)expirationDate{
	if(unlimitedTrial == YES)
	{
		return nil;
	}

	else 
	{
		return %orig;
	}
}
%end

%hook SPTOfflineSwitchDelegate
-(BOOL)isEnabled {
	if (allowOfflineMode == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(void)setEnabled:(BOOL)arg1{
	if (allowOfflineMode == YES)
	{
		YES;
	}

	else
	{
		%orig(arg1);
	}
}

-(void)toggleOffline:(id)arg1{
	if (allowOfflineMode == YES)
	{
		YES;
	}

	else
	{
		%orig;
	}
}
%end


%hook SPTNowPlayingDurationViewController
-(id)adsManager {
	if (disableSpotAds == YES)
	{
		return nil;
	}

	else
	{
		return %orig;
	}
}
%end

%hook SPTNowPlayingPlaybackController 

-(BOOL)seekingAllowed {
	if(allowSeeking == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(void)skipToPreviousWhileDragging:(BOOL)arg1{
	if(unlimitedSpotSkips == YES)
	{
		arg1 = TRUE;
	}

	else 
	{
		%orig(arg1);
	}
}

-(BOOL)disallowSkippingToRelativeIndex:(int)arg1 {

	if (unlimitedSpotSkips == YES)
	{
		return TRUE;

	}

	else
	{
		return %orig;
	}
}

-(id)adsManager{
	if (disableSpotAds == YES)
	{
		return nil;
	}

	else
	{
		return %orig;
	}
}

-(BOOL)canSkipNext {
	if (unlimitedSpotSkips == YES)
	{
		return TRUE;
	}

	else 
	{
		return %orig;
	}
}

%end

%hook SPTNowPlayingDurationViewController
- (BOOL)scrubbing {
	if (allowScrubbing == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(void)setScrubbing:(BOOL)arg1{
	if (allowScrubbing == YES)
	{
		YES;

	}

	else
	{
		%orig;
	}
}

-(BOOL)seekingAllowed {
	if (allowSeeking == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

%end

%hook NowPlayingTrackPageView
-(bool)isCoverArtHidden{
	if (hideAlbumArt == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(void)setCoverArtHidden:(BOOL)arg1{

	if(hideAlbumArt == YES)
	{
		YES;
	}

	else

	{
		%orig;
	}
}

-(void)setVideoAdModeEnabled:(BOOL)arg1{
	if (disableSpotAds == YES)
	{
		NO;
	}

	else
	{

	}
}
%end

%hook SPTNowPlayingCoverArtViewCell
-(void)setCellSize:(CGSize)arg1{
		if(hideAlbumArt == YES)	
	{
		//We want the cover art hidden so no need to make a method
	}

	else
	{
		%orig(arg1);
	}
}
%end

%hook InAppPurchaseModel
-(BOOL)availablePremiumProductIncludes30DayTrial{
	if (unlimitedTrial == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}

}

-(BOOL)hasPremiumProductSettingExpired{
	if (unlimitedTrial == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(BOOL)isPremiumProductAvailable {
	if (unlimitedTrial == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end*/


//YT Music Hooks

%hook GCKDeviceManager
-(bool)isInBackground{
	if (allowBackgroundAudio == YES) 
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook GTMSessionUploadFetcher
-(bool)useBackgroundSession{
	if (allowBackgroundAudio == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook GTMSessionFetcher
-(bool)useBackgroundSession{
	if (allowBackgroundAudio == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook GTLUploadParameters
-(bool)useBackgroundSession{
	if (allowBackgroundAudio == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTPlaybackData
-(bool)isPlayableInBackground{
	if (allowBackgroundAudio == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTIPlayablityStatus
-(bool)isPlayableInBackground{
	if (allowBackgroundAudio == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook MLAVPlayer
-(void)appDidEnterBackground:(id)arg1{
	if (allowBackgroundAudio == YES)
	{
		arg1 = nil;
	}

	else
	{
		%orig(arg1);
	}
}
%end
%hook YTVASTAd
-(BOOL)isForecastingAd {
	if (disableYTMusicAds == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTPlayerViewController
-(BOOL)isPlayingAds{
	if (disableYTMusicAds == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTVideoAdsController
+(BOOL)isAdSenseAdTag:(id)arg1{
	if (disableYTMusicAds) return FALSE; 
		else return %orig(arg1);
}
%end

%hook YTIPlayerResponse
-(BOOL)isMonetized{
	if (disableYTMusicAds == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(id)ytm_audioOnlyPlayablityRenderer{
	if (allowAudioOnly == YES)
	{
		return nil;
	}

	else
	{
		return %orig;
	}
}

-(bool)ytm_isAudioOnlyPlayable{
	if (allowAudioOnly == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(bool)isPlayableInBackground{
	if (allowBackgroundAudio == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTInnerTubeAuthenticatedUserController
-(bool)isSignedIn {
	if(bypassSignIn == YES)
	{
		return TRUE;
	}
	else
	{
		return %orig;
	}
}
%end

%hook YTIdentityController
-(bool)isSignedIn{
	if(bypassSignIn == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTGDataAuthenticatedUserController
-(bool)isSignedIn{
	if(bypassSignIn == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook SSOIdentity
-(bool)isSignedIn{
	if(bypassSignIn == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook SSOIdentityPrivate
-(bool)isSignedIn{
	if(bypassSignIn == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook YTMUnlimitedConfig
-(bool)isAudioOnlyButtonVisible{
	if(allowAudioOnly == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}

-(bool)isRestrictedPlayerLayout{
	if(liveMiniplayer == YES)
	{
		return FALSE;
	}

	else
	{
		return %orig;
	}
}

-(bool)isOfflineEntryVisible{
	if(allowOfflinePlaylist == YES)
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
-(id)sidePanelPromo{
	if(disablePanelPromos == YES)
	{
		return nil;
	}

	else
	{
		return %orig;
	}
}
%end



//Pandora Hooks

%hook PMNowPlayingPhoneTrackCard
-(void)setAlwaysShowAlbumTitle:(BOOL)arg1{

	if (hideAlbumInfo == YES)
	{
		arg1 = FALSE;
	}

	else 
	{
		%orig(arg1);
	}
}

-(BOOL)alwaysShowAlbumTitle{

	if (hideAlbumInfo == YES)
	{
		return FALSE;
	}
	else
	{
		return %orig;
	}
}
%end

%hook SkipLimitState
-(bool)unlimitedStationSkips {

	if (unlimitedSkipsPandora == YES) 
	{
		return TRUE;
	}
		else 
		{
			return %orig;
		}
}

-(long long)skipsForStation:(id)arg1{
	if (unlimitedSkipsPandora) return 999999; 
		else return %orig (arg1);
}

-(BOOL)ulimitedDailySkips {
	if (unlimitedSkipsPandora == YES) 
	{
		return TRUE;
	}

	else
	{
		return %orig;
	}
}
%end

%hook PMListeningPersistence
-(double)skipDelayAfterTrackStart {

		if (disableTrackDelay == YES)
	{
		return 0;
	}
		else 
	{
		return %orig;
	}
}
%end

%hook PMRadioConfig
-(bool)enableBannerAds {

	if (disablePandoraAds == YES) 
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}
%end

%hook PMBaseSettings
-(bool)discardAudioAds {

	if (disablePandoraAds == YES)
	{
		return TRUE;
	}
		else
	{
		return %orig;
	}
}
%end

%hook StationPlayer
-(void)discardAudioAdsForActiveStation {

	if (disablePandoraAds == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}
%end

%hook PMFRadio
-(bool)userReceivesVisualAds {

	if (disablePandoraAds == YES) {

		return FALSE;
	}

	else 
	{
		return %orig;
	}
}
%end

//Music & Podcasts Hooks 
//Since Apple Uses the same methods for podcasts as for Apple Music we hook the same methods...

%hook MusicLibraryShowCloudMediaBarViewController //Hide that annoying cloud tab bar 

-(void)viewDidLoad {

	if (hideCloudTabMediaBar == YES)

	{
		nil;
	}	

	else 
	{
		%orig;
	}	
}

-(void)_showButtonAction:(id)arg1 {

	if (hideCloudTabMediaBar == YES)
	{
		arg1 = nil;
	}

	else 
	{
		%orig(arg1);
	}
}

-(void)viewDidLayoutSubViews {

	if (hideCloudTabMediaBar == YES)

	{
		nil;
	}

	else 
	{
		%orig;
	}
}

-(void)dealloc {

	if (hideCloudTabMediaBar == YES)
	{
		nil;
	}
	else
	{
		%orig;
	}
}

-(void)_updatePreferredContentSize {

	if (hideCloudTabMediaBar == YES)
	{
		nil;
	}

	else
	{
		%orig;
	}
}

-(id)initWithNibName:(id)arg1:(id)arg2{

     if (hideCloudTabMediaBar) return nil;
       else return %orig (arg1, arg2);
}
%end

%hook MusicHUDViewController  

-(void)viewWillAppear:(BOOL)arg1 {

	if (hideMusicHud == YES) 
	{
		arg1 = FALSE;
	}

	else if (hideHud == YES) 
	{
		arg1 = FALSE;
	}

	else 
	{
		%orig(arg1);
	}	
}

-(void)viewDidLoad {

	if (hideMusicHud == YES) 
	{
		nil;
	}
	
	 else if (hideHud == YES) 
	{
		nil;
	}

	else 
	{
		%orig;
	}
}

-(void)viewDidAppear:(BOOL)arg1 {

	if (hideMusicHud == YES)
	{
		arg1 = TRUE;
	}
	 else if (hideHud == YES) 
	{
		arg1 = TRUE;
	}
	else 
	{
		%orig(arg1);
	}
}
%end

%hook MusicSearchViewController

-(bool)_allowsLocalSearchOnly {

	if (searchMusicLocally == YES)
	{
		return TRUE;
	}

	else
	{

		return %orig;
	}
}
%end

%hook MusicVerticalScrollingContainerViewController //Finally found that stupid method :D

-(BOOL)isPerformingLayout {

	if (alwaysShowABC == YES)
	{
		return TRUE;
	}
		else
	{
		return %orig;
	}
}
%end

%hook UIViewController
-(bool)prefersStatusBarHidden{
      if (hideAWStatusBar == YES)
      {
	  return TRUE;
      }
	  else if 
	  (disableAWSBar == YES) 
      {
	   return TRUE;
      }
      else 
      {
	   return %orig;
      }
}
%end

/*%hook UIWindow //This no longer Works on iOS 9 :/ ...
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
%end*/

%hook RURadioAdSlot
-(id)adSlot{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id) initWithAdSlot:(id)arg1{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)followingSongData{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)previousSongData{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)stationData{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)adSlot:(id)arg1:(id)arg2:(id)arg3{
	if (hideAds == YES)
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
	if (hideAds == YES)
	{
		arg1 = FALSE;
	}
		else
	{
		%orig(arg1);
	}
}

-(id)adTracks{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setFollowingTracks:(id)arg1{
	if (hideAds == YES)
	{
		%orig(arg1);
	}
}

-(BOOL)isGatewayAdSlot{
	if (hideAds == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(void)setGatewayAdSlot:(BOOL)arg1{
	if (hideAds == YES)
	{
		arg1 = FALSE;
	}
		else
	{
		%orig(arg1);
	}
}

-(void)setStationData:(id)arg1{
	if (hideAds == YES)
	{
		%orig(arg1);
	}
}

-(void)setPreviousSongData:(id)arg1{
	if (hideAds == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

-(void)didFinishPlaybackOfAdTracks:(id)arg1:(int)arg2{
	if (hideAds == YES)
	{
		%orig;
	}
}

-(BOOL)wasPreparedAsStationEntryAdSlot{
	if (hideAds == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(id)identifier{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(id)init{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)dealloc{
	if (hideAds == YES)
	{
		%orig;
	}
}
%end

%hook RURadioQueueFeeder
-(id)preparedAdSlotForRadioTrack:(id)arg1{
	if (hideAds == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)_adSlotAdTracksDidChangeNotification:(id)arg1{
	if (hideAds == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

-(void)_setAdSlot:(id)arg1:(id)arg2{
	if (hideAds == YES)
	{
		%orig(arg1, arg2);
	}
}
%end

%hook MusicLibraryRecentlyAddedCollectionViewConfiguration
-(id)initWithEntityLimit:(unsigned long long)arg1{
	if (hideRecentlyAdded == YES)
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

-(bool)searchShouldDefaultToMyMusic {

	if (searchMusicLocally == YES) 

	{

		return TRUE;
	}

	else 
	{

		return %orig;
	}
}

-(void)setSearchShouldDefaultToMyMusic:(BOOL)arg1{

	if (searchMusicLocally == YES) 
	{

	       arg1 = TRUE;
	}

	else

	{
		 %orig(arg1);

	}

}

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
	if (disableBlur == YES)
	{
		nil;
	}
		else if (noBlur == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}

- (id)blurImageView{
	if (disableBlur == YES)
	{
		return nil;
	}
	else if (noBlur == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

- (id)blurView{
	if (disableBlur == YES)
	{
		return nil;
	}

	else if (noBlur == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

- (void)setBlurImageView:(id)arg1{
	if (disableBlur == YES)
	{
		arg1 = nil;
	}

	else if (noBlur == YES)
	{
		arg1 = nil;
	}
		else
	{
		%orig;
	}
}

- (void)setBlurView:(id)arg1{
	if (disableBlur == YES)
	{
		arg1 = nil;
	}

	else if (noBlur == YES)
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
		if (hideArtistArtwork == YES)
		{
			  return nil;
		}
			else
		{
			return %orig;
		}
}

-(id)artistArtworkCatalog{
		if (hideArtistArtwork == YES)
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
		if (playbackHistory == YES)
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
		if (playbackHistory == YES)
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
 if (alwaysShowMiniPlayer)
    {
	  arg1 = TRUE;
    }
	else
    {
	%orig(arg1);
    }
}

-(BOOL)isMiniPlayerVisible{
	if (alwaysShowMiniPlayer)
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
		if (bookmarkSongLocation == YES)
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
		if (connectRestricted)
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
	if(hideRadioTab == YES)
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
		if (connectRestricted)
		{
			return TRUE;
		}
			else
		{

			return %orig;
		}
}

-(BOOL)canShowConnect{
		if (connectRestricted)
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
	if(hideRadioTab == YES)
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
	if(hideRadioTab == YES)
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
	if (radioRecents == YES)
	{
		return nil;
	}
		else
	{ 
		return %orig;
	}

}

-(id)stations{
	if (radioRecents == YES)
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

	if (hideArrowButton == YES)

	{

		arg1 = nil;

	}

		else if (disableArrowButton == YES)
	{

		arg1 = nil;
	}

		else
	{

		%orig(arg1);

	}

}



-(id)initWithFrame:(CGRect)arg1{
	if (hideArrowButton  == YES)
	{
		return nil;
	}

	else if (disableArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

/*-(bool)pointInside:(CGRect)arg1:(id)arg2

{

	return hideArrowButton && disableArrowButton ? FALSE: %orig(arg1,arg2);

}*/

-(void)layoutSubviews{

	if (hideArrowButton == YES) 
	{
		nil;
	}

	else if (disableArrowButton == YES)
	{
			nil;
	}
		else 
	{
			%orig;
	}
}



-(void)setHighlighted:(bool)arg1{
	if (hideArrowButton == YES)
	{
		arg1 = FALSE;
	}

	else if (disableArrowButton == YES)
	{
		arg1 = FALSE;
	}

	else
	{
		%orig(arg1);
	}
}

-(id)effectView{
	if (hideArrowButton == YES)
	{
		return nil;
	}

	else if (disableArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setEffectView:(id)arg1{
	if (hideArrowButton  == YES)
	{
		arg1 = nil;
	}

	else if (disableArrowButton == YES) 
	{
		arg1 = nil;
	}
		else
	{
		%orig(arg1);
	}
}

/*-(long long)effect
{

	return hideArrowButton && disableArrowButton ? 0 : %orig;

}*/



-(void)setEffect:(long long)arg1{
	if (hideArrowButton == YES)
	{
		arg1 = nil;
	}

	else if (disableArrowButton == YES) 
	{
		arg1 = nil;
	}

		else
	{
		 %orig(arg1);
	}
}

-(void)setGlyphImageOffset:(UIOffset)arg1{
	if (hideArrowButton == YES)
	{
		 nil;
	}

	else if (disableArrowButton == YES)
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

	if (hideArrowButton == YES) 
	{
		return nil;
	}

	else if (disableArrowButton == YES)
	{
		return nil;
	}

	else 
	{
		return %orig;
	}

}

-(bool)hideShadow{

	if(hideArrowButton == YES)
	{
		return TRUE;
	}

	else if (disableArrowButton == YES)

	{
		return TRUE;
	}	

		else
	{
		return %orig;
	}
}

-(id)glyphImageView{
	if (hideArrowButton == YES)
	{
		return nil;
	}

	else if (disableArrowButton == YES)
	{
		return nil;
	}

		else
	{
		return %orig;
	}
}

-(void)setGlyphImageView:(id)arg1{
	if (hideArrowButton == YES)
	{
		arg1 = nil;
	}

		else if (disableArrowButton == YES)
	{
		arg1 = nil;
	}

		else
	{
		%orig(arg1);
	}
}

-(id)backdropGroupName{
	if (hideArrowButton == YES)
	{
		return nil;
	}
	
	else if (disableArrowButton == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)setBackdropGroupName:(id)arg1{
	if (hideArrowButton == YES)
	{
		arg1 = nil;
	}

	else if (disableArrowButton == YES)
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
	if (hideStatusBar == YES)
	{
		return TRUE;
	}

	else if (disableStatusBar == YES)
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
	if (hideStatusBar == YES)
	{
		return nil;
	}
	else if (disableStatusBar == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}

-(void)_updateStatusBar{
	if (hideStatusBar == YES)
	{
		nil;
	}

	else if (disableStatusBar == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}

-(void)_restoreStatusBar{
	if (hideStatusBar == YES)
	{
		nil;
	}
	else if (disableStatusBar == YES)
	{
		nil;
	}
		else
	{
		%orig;
	}
}

-(BOOL)wantsAtmospericStatusBar{
	if (hideStatusBar == YES)
	{
		return FALSE;
	}

	else if (disableStatusBar == YES)
	{
		return FALSE;
	}
		else
	{
		return %orig;
	}
}

-(void)_setNowPlayingStatusBar:(id)arg1{
	if (hideStatusBar == YES)
	{
		arg1 = nil;
	}

	else if (disableStatusBar == YES)
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
	if (hideStatusBar == YES)
	{
		return TRUE;
	}

	else if (disableStatusBar == YES)
	{
		return TRUE;
	}
		else
	{
		return %orig;
	}
}

-(id)statusBarLegibilityGradient{
	if (hideStatusBar == YES)
	{
		return nil;
	}

	else if (disableStatusBar == YES)
	{
		return nil;
	}
		else
	{
		return %orig;
	}
}
%end

//HBPreferences yeah because HASHBANG PRODUCTIONS ARE JUST AWESOME PEOPLE!

HBPreferences *preferences;
extern NSString *const HBPreferencesDidChangeNotification;


%ctor {
    preferences = [[HBPreferences alloc] initWithIdentifier:@"com.ikilledappl3.mousai2"];
	[preferences registerBool:&connectRestricted default:NO forKey:@"connectRestricted"];
    [preferences registerBool:&hideStatusBar default:NO forKey:@"hideStatusBar"];
    [preferences registerBool:&radioRecents default:NO forKey:@"radioRecents"];
    [preferences registerBool:&unlimitedRadioSkips default:NO forKey:@"unlimitedRadioSkips"];
    [preferences registerBool:&hideRadioTab default:NO forKey:@"hideRadioTab"];
    [preferences registerBool:&hideSubscriptionContent default:NO forKey:@"hideSubscriptionContent"];
    [preferences registerBool:&hideRecentlyAdded default:NO forKey:@"hideRecentlyAdded"];
    [preferences registerBool:&playbackHistory default:NO forKey:@"playbackHistory"];
    [preferences registerBool:&hideArtistArtwork default:NO forKey:@"hideArtistArtwork"];
    [preferences registerBool:&disableBlur default:NO forKey:@"disableBlur"];
    [preferences registerBool:&hideAds default:NO forKey:@"hideAds"];
    [preferences registerBool:&hideArrowButton default:NO forKey:@"hideArrowButton"];
	[preferences registerBool:&hideAWStatusBar default:NO forKey:@"hideAWStatusBar"];
	[preferences registerBool:&disableArrowButton default:NO forKey:@"disableArrowButton"];
	[preferences registerBool:&disableStatusBar default:NO forKey:@"disableStatusBar"];
	[preferences registerBool:&noBlur default:NO forKey:@"noBlur"];
	[preferences registerBool:&disableAWSBar default:NO forKey:@"disableAWSBar"];
	[preferences registerBool:&alwaysShowABC default:NO forKey:@"alwaysShowABC"];
	[preferences registerBool:&hideMusicHud default:NO forKey:@"hideMusicHud"];
	[preferences registerBool:&hideCloudTabMediaBar default:NO forKey:@"hideCloudTabMediaBar"];
	[preferences registerBool:&searchMusicLocally default:NO forKey:@"searchMusicLocally"];
	[preferences registerBool:&hideHud default:NO forKey:@"hideHud"];
	[preferences registerBool:&alwaysShowMiniPlayer default:NO forKey:@"alwaysShowMiniPlayer"];
	[preferences registerBool:&bookmarkSongLocation default:NO forKey:@"bookmarkSongLocation"];
	[preferences registerBool:&disablePandoraAds default:NO forKey:@"disablePandoraAds"];
	[preferences registerBool:&unlimitedSkipsPandora default:NO forKey:@"unlimitedSkipsPandora"];
	[preferences registerBool:&disableTrackDelay default:NO forKey:@"disableTrackDelay"];
	[preferences registerBool:&hideAlbumInfo default:NO forKey:@"hideAlbumInfo"];
	[preferences registerBool:&disableYTMusicAds default:NO forKey:@"disableYTMusicAds"];
	[preferences registerBool:&bypassSignIn default:NO forKey:@"bypassSignIn"];
	[preferences registerBool:&allowBackgroundAudio default:NO forKey:@"allowBackgroundAudio"];
	[preferences registerBool:&allowAudioOnly default:NO forKey:@"allowAudioOnly"];
	[preferences registerBool:&disablePanelPromos default:NO forKey:@"disablePanelPromos"];
	[preferences registerBool:&liveMiniplayer default:NO forKey:@"liveMiniplayer"];
	[preferences registerBool:&allowOfflinePlaylist default:NO forKey:@"allowOfflinePlaylist"];
	//Spotify Stuff ~~Currently commented due to BdaySpotify :P
	//[preferences registerBool:&allowIncognitoMode default:NO forKey:@"allowIncognitoMode"];
	//[preferences registerBool:&disableSpotAds default:NO forKey:@"disableSpotAds"];
	//[preferences registerBool:&unlimitedSpotSkips default:NO forKey:@"unlimitedSpotSkips"];	
	//[preferences registerBool:&unlimitedTrial default:NO forKey:@"unlimitedTrial"];
	//[preferences registerBool:&allowScrubbing default:NO forKey:@"allowScrubbing"];
	//[preferences registerBool:&allowSeeking default:NO forKey:@"allowSeeking"];
	//[preferences registerBool:&hideAlbumArt default:NO forKey:@"hideAlbumArt"];
	//[preferences registerBool:&allowOfflineMode default:NO forKey:@"allowOfflineMode"];
	
}

