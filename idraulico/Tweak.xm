// Hide the annoying ads in Super Jungle World

//Created by iKilledAppl3 on 9/11/16

//#NeverForget 9/11/01 

%hook GADInterstitialViewController

-(void)presentFromViewController:(id)arg1:(id)arg2 {

arg1 = nil;
YES;

}

-(id)initWithAdView:(id)arg1 {
    return nil;

}

-(id)initWithAdSlot:(id)arg1 {
    return nil;

}

-(void)setScreenName:(id)arg1 {
    arg1 = nil;

}

-(id)screenName {
    return nil;

}

-(bool)isLoaded {
    return FALSE;

}

-(void)finishAppearing {
    YES;

}

-(void)finishDismissal {
    YES;

}

-(void)relinquishScreenWithCompletion:(id)arg1 {

    YES;

}
%end

%hook GADAdView 

-(bool)canGoForward {
    return TRUE;

}

-(void)webViewDidFinishLoad:(id)arg1 {
                   %orig;

}


-(void)setViewController:(id)arg1 {
          
            arg1 = nil;

}
%end

%hook UIWebView

-(id)initWithFrame:(CGRect)arg1 {

    return nil;
}

-(void)setDelegate:(id)arg1 {
     
   arg1 = nil;
}

-(void)dealloc {

}
%end
