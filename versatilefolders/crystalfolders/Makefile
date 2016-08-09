ARCHS = armv7 arm64 
SDK = iPhoneOS8.1
TARGET = iphone:clang:latest

include theos/makefiles/common.mk

BUNDLE_NAME = CrystalFolders
CrystalFolders_FILES = CrystalFolders.mm
CrystalFolders_INSTALL_PATH = /Library/PreferenceBundles
CrystalFolders_FRAMEWORKS = UIKit
CrystalFolders_PRIVATE_FRAMEWORKS = Preferences
CFLAGS = -Wno-deprecated -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CrystalFolders.plist$(ECHO_END)
