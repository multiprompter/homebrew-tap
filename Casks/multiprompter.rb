cask "multiprompter" do
  version "1.3"
  sha256 "1037950bd14c54cc0952e516d084376b0fa4514ef1dfd09b6770e8448c3811f0"

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
