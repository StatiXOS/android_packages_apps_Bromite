LOCAL_PATH := $(my-dir)

# Bromite
include $(CLEAR_VARS)
LOCAL_MODULE := org.bromite.bromite
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Browser2 QuickSearchBox
LOCAL_SRC_FILES := app/$(TARGET_ARCH)/ChromePublic.apk
include $(BUILD_PREBUILT)

# Bromite Webview
include $(CLEAR_VARS)
LOCAL_MODULE := org.bromite.webview
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := WebView webview
LOCAL_SRC_FILES := app/$(TARGET_ARCH)/SystemWebView.apk
include $(BUILD_PREBUILT)
