cask "botometer" do
  version "1.0.1"
  sha256 "bde48fb331195ac9cc46f69de12974a1b0eb1b558184c5ea16df8076c5140df7"

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
