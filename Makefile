TARGET = :clang
ARCHS = armv7 arm64
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FastUnlockX
FastUnlockX_FILES = FastUnlockX.xm

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	find . -name ".DS_Store" -delete

after-stage::
	$(ECHO_NOTHING)find $(FW_STAGING_DIR) -iname '*.png' -exec pincrush-osx -i {} \;$(ECHO_END)

after-install::
	install.exec "killall -9 SpringBoard"
