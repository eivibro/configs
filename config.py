# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Bindings for normal mode
config.bind('gY', 'spawn mpv --ytdl-format="bestvideo[height<=?720][vcodec!=vp9]+bestaudio/best" {url}')
config.bind('gy', 'hint links spawn mpv --ytdl-format="bestvideo[height<=?720][vcodec!=vp9]+bestaudio/best" {hint-url}')
