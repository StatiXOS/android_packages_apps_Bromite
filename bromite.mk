# Bromite packages
PRODUCT_PACKAGES += \
	Bromite \

ifeq ($(USES_BROMITE_WEBVIEW), yes)
PRODUCT_PACKAGES += \
	BromiteSystemWebView \
	BromiteWebViewStatixOverlay
endif
