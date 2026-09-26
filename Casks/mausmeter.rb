cask "mausmeter" do
  version "1.0.7"
  sha256 "a4dae77f1f56192dd6e05582f5fe71b4e4e7da626562da576652c10156581866"

  url "https://shop.pixagentur.com/mausmeter/download/#{version}"
  name "Mausmeter"
  desc "Menu bar statistics for mouse and keyboard activity"
  homepage "https://pixagentur.com/mausmeter/"

  livecheck do
    url "https://shop.pixagentur.com/mausmeter/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma
  container type: :dmg

  app "Mausmeter.app"
end
