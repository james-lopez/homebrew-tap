cask "botometer" do
  version "1.0.0"
  sha256 "2086c46771229028f1dac70834f30d7b844bb9b85f487c1741d290766b5b44ed"

  url "https://github.com/james-lopez/botometer/releases/download/v#{version}/botometer.zip"
  name "Bot-o-Meter"
  desc "macOS menu bar app showing Claude CLI usage as speedometer gauge dials"
  homepage "https://github.com/james-lopez/botometer"

  depends_on macos: ">= :sonoma"

  app "botometer.app"

  zap trash: [
    "~/Library/Caches/com.jameslopez.botometer",
    "~/Library/Preferences/com.jameslopez.botometer.plist",
  ]
end
