//
//  Xenok "Tweak.xm core code"          
//
//  Created by iKilledAppl3 on 4/26/15.
//  Copyright (c) 2015 ToxicAppl3 Inc.        
//        All rights reserved.
// 
// Code is messy but it works for me.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define plist @"/var/mobile/Library/Preferences/com.ikilledappl3.xenok.plist"

static BOOL NLCenabled = NO;
static BOOL LECamenabled = NO;
static BOOL SBFolders = NO;
static BOOL SBFolders2 = NO;
static BOOL CCVibrance = NO;
static BOOL TouchID = NO;
static BOOL SevenSpot = NO;
static BOOL SBFolders3 = NO;
static BOOL ULSPass = NO;
static BOOL SafariTweak = NO;
static BOOL SafariKeyboard = NO;
static BOOL unlimitedTabsSafari = NO;
static BOOL DisableCC = NO;
static BOOL LSBlur = NO;
static BOOL NoMulti = NO;
static BOOL VCTweak = NO;
static BOOL PLTweak = NO;
static BOOL SwitcherContacts = NO;
static BOOL NOTodayLS = NO;
static BOOL BattImage = NO;
static BOOL OldCCBounce = NO;
static BOOL RotateLS = NO;
static BOOL RotateSB = NO;
static BOOL NoPgDots = NO;
static BOOL DisableSpot = NO;
static BOOL FakeLTESig = NO;
static BOOL BanrReply = NO;
static BOOL CCFix = NO;
static BOOL LSGrabbers = NO;
static BOOL LSChevron = NO;
static BOOL FBMessPlus = NO;
static BOOL SBFolders4 = NO;
static BOOL LStatusClock = NO;
static BOOL CBlockUsrTweets = NO;
static BOOL UTubeBackAudio = NO;
static BOOL IconLabels = NO;
static BOOL HideTrendSearch = NO;
static BOOL FBFotos = NO;
static BOOL BanrReply2 = NO;
static BOOL VOLHud = NO;
static BOOL DockImage = NO;
static BOOL BanrReply3 = NO;
static BOOL SBHomeSwchBlr = NO;
static BOOL LSCamGrab = NO;
static BOOL CustomLSSliderText = YES;
static NSString* CustomLSSlider = nil;
static BOOL firstxenokInstall = YES;
static BOOL ResetPrefsDisabled = NO;
static BOOL softwareUpdatePrefs = NO;
static BOOL LSTimeDate = NO;
static BOOL BanrReply4 = NO;
static BOOL HideBadges = NO;

%hook SBIconController
-(BOOL)_badgesAreDisabledForSectionInfo:(id)arg1
{
          return HideBadges ? TRUE : %orig;
}
%end
%hook SBLockScreenDateViewController
-(bool)isDateHidden{
          if (LSTimeDate == YES){
          return TRUE;
          }
          else
          {
          return %orig;
          }
}

-(void)setDateHidden:(bool)arg1{
          if (LSTimeDate == YES){
                    arg1 = TRUE;
                    }
                    else
                    {
                    %orig;
                    }
}

-(void)setContentAlpha:(double)withDateVisible:(bool)arg2{
                    if (LSTimeDate == YES){
                              arg2 = TRUE;
                              }
                              else
                              {
                              %orig(withDateVisible, arg2);
                              }
}
          
-(id)dateView{
                    if (LSTimeDate == YES){
                    return nil;
                    }
                    else
                    {
                    return %orig;
                    }
}

-(void)setLegibilitySettings:(id)arg1{
                    if (LSTimeDate == YES){
                              nil;
                              }
                              else
                              {
                              %orig;
                              }
}

-(id)legibilitySettings{
                    if (LSTimeDate == YES){
                    return nil;
                    }
                    else
                    {
                    return %orig;
                    }
}

-(void)willMoveToParentController:(id)arg1{
                    if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}

-(void)loadView{
          if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}

-(id)initWithNibName:(id)bundle:(id)arg2
{
          return LSTimeDate ? NULL : %orig;
}

-(void)_updateView{
          if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}

-(void)setView:(id)arg1{
          if (LSTimeDate == YES){
                    arg1 = nil;
                    }
                    else
                    {
                    %orig;
                    }
}

-(void)dealloc{
          if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}

-(bool)disablesUpdates
{
          return LSTimeDate ? TRUE : %orig;
}

