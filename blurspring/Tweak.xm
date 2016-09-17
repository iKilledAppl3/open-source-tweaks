//BlurSpring created by iKilledAppl3 on September 16, 2016 
//Based on BootscreenCustomization by ca13ra1 thanks buddy!

//Currently doesn't work feel free to mess with it I was just messing with some code anyhow lol 
//Maybe someone can make a full tweak IDK though 
//It's badly coded so feel free to shame me 
//I am not sure why I even tried this but ehh...

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface PUIProgressWindow : NSObject
{
	CGImageRef _appleLogo;
	CALayer * _layer;
	CGSize _displaySize;
}

@property (nonatomic, readonly) CALayer *layer;
- (void)_collectDisplayInfo;
- (void)_createLayer;
- (void)_layoutScreen;
- (CGImageRef)_createImageWithName:(NSString *)string scale:(CGFloat)scale displayHeight:(CGFloat)height;
@end

PUIProgressWindow *window


%hook PUIProgressWindow

-(void)_createLayer {
	%orig;
	
CALayer *layer = MSHookIvar<CALayer *>(self, "_layer");

layer.backgroundColor =  [UIColor grayColor].CGColor;

UIVisualEffect *blurEffect;

blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];

UIVisualEffectView *visualEffectView;
visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];

visualEffectView.frame = [[UIScreen mainScreen] bounds];
	
}

%end
