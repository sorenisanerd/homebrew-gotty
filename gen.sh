#/bin/bash -e

TAG_NAME=`curl -s -L https://api.github.com/repos/sorenisanerd/gotty/releases/latest | jq -r .tag_name`
VERSION=${TAG_NAME#v}

SHASUMS=`curl -s -L "https://github.com/sorenisanerd/gotty/releases/download/${TAG_NAME}/SHA256SUMS"`

SHA256_DARWIN_ARM=`echo "${SHASUMS}" | grep gotty_.*darwin_arm64.tar.gz | cut -f 1 -d ' '`
SHA256_DARWIN=`echo "${SHASUMS}" | grep gotty_.*darwin_amd64.tar.gz | cut -f 1 -d ' '`
SHA256_LINUX=`echo "${SHASUMS}" | grep gotty_.*linux_amd64.tar.gz | cut -f 1 -d ' '`

echo "TAG_NAME: ${TAG_NAME}"
echo "VERSION: ${VERSION}"
echo "SHA256 DARWIN_ARM: ${SHA256_DARWIN_ARM}"
echo "SHA256 DARWIN: ${SHA256_DARWIN}"
echo "SHA256  LINUX: ${SHA256_LINUX}"

cat > gotty.rb <<EOF
require "formula"

class Gotty < Formula
  homepage "https://github.com/sorenisanerd/gotty"
  version '$VERSION'

  if OS.mac? && Hardware.CPU.arm?
      url "https://github.com/sorenisanerd/gotty/releases/download/${TAG_NAME}/gotty_${VERSION}_darwin_arm64.tar.gz"
      sha256 "$SHA256_DARWIN_ARM"
  end

  if OS.mac? && Hardware.CPU.intel?
      url "https://github.com/sorenisanerd/gotty/releases/download/${TAG_NAME}/gotty_${VERSION}_darwin_arm64.tar.gz"
      sha256 "$SHA256_DARWIN"
  end

  if OS.linux? && Hardware.CPU.is_64_bit?
      url "https://github.com/sorenisanerd/gotty/releases/download/${TAG_NAME}/gotty_${VERSION}_linux_amd64.tar.gz"
      sha256 "$SHA256_LINUX"
  end

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
EOF
