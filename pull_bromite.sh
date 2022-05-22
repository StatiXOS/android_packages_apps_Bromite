function pull_bromite() {
  mkdir -p app/{ChromePublic,SystemWebView}/{arm,arm64}

  url_stem="https://github.com/bromite/bromite/releases/download"
  latest_tag=$(curl -s https://api.github.com/repos/bromite/bromite/releases/latest | jq -r '.tag_name')

  wget -q --show-progress ${url_stem}/${latest_tag}/arm_ChromePublic.apk -O app/ChromePublic/arm/ChromePublic.apk
  wget -q --show-progress ${url_stem}/${latest_tag}/arm_SystemWebView.apk -O app/SystemWebView/arm/SystemWebView.apk
  wget -q --show-progress ${url_stem}/${latest_tag}/arm64_ChromePublic.apk -O app/ChromePublic/arm64/ChromePublic.apk
  wget -q --show-progress ${url_stem}/${latest_tag}/arm64_SystemWebView.apk -O app/SystemWebView/arm64/SystemWebView.apk
}


pull_bromite