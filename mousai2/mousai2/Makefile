TARGET = iphone:clang:latest
SDK = iPhoneOS8.1
ARCHS = armv7 arm64

include theos/makefiles/common.mk

BUNDLE_NAME = Mousai2
Mousai2_FILES = Mousai2.mm AppleMusic.mm Podcasts.mm AboutM2.mm PandoraM2.mm SpotifyM2.mm YTMusicM2.mm
Mousai2_INSTALL_PATH = /Library/PreferenceBundles
Mousai2_FRAMEWORKS = UIKit MessageUI CoreGraphics
Mousai2_PRIVATE_FRAMEWORKS = Preferences
Mousai2_LIBRARIES += cepheiprefs MobileGestalt

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Mousai2.plist$(ECHO_END)
