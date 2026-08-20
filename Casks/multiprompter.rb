cask "multiprompter" do
  version "1.1"
  sha256 "4002d0934cd4c5fea6735b1a1caed2919d610773df2ec399ba2579049251defa"

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
