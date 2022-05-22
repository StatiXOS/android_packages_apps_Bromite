ifeq ($(TARGET_ARCH), arm64)
LOCAL_PATH := $(my-dir)

# Bromite
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := org.bromite.bromite
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Browser2 QuickSearchBox
LOCAL_SRC_FILES := app/arm64_ChromePublic.apk

# Bromite Webview
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := org.bromite.webview
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := WebView webview
LOCAL_SRC_FILES := app/arm64_SystemWebView.apk

include vendor/Bromite/bromite.mk
endif