-(void)_backLightChanged{
          if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}


-(void)_updateFormat{
          if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}

-(id)dateViewIfExists
{
          return LSTimeDate ? NULL : %orig;
}

-(void)_addObservers{
          if (LSTimeDate == YES){
                    nil;
                    }
                    else
                    {
                    %orig;
                    }
}

%end

//Prefs... Mods//
%hook ResetPrefController
-(id)init{
          if (ResetPrefsDisabled == YES){
                    return nil;
          }
          else
          {
          return %orig;
          }

}
%end

%hook SoftwareUpdatePrefController
-(id)init{
          if (softwareUpdatePrefs == YES){
                    return nil;
          }
          else
          {
          return %orig;
          }

}
%end
//Settings Area//

%hook SBAppSwitcherHomePageCellView
-(void)layoutSubviews{
          if (SBHomeSwchBlr == YES)
          {
                    nil;
          }
          else
          {
                    %orig;
          }
}
%end

%hook SBBannerController
-(void)_setBannerSticky:(bool)arg1{
                    if (BanrReply3 == YES)
                    {
                              arg1 = TRUE;
                    }
                    else
                    {
                    %orig;
                    }
}
%end

%hook SBDockView
-(void) layoutSubviews{
          if (DockImage == YES)
          {
                    nil;
          }
          else
          {
                    %orig;
          }
}
%end

%hook SBHUDController
-(void)_recenterHUDView{
          if (VOLHud == YES)
          {
                    nil;
          }
          else
          {
                    %orig;
          }
}
%end

%hook SBNotificationsClearButton

+(id)_circleImageWithGraphicsQuality:(long  long)arg1{
          return BanrReply2 ? NULL : %orig;
}

-(long long) clearButtonState{
                    if (BanrReply2 == YES)
                    {
                              return 1;
                    }
                    else
                    {
                              return %orig;
                    }
}

-(void)_layoutSubviewsForState:(long long)arg1{
                    if (BanrReply2 == YES)
                    {
                              arg1 = 0;
                    }
                    else
                    {
                              %orig;
                    
                    }
}

-(long long) graphicsQuality{           
                    if (BanrReply2 == YES)
                    {
                              return 0;
                    }
                    else
                    {
                              return %orig;
                    }
}
%end                          
                    
%hook SBHomeButtonSettings

-(BOOL) doubleTapOnMenuDown{
       if(NoMulti == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}

-(void) setDoubleTapOnMenuDown:(BOOL)arg1
{
       if(NoMulti == YES)
       {
                 arg1 = FALSE;
       }
       else
       {
                    %orig;
       }
}

%end

%hook SBApplication
-(id) iconDisplayName:(id)arg1
{
          return IconLabels ? NULL : %orig;
}
%end

%hook SBNewsstandIcon
-(id) displayName
{
          return IconLabels ? NULL : %orig;
}
%end

%hook SBFolder 
-(void)setDisplayName:(id)arg1{
          if(IconLabels == YES)
           {
          arg1 = nil;
           }
           else
           {
            %orig;
           }
}
%end


%hook MLAVPlayer
-(bool) backgroundPlaybackAllowed{
                    if(UTubeBackAudio == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end

%hook MLEXOPlayer
-(bool) backgroundPlaybackAllowed{
                    if(UTubeBackAudio == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end


%hook YTLocalPlaybackController
-(bool) isBackgroundPlaybackAllowedByUserSettings{
                    if(UTubeBackAudio == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}


-(void) setPLaybackInSyncWithLivePlayhead:(bool)arg1{
             if (UTubeBackAudio == YES)
             {
             TRUE;
             }
             else
             {
            %orig;
             }
}
%end


%hook TFNTwitterRelationship
-(BOOL) isBlockingCurrentAccount{
                    if(CBlockUsrTweets == YES)
                    {
                    return FALSE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end

%hook SBLockScreenViewControllerBase
-(BOOL) shouldShowLockStatusBarTime{
                    if(LStatusClock == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end

%hook FBMLoggedInUserInfoManager
-(BOOL) loggedInUserIsEmployee{
                    if(FBMessPlus == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end

%hook FBMediaAttachmentPickerControllerConfiguration
-(void) setMaxPhotosSelected:(unsigned int)arg1{
                    if (FBFotos == YES)
                    {
                    arg1 = 10;
                    }
                    else
                    {
                    %orig;
                    }
}
%end

%hook VOIPConfiguration
-(BOOL) enableVOIP{
                    if(FBMessPlus == YES)
                    {
                    return FALSE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end

%hook _UIGlintyStringView
-(id) chevron{
            if (LSChevron == YES)
            {
            return nil;
            }
            else
            {
            return %orig;
            }
}
%end

%hook SBControlCenterController
-(bool) isUILocked{
                    if(CCFix == YES)
                    {
                    return FALSE;
                    }
                    else
                    {
                    return %orig;
                    }
}
%end

%hook SBBannerButtonView
-(id) buttons{
            if(BanrReply == YES)
            {
            return nil;
            }
            else
            {
            return %orig;
            }
}
-(void) setButtons:(id)arg1{
                    if(BanrReply == YES)
                    {
                    arg1 = nil;
                    }
                    else
                    {
                    %orig;
                    }
}
%end

%hook SBTelephonyManager
-(int) dataConnectionType{
             if(FakeLTESig == YES)
             {
             return 7;
             }
             else
             {
             return %orig;
             }
}            
%end

%hook SBSearchScrollView
-(bool) gestureRecognizerShouldBegin:(id)arg1
{
    return DisableSpot ? NO : %orig;
}
%end

%hook SBSearchViewController
-(void)loadView{
      if(DisableSpot == YES)
      {
           nil;
      }
      else
      {
          %orig;
      }
}

-(BOOL)gestureRecognizerShouldBegin:(id)arg1{
    return DisableSpot ? NO : %orig;
}
%end

%hook SBSearchGesture
-(void) setEnabled:(bool)arg1{
                    if(DisableSpot == YES)
                    {
                    arg1 = FALSE;
                    }
                    else
                    {
                     %orig;
                    }
}
%end

%hook SBIconPageIndicatorImageSetResult
-(id) pageIndicatorSet{
            if(NoPgDots == YES)
            {
            return nil;
            }
            else
            {
            return %orig;
            }
}
-(id) enabledPageIndicatorSet{
            if(NoPgDots == YES)
            {
            return nil;
            }
            else
            {
            return %orig;
            }
}
%end        

%hook SBLockScreenViewController
-(id) statusBarStyle{
                    if(LStatusClock == YES)
                    {
                    return 0;
                    }
                    else
                    {
                    return %orig;
                    }
}
-(BOOL) shouldShowLockStatusBarTime{
                    if(LStatusClock == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}
-(bool)_forcesPortraitOrientation{
                    if(RotateLS == YES)
                    {
                              return FALSE;
                    }
                    else
                    {
                              return %orig;
                    }
}
-(bool) shouldAutoratateToInterfaceOrientation:(long long)arg1{
                    if(RotateLS == YES)
                    {
                              return FALSE;
                    }
                    else
                    {
                              return %orig;
                    }
}
%end

%hook UIStatusBarBatteryItemView
-(id)contentsImage{   
                    
                    if(BattImage == YES)
       {
               return nil;
       }
       else
       {
           return %orig;
       }
}
%end

%hook SBNotificationCenterController
-(BOOL)isTodayViewAvailableWhileLocked{
       if(NOTodayLS == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}
%end

%hook SBAppSwitcherPeopleScrollView
-(id) initWithFrame:(CGRect)arg1
{
       if(SwitcherContacts == YES)
      {   return nil;
      
      } else
      
      {   return %orig;
      
      }
 }
%end
       
%hook SKUITrendingSearchDocumentViewController

-(void)loadView{
       if(HideTrendSearch == YES)
       {
                    nil;
       }
       else
       {
               %orig;
       }
}
%end

%hook SBLockOverlayStyleProperties   
-(CGFloat) tintAlpha{
       if(LSBlur == YES)
       {
                    return 0;
       }
       else
       {
              return  %orig;
       }
}
%end

%hook PUPhotosAlbumViewController
-(BOOL)isTrashBinViewController{
       if(PLTweak == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}
%end

%hook PLManagedAsset
-(BOOL)canMoveToTrash{
       if(PLTweak == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}
%end

%hook SBVoiceControlController
-(bool) handleHomeButtonHeld
{
       if(VCTweak == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}

%end

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application{
                    %orig;
//Only run one time after user installs the Xenok Tweak// 

          NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"var/mobile/Library/Preferences/com.ikilledappl3.xenok.plist"];
          NSMutableDictionary *mutableDict = dict ? [[dict mutableCopy] autorelease] : [NSMutableDictionary dictionary];
          firstxenokInstall = ( [mutableDict objectForKey:@"firstxenokInstall"] ? [[mutableDict objectForKey:@"firstxenokInstall"] boolValue] : firstxenokInstall );
if(firstxenokInstall == YES)
          {
                    UIAlertView *alertUser = [[UIAlertView alloc] initWithTitle:@"Hello User" 
                    message:@"Thanks for installing Xenok!\n\nLets stick it to Apple and customize our devices freely!" 
                    delegate:self 
                    cancelButtonTitle:nil 
                    otherButtonTitles:@"Leave me alone now :)", nil];
                    [alertUser show];
                    [alertUser release];
                    [mutableDict setValue:@NO forKey:@"firstxenokInstall"];
                    [mutableDict writeToFile:@"/var/mobile/Library/Preferences/com.ikilledappl3.xenok.plist" atomically:YES];
          }
}

-(bool) homeScreenRotationStyleWantsUIKitRotation{
                    if(RotateSB == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}
-(bool) homeScreenSupportsRotation{
                    if(RotateSB == YES)
                    {
                    return TRUE;
                    }
                    else
                    {
                    return %orig;
                    }
}                   
-(void) handleMenuDoubleTap{
       if(NoMulti == YES)
       {
                nil;
       }
       else
       {
                %orig;
       }
}

-(BOOL) isMenuDoubleTapAllowed{
       if(NoMulti == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}
%end

%hook SBSlideUpAppGrabberView
-(void)setGrabberImageFromApp:(id)arg1{
       if(LSCamGrab == YES)
       {
                nil;
       }
       else
       {
                %orig;
       }
}

-(void)setGrabberImage:(id)arg1{
       if(LSCamGrab == YES)
       {
                nil;
       }
       else
       {
                %orig;
       }
}

-(void)setAppStyleGrabberImage:(id)arg1{
       if(LSCamGrab == YES)
       {
                nil;
       }
       else
       {
                %orig;
       }
}
%end

%hook SBLockScreenView

-(id)_defaultSlideToUnlockText{
          return LSChevron ? NULL : %orig;
}

-(void)setCustomSlideToUnlockText:(id)arg1 {
    if(CustomLSSliderText && CustomLSSlider) {
          arg1 = CustomLSSlider;
    }
    %orig(arg1);
}

-(void)_layoutWallpaperBlurView{   
                    
                    if(LSBlur == YES)
       {
                 nil;
       }
       else
       {
            %orig;
       }
}


-(void)_showFakeWallpaperBlurWithAlpha:(double)arg1 withFactory:(id)arg2{
                    if(LSBlur == YES) 
                    {
                 arg1 = -1;
                       arg2 = nil;
       }
       else
       {
               %orig;
       }
}

-(BOOL) _needsRealBlur{
       if(LSBlur == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}

-(void)setTopGrabberHidden:(BOOL)arg1 forRequester:(id)arg2 {
          if (LSGrabbers == YES) {
                    arg1 = TRUE;
          }
    %orig(arg1, arg2);
}

-(BOOL)isTopGrabberHidden {
          return LSGrabbers ? TRUE : %orig;
}

-(void)setBottomGrabberHidden:(BOOL)arg1 forRequester:(id)arg2 {
          if (LSGrabbers == YES) {
                    arg1 = TRUE;
          }
    %orig(arg1, arg2);
}

-(BOOL)isBottomGrabberHidden {
          return LSGrabbers ? TRUE : %orig;
}
%end

%hook SBClockApplicationIconImageView

- (void)_setAnimating:(BOOL)arg1

{
          if(NLCenabled == YES)
          {
               FALSE;
          } 
          else
          {
             %orig;
          }
}

- (void)_updateUnanimatedWithComponents:(id)arg1

{
          if(NLCenabled == YES)
          {
               nil;
          } 
          else
          {
             %orig;
          }
}

%end

%hook SBControlCenterSettings
- (void)setForceVibrantControls:(BOOL)arg1
{
          if(CCVibrance == YES)
          {
               nil;
          } 
          else
          {
             %orig;
          }
}
- (BOOL)forceVibrantControls{
       if(CCVibrance == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}
- (BOOL) useNewBounce{
       if(OldCCBounce == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}
%end

%hook CAMCaptureController

-(BOOL) supportsLiveEffects{
       if(LECamenabled == YES)
       {
                 return FALSE;
       }
       else
       {
                 return %orig;
       }
}

%end

%hook SBFolderSettings

-(void)setAllowNestedFolders:(BOOL)arg1{
       if(SBFolders == YES)
       {
                 TRUE;
       }
       else
       {
                 %orig;
       }
}


-(BOOL) allowNestedFolders{
       if(SBFolders == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}

-(BOOL)_allowNestedFolders{
       if(SBFolders == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}

-(void)setPinchToClose:(BOOL)arg1{
       if(SBFolders2 == YES)
       {
                 TRUE;
       }
       else
       {
                 %orig;
       }
}

-(BOOL) pinchToClose{
       if(SBFolders2 == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}

-(BOOL)_pinchToClose{
       if(SBFolders2 == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}
%end


%hook SBFolderBackgroundView

-(void)layoutSubviews{
             if(SBFolders4 == YES)
             {
                              nil;
                    }
                    else
                    {
                              %orig;
                    }
}
-(BOOL)_shouldUseDarkBackground {
       if(SBFolders3 == YES)
       {
                 return TRUE;
       }
       else
       {
                 return %orig;
       }
}
%end
//required for dark folder icon//
CGColorRef color = [UIColor colorWithWhite: 0.20 alpha:0.85].CGColor;
//code borrowed from DarkFolders7//

//Dark Folder Icon//
%hook SBIconBlurryBackgroundView

- (void)setWallpaperColor:(struct CGColor *)arg1 phase:(struct CGSize)arg2
{
          if(SBFolders3 == YES)
          {
                    
                    %orig(color, arg2);

          }
          else 
                    {
                    %orig(arg1, arg2);
                    }
          
}
%end
// automatically gives user a dark icon with dark folder background.//

%hook SBReachabilitySettings
  -(BOOL) allowOnAllDevices {
       if(TouchID == YES)
      {   return TRUE;
      
      } else
      
      {   return %orig;
      
      }
 }
%end 

%hook SBSearchResultsBackdropView 

-(id) initWithFrame:(CGRect)arg1
{
       if(SevenSpot == YES)
      {   return nil;
      
      } else
      
      {   return %orig;
      
      }
 }

  -(BOOL) useHighQualityGraphics {
       if(SevenSpot == YES)
      {   return TRUE;
      
      } else
      
      {   return %orig;
      
      }
 }
%end 

%hook  SBDeviceLockController
-(bool)deviceHasPasscodeSet
{
          if(ULSPass == YES)
          {
                    return TRUE;
          }
          else
          {
                 return %orig;
          }
}
-(bool)isBlocked
{
          if(ULSPass == YES)
          {
                    return FALSE;
          }
          else
          {
                    return %orig;
          }
}
%end

%hook WebPreferences 
-(void)setLoadsImagesAutomatically:(BOOL)arg1
{
          if(SafariTweak == YES)
          {
               FALSE;
          } 
          else
          {
             %orig;
          }
}
-(BOOL)loadsImagesAutomatically
{
          if(SafariTweak == YES)
          {
               return FALSE;
          } 
          else
          {
           return %orig;
          }
}
%end

%hook UITextInputTraits
-(int)keyboardAppearance
{
          if(SafariKeyboard == YES)
          {
                    return 1;
          }
          else
          {
                    return %orig;
          }
}
%end

%hook TabController
-(unsigned long long)maximumTabDocumentCount
{
          if(unlimitedTabsSafari == YES)
          {
                    return 1000;
          }
          else
          {
                    return %orig;
          }
}
%end

%hook SBUIController
-(void)handleShowNotificationsSystemGesture:(id)arg1

{
          if(BanrReply4 == YES)
          {
               nil;
          } 
          else
          {
             %orig;
          }
}

-(void)handleShowControlCenterSystemGesture:(id)arg1

{
          if(DisableCC == YES)
          {
               nil;
          } 
          else
          {
             %orig;
          }
}
%end

static void loadPrefs()
{
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:plist];
    if(prefs)
    {                                      

       NLCenabled = ( [prefs objectForKey:@"NLCenabled"] ? [[prefs objectForKey:@"NLCenabled"] boolValue] : NLCenabled );     

DisableCC = ( [prefs objectForKey:@"DisableCC"] ? [[prefs objectForKey:@"DisableCC"] boolValue] : DisableCC );

LSBlur = ( [prefs objectForKey:@"LSBlur"] ? [[prefs objectForKey:@"LSBlur"] boolValue] : LSBlur );

DockImage = ( [prefs objectForKey:@"DockImage"] ? [[prefs objectForKey:@"DockImage"] boolValue] : DockImage );

BanrReply3 = ( [prefs objectForKey:@"BanrReply3"] ? [[prefs objectForKey:@"BanrReply3"] boolValue] : BanrReply3 );

BanrReply4 = ( [prefs objectForKey:@"BanrReply4"] ? [[prefs objectForKey:@"BanrReply4"] boolValue] : BanrReply4 );

LSTimeDate = ( [prefs objectForKey:@"LSTimeDate"] ? [[prefs objectForKey:@"LSTimeDate"] boolValue] : LSTimeDate );

softwareUpdatePrefs = ( [prefs objectForKey:@"softwareUpdatePrefs"] ? [[prefs objectForKey:@"softwareUpdatePrefs"] boolValue] : softwareUpdatePrefs );

ResetPrefsDisabled = ( [prefs objectForKey:@"ResetPrefsDisabled"] ? [[prefs objectForKey:@"ResetPrefsDisabled"] boolValue] : ResetPrefsDisabled );

DisableSpot = ( [prefs objectForKey:@"DisableSpot"] ? [[prefs objectForKey:@"DisableSpot"] boolValue] : DisableSpot );

NoPgDots = ( [prefs objectForKey:@"NoPgDots"] ? [[prefs objectForKey:@"NoPgDots"] boolValue] : NoPgDots );

FakeLTESig = ( [prefs objectForKey:@"FakeLTESig"] ? [[prefs objectForKey:@"FakeLTESig"] boolValue] : FakeLTESig );

UTubeBackAudio = ( [prefs objectForKey:@"UTubeBackAudio"] ? [[prefs objectForKey:@"UTubeBackAudio"] boolValue] : UTubeBackAudio );

BanrReply = ( [prefs objectForKey:@"BanrReply"] ? [[prefs objectForKey:@"BanrReply"] boolValue] : BanrReply );

BanrReply2 = ( [prefs objectForKey:@"BanrReply2"] ? [[prefs objectForKey:@"BanrReply2"] boolValue] : BanrReply2 );

VOLHud = ( [prefs objectForKey:@"VOLHud"] ? [[prefs objectForKey:@"VOLHud"] boolValue] : VOLHud );

SBFolders4 = ( [prefs objectForKey:@"SBFolders4"] ? [[prefs objectForKey:@"SBFolders4"] boolValue] : SBFolders4 );

CCFix = ( [prefs objectForKey:@"SCCFix"] ? [[prefs objectForKey:@"CCFix"] boolValue] : CCFix );

CustomLSSliderText = ( [prefs objectForKey:@"CustomLSSliderText"] ? [[prefs objectForKey:@"CustomLSSliderText"] boolValue] : CustomLSSliderText );

CustomLSSlider = ( [prefs objectForKey:@"CustomLSSlider"] ? [prefs objectForKey:@"CustomLSSlider"] : CustomLSSlider );
          [CustomLSSlider retain];

LSGrabbers = ( [prefs objectForKey:@"LSGrabbers"] ? [[prefs objectForKey:@"LSGrabbers"] boolValue] : LSGrabbers );

LSCamGrab = ( [prefs objectForKey:@"LSCamGrab"] ? [[prefs objectForKey:@"LSCamGrab"] boolValue] : LSCamGrab );

LSChevron = ( [prefs objectForKey:@"LSChevron"] ? [[prefs objectForKey:@"LSChevron"] boolValue] : LSChevron );

SBHomeSwchBlr = ( [prefs objectForKey:@"SBHomeSwchBlr"] ? [[prefs objectForKey:@"SBHomeSwchBlr"] boolValue] : SBHomeSwchBlr );

FBMessPlus = ( [prefs objectForKey:@"FBMessPlus"] ? [[prefs objectForKey:@"FBMessPlus"] boolValue] : FBMessPlus );

FBFotos = ( [prefs objectForKey:@"FBFotos"] ? [[prefs objectForKey:@"FBFotos"] boolValue] : FBFotos );

LStatusClock = ( [prefs objectForKey:@"LStatusClock"] ? [[prefs objectForKey:@"LStatusClock"] boolValue] : LStatusClock );

CBlockUsrTweets = ( [prefs objectForKey:@"CBlockUsrTweets"] ? [[prefs objectForKey:@"CBlockUsrTweets"] boolValue] : CBlockUsrTweets );

IconLabels = ( [prefs objectForKey:@"IconLabels"] ? [[prefs objectForKey:@"IconLabels"] boolValue] : IconLabels );

HideTrendSearch = ( [prefs objectForKey:@"HideTrendSearch"] ? [[prefs objectForKey:@"HideTrendSearch"] boolValue] : HideTrendSearch );

RotateSB = ( [prefs objectForKey:@"RotateSB"] ? [[prefs objectForKey:@"RotateSB"] boolValue] : RotateSB );

RotateLS = ( [prefs objectForKey:@"RotateLS"] ? [[prefs objectForKey:@"RotateLS"] boolValue] : RotateLS );

NOTodayLS = ( [prefs objectForKey:@"NOTodayLS"] ? [[prefs objectForKey:@"NOTodayLS"] boolValue] : NOTodayLS );

OldCCBounce = ( [prefs objectForKey:@"OldCCBounce"] ? [[prefs objectForKey:@"OldCCBounce"] boolValue] : OldCCBounce );

NoMulti = ( [prefs objectForKey:@"NoMulti"] ? [[prefs objectForKey:@"NoMulti"] boolValue] : NoMulti ); 

VCTweak = ( [prefs objectForKey:@"VCTweak"] ? [[prefs objectForKey:@"VCTweak"] boolValue] : VCTweak );

PLTweak = ( [prefs objectForKey:@"PLTweak"] ? [[prefs objectForKey:@"PLTweak"] boolValue] : PLTweak );

BattImage = ( [prefs objectForKey:@"BattImage"] ? [[prefs objectForKey:@"BattImage"] boolValue] : BattImage );

SafariTweak = ( [prefs objectForKey:@"SafariTweak"] ? [[prefs objectForKey:@"SafariTweak"] boolValue] : SafariTweak );

SafariKeyboard = ( [prefs objectForKey:@"SafariKeyboard"] ? [[prefs objectForKey:@"SafariKeyboard"] boolValue] : SafariKeyboard );

unlimitedTabsSafari = ( [prefs objectForKey:@"unlimitedTabsSafari"] ? [[prefs objectForKey:@"unlimitedTabsSafari"] boolValue] : unlimitedTabsSafari );

SevenSpot = ( [prefs objectForKey:@"SevenSpot"] ? [[prefs objectForKey:@"SevenSpot"] boolValue] : SevenSpot );

TouchID = ( [prefs objectForKey:@"TouchID"] ? [[prefs objectForKey:@"TouchID"] boolValue] : TouchID );

SwitcherContacts = ( [prefs objectForKey:@"SwitcherContacts"] ? [[prefs objectForKey:@"SwitcherContacts"] boolValue] : SwitcherContacts );

LECamenabled = ( [prefs objectForKey:@"LECamenabled"] ? [[prefs objectForKey:@"LECamenabled"] boolValue] : LECamenabled );

SBFolders = ( [prefs objectForKey:@"SBFolders"] ? [[prefs objectForKey:@"SBFolders"] boolValue] : SBFolders );

SBFolders2 = ( [prefs objectForKey:@"SBFolders2"] ? [[prefs objectForKey:@"SBFolders2"] boolValue] : SBFolders2);

SBFolders3 = ( [prefs objectForKey:@"SBFolders3"] ? [[prefs objectForKey:@"SBFolders3"] boolValue] : SBFolders3);

SevenSpot = ( [prefs objectForKey:@"SevenSpot"] ? [[prefs objectForKey:@"SevenSpot"] boolValue] : SevenSpot );

ULSPass = ( [prefs objectForKey:@"ULSPass"] ? [[prefs objectForKey:@"ULSPass"] boolValue] : ULSPass );

CCVibrance = ( [prefs objectForKey:@"CCVibrance"] ? [[prefs objectForKey:@"CCVibrance"] boolValue] : CCVibrance );
}
}

%ctor 
{
          CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.ikilledappl3.xenok-changed"), NULL, CFNotificationSuspensionBehaviorCoalesce);
                    loadPrefs();
}


