/*Mousai 2 (iOS 9+) Header file

This is to help me keep my code clean within the Tweak.xm file

Copyright 2015-2016 iKilledAppl3. All rights reserved. 

feel free to do whatever you want with this */

//Headers needed for import
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Cephei/HBPreferences.h> // Everyone should use HASHBANG Productions Headers :P

//booleans needed for Mousai2

//Apple Music Methods
BOOL connectRestricted; // hide the connect tab
BOOL hideStatusBar; // Disable the statusbar in the now playing view
BOOL radioRecents; // hide recently played in iTunes Radio
BOOL unlimitedRadioSkips; // unlimited skips in iTunes Radio
BOOL hideRadioTab; // hide the radio tab
BOOL hideSubscriptionContent; // hide the for you & new tabs
BOOL hideRecentlyAdded; // hide the recently added music tab in my music
BOOL playbackHistory; // disable playback history in iTunes Radio
BOOL hideArtistArtwork; // hide the artist artwork
BOOL disableBlur; // disable the blur in the now playing view
BOOL hideAds; //disable iTunes Radio adverts
BOOL hideArrowButton; // disable the floating arrow button in the now playing view
BOOL hideAWStatusBar; // hide the AW = App Wide :P ... statusbar
BOOL alwaysShowABC; // always show the alphabet on the right side of the screen
BOOL searchMusicLocally; // search only my music
BOOL hideMusicHud; // Hide the up next hud
BOOL hideCloudTabMediaBar; //Hide that annoying cloud tab bar...
BOOL alwaysShowMiniPlayer; // Always show the Miniplayer
BOOL bookmarkSongLocation; // remember the location of the song

/*these are troublesome so they are commented for now...
 BOOL autoRotateMusic; // doesn't quite work on iOS 9-9.0.2 yet...
 BOOL musicSwipeGestures; // didn't even make that yet -__-...
 */

//Podcasts Methods
BOOL noBlur; // disable the blur in the now playing view
BOOL disableArrowButton; // disable the floating arrow button in the now playing view
BOOL disableStatusBar; // Disable the statusbar in the now playing view
BOOL disableAWSBar; // hide the statusbar app wide *not sure if works*
BOOL hideHud; // hide the up next hud
//BOOL swipeGestures; // didn't even make that yet -__-...

/*Spotify Methods

BOOL disableSpotAds; // Hide annoying adverts
BOOL unlimitedSpotSkips; // Unlimited Radio Skipping
BOOL allowIncognitoMode; // Private Mode
BOOL unlimitedTrial; // Unlimited access to premium trial *not sure if works*
BOOL allowScrubbing; // allow scrubbing the song 
BOOL allowSeeking; // allow seeking to next track
BOOL hideAlbumArt; // Hide album art
BOOL allowOfflineMode; //hopefully allows offline mode to be enabled -__-...
//BOOL allowHighQualityStreaming;
*/

//Pandora Methods
BOOL disablePandoraAds; // Disable those annoying adverts
BOOL unlimitedSkipsPandora; // Unlimited Radio Skips
BOOL disableTrackDelay; // Disable delay when switching/skipping between tracks
BOOL hideAlbumInfo; // Hide album name

// YTMusic Methods
BOOL disableYTMusicAds; // Disable Ads
BOOL bypassSignIn; // Bypass Sign In
BOOL allowBackgroundAudio; // Allow Background Music
BOOL allowAudioOnly; // Enable the audio only toggle switch
BOOL disablePanelPromos; // Disable YouTube Red Promos
BOOL liveMiniplayer; // Show Live Preview on Miniplayer
BOOL allowOfflinePlaylist; // Allow caching videos for offline use
