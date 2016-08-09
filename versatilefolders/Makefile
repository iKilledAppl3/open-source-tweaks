SDK = iPhoneOS8.1
TARGET = iphone:clang:latest
ARCHS = armv7 arm64 
THEOS_BUILD_DIR = DEBs

include theos/makefiles/common.mk

TWEAK_NAME = VersatileFolders
VersatileFolders_FILES = Tweak.xm
VersatileFolders_FRAMEWORKS = UIKit
VersatileFolders_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += crystalfolders
include $(THEOS_MAKE_PATH)/aggregate.mk
