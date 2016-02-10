ARCHS = armv7 arm64
TARGET = iphone:clang:latest
SDK = iPhoneOS8.1

include theos/makefiles/common.mk

BUNDLE_NAME = MousaiSettings
MousaiSettings_FILES = MousaiSettings.mm
MousaiSettings_INSTALL_PATH = /Library/PreferenceBundles
MousaiSettings_FRAMEWORKS = UIKit
MousaiSettings_PRIVATE_FRAMEWORKS = Preferences
MousaiSettings_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/MousaiSettings.plist$(ECHO_END)
