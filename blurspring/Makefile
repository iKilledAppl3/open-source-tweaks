ARCHS = armv7 arm64
TARGET = iphone:clang:latest
SDK = iPhoneOS8.1
THEOS_BUILD_DIR = DEBs

include theos/makefiles/common.mk

TWEAK_NAME = BlurSpring
BlurSpring_FILES = Tweak.xm
BlurSpring_FRAMEWORKS = UIKit
BlurSpring_CFLAGS = -Wno-error
BlurSpring_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
