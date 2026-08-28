cask "multiprompter" do
  version "1.2"
  sha256 "f5216562466434e87b92f490235a1c7c552c6a20851795df62f76bb883550e3a"

  url "https://github.com/multiprompter/releases/releases/download/v#{version}/Multiprompter.dmg"
  name "Multiprompter"
  desc "Multi-window teleprompter with synced scrolling"
  homepage "https://multiprompter.app/"

  depends_on macos: :sequoia

  app "Multiprompter.app"

  zap trash: [
    "~/Library/Containers/com.traversy.Multiprompter",
    "~/Library/Saved Application State/com.traversy.Multiprompter.savedState",
  ]
end
