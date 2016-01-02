ARCHS = armv7 arm64


include theos/makefiles/common.mk

BUNDLE_NAME = Xenok
Xenok_FILES = Xenok.mm
Xenok_INSTALL_PATH = /Library/PreferenceBundles
Xenok_FRAMEWORKS = UIKit
Xenok_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Xenok.plist$(ECHO_END)
