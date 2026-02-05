class Jenie < Formula
  desc "CLI tool for interacting with Xano backend APIs"
  homepage "https://github.com/Nattothemoon/my-first-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Nattothemoon/my-first-cli/releases/download/v1.0.0/jenie-darwin-arm64.tar.gz"
      sha256 "4d083fa914785bae8d7ef21eb9fb5d3e2e2ee134855bd4126a2c82971517a479"

      def install
        bin.install "jenie-darwin-arm64" => "jenie"
      end
    else
      url "https://github.com/Nattothemoon/my-first-cli/releases/download/v1.0.0/jenie-darwin-amd64.tar.gz"
      sha256 "97c620bf2dd512dd36438bdbe01bcbbaea5b01276d24a9e3ac8fbe2728b1c3de"

      def install
        bin.install "jenie-darwin-amd64" => "jenie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Nattothemoon/my-first-cli/releases/download/v1.0.0/jenie-linux-amd64.tar.gz"
      sha256 "2181fa8b03148534b1a843c1231c1a537a05665fa81f30023ad5c541cfc699cc"

      def install
        bin.install "jenie-linux-amd64" => "jenie"
      end
    end
  end

  test do
    system "#{bin}/jenie", "help"
  end
end
