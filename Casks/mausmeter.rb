cask "mausmeter" do
  version "1.0.5"
  sha256 "0e397417b09037e48d4717871ebaf3dae013806fa357d29e1699636d0752d8ce"

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
