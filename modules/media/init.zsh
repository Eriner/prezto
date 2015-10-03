#
# Defines media aliases
#
# Authors:
#   Matt Hamilton <m@tthamilton.com>
#
#

# ffmpeg is required for almost every alias here.
if (( ! $+commands[ffmpeg] )); then
  return 1
fi

# may add other dependency checks (that can be disabled with zstyle)
# for the other dependencies of some functions
#   youtube-dl, lame, optipng, jpegoptim


alias ytmp3='youtube-dl -x --audio-format mp3'
