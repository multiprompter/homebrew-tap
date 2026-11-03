cask "multiprompter" do
  version "1.4"
  sha256 "b4d66a96aacc21245b08ccf6f0209a9d95dfb79446fd1338e2427b1b6a351599"

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
