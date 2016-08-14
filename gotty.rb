require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.13'

  url "https://github.com/yudai/gotty/releases/download/v0.0.13/gotty_darwin_amd64.tar.gz"
  sha256 "009412700b477ea8502966c47f50bc11dceca8130319b7d091b86acad5d91761"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.13/gotty_linux_amd64.tar.gz"
      sha256 "6c5ac6e878f7c79cfe6e1b394be00d67e6165c80e94debf0767ce2da47224266"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
