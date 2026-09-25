# PixAgentur Homebrew Tap

Homebrew casks for the notarized macOS apps [Mausmeter](https://pixagentur.com/mausmeter/) and [ServerWatch](https://pixagentur.com/serverwatch/). Both downloads come directly from the PixAgentur shop and can be used as a trial without an account.

```sh
brew tap nicooo76/pixagentur
brew install --cask mausmeter
brew install --cask serverwatch
```

The apps contain Sparkle for in-app updates. Automatic update checks are off by default and can be enabled in each app's settings. "Check Now" works without enabling automatic checks.

The casks declare `auto_updates true` because Sparkle can download and install an update. Once a new release is published, the cask version and SHA-256 must be updated here. Homebrew users then receive that version when they run `brew update` and `brew upgrade --cask`, subject to Homebrew's installed-version comparison. Homebrew does not run these commands on a schedule for users. CaskHub's general catalog reads Homebrew's official cask API; this third-party tap alone does not add the apps to that catalog.

## Release maintenance

After publishing a notarized release and updating its Sparkle appcast, download the public versioned DMG, calculate its SHA-256, and update the matching file in `Casks/`. Check that the cask version equals the appcast's `sparkle:shortVersionString`, then run `brew livecheck`, `brew fetch`, `brew style`, and `brew audit` for the cask before pushing. Keep the older versioned downloads available for users who have not upgraded yet.
