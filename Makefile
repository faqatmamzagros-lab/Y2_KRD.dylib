THEOS_DEVICE_IP = localhost
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Y2_KRD_ModMenu
Y2_KRD_ModMenu_FILES = Tweak.mm
Y2_KRD_ModMenu_FRAMEWORKS = UIKit Foundation CoreGraphics Metal QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk
