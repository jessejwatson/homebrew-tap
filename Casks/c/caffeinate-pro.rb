cask "caffeinate-pro" do
  version "1.0.0"
  sha256 "0faaea1f248f0d85370cb109f65c39c50ea2528cdf790fb39470b0eb2fdf29e4"

  url "https://github.com/jessejwatson/CaffeinateMyMac/releases/download/v#{version}/Caffeinate-Pro.dmg",
      verified: "github.com/jessejwatson/CaffeinateMyMac/"
  name "Caffeinate Pro"
  desc "Menu bar utility to keep your Mac awake"
  homepage "https://github.com/jessejwatson/CaffeinateMyMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Caffeinate Pro.app"

  zap trash: [
    "~/Library/Preferences/com.jessejwatson.CaffeinateMyMac.plist",
    "~/Library/Caches/com.jessejwatson.CaffeinateMyMac",
  ]
end
