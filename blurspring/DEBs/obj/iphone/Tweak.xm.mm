#line 1 "Tweak.xm"



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

PUIProgressWindow *window = [[UIScreen mainScreen] bounds];


#include <logos/logos.h>
#include <substrate.h>
@class PUIProgressWindow; 
static void (*_logos_orig$_ungrouped$PUIProgressWindow$_createLayer)(PUIProgressWindow*, SEL); static void _logos_method$_ungrouped$PUIProgressWindow$_createLayer(PUIProgressWindow*, SEL); 

#line 24 "Tweak.xm"


static void _logos_method$_ungrouped$PUIProgressWindow$_createLayer(PUIProgressWindow* self, SEL _cmd) {
	_logos_orig$_ungrouped$PUIProgressWindow$_createLayer(self, _cmd);
	
CALayer *layer = MSHookIvar<CALayer *>(self, "_layer");

layer.backgroundColor =  [UIColor grayColor].CGColor;

UIVisualEffect *blurEffect;

blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];

UIVisualEffectView *visualEffectView;
visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];

visualEffectView.frame = [[window] bounds];
	
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUIProgressWindow = objc_getClass("PUIProgressWindow"); MSHookMessageEx(_logos_class$_ungrouped$PUIProgressWindow, @selector(_createLayer), (IMP)&_logos_method$_ungrouped$PUIProgressWindow$_createLayer, (IMP*)&_logos_orig$_ungrouped$PUIProgressWindow$_createLayer);} }
#line 45 "Tweak.xm"
