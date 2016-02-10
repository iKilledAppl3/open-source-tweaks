ARCHS = armv7 arm64
TARGET = iphone:clang:latest
SDK = iPhoneOS8.1
THEOS_BUILD_DIR = DEBs

include theos/makefiles/common.mk

TWEAK_NAME = Mousai2
Mousai2_FILES = Tweak.xm
Mousai2_FRAMEWORKS = UIKit
Mousai2_EXTRA_FRAMEWORKS += Cephi
Mousai2_CFLAGS = -Wno-error
Mousai2_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard" "killall -9 Music"
SUBPROJECTS += mousai2
include $(THEOS_MAKE_PATH)/aggregate.mk
