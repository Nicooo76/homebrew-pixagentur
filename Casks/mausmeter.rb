cask "mausmeter" do
  version "1.0.6"
  sha256 "61be617cfd0fb6b43096340db8604834245a50416dbc4299bacbeb42a4932e54"

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
