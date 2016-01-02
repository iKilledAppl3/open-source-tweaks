ARCHS = armv7 arm64
TARGET = iphone:clang:7.1
SDK = iPhoneOS8.1

include theos/makefiles/common.mk

TWEAK_NAME = Xenok
Xenok_FILES = Tweak.xm
Xenok_FRAMEWORKS = UIKit
Xenok_CFLAGS = -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += xenok
include $(THEOS_MAKE_PATH)/aggregate.mk
