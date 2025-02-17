cask "sparrow" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.6.6"

  if Hardware::CPU.intel?
    sha256 "ab43a01cfbb8995fa665479df35cb1660cedc7e758710dd6ff043b1219d711be"
  else
    sha256 "83946a39304b4166c91094c510438579d2527a51d22d94e8cb9c8bd192a0846e"
  end

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
