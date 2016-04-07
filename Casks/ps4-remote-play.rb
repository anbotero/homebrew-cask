cask 'ps4-remote-play' do
  version :latest
  sha256 :no_check

  url 'https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg'
  name 'PS4 Remote Play'
  homepage 'https://remoteplay.dl.playstation.net/remoteplay'
  license :unknown

  auto_updates true

  pkg 'RemotePlayInstaller.pkg'

  uninstall pkgutil: 'com.playstation.RemotePlay.pkg'

  zap       delete:  '~/Library/Application Support/Sony Corporation/PS4 Remote Play'
end
