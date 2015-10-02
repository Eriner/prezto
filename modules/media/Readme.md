Media
=====

Provides aliases and functions for media manipulation.

Settings
--------

ffmpeg has many options and variations that trade quality, compression, and CPU cycles. This module uses sane defaults in an effort to choose what will be best for *most* people.

If you would like to change the *default* settings, they can be changed using the following example:

	zstyle ':prezto:module:media:ffmpeg' ffwebm 'fast'

| option  | quality | compression | speed   | description                                                                                                                              |
|---------|---------|-------------|---------|------------------------------------------------------------------------------------------------------------------------------------------|
| fast    | low     | high        | fast    | This option should be used if you do not care about quality, and only care about a low overhead to convert the file                      |
| default | average | average     | average | This is the default setting, which tries to balance the options to produce a decent quality file with an average compression ratio.      |
| best    | high    | average     | slow    | If all you care about is producing the best quality conversions and are willing to spend more CPU cycles, you should choose this option. |

Aliases
-------

### ffmpeg

All of these aliases and functions will output the resulting file in the *current directory* unless otherwise specified.

The options above can also be set on the command line as an optional argument.

#### Transcoding

  - `fft264 <file>` converts a video file to x264 (does not transcode audio).
  - `fft265 <file>` converts a video file to x265 (does not transcode audio).
  - `fftmute <file>` disables the audio stream of a file.
  - `fftwebm <file>` converts a video file to webm (vp9) format with opus audio.
  - `fftwebm -mute <file>` converts a video file to webm (vp9) format with no audio.
  - `fftgif <file>` converts a video file to gif.
  - `ffts <dimensions> <file>` resize a video for given `<dimensions>`. (ex: 480x320) 

#### Split

  - `ffsx <count> <file>` split a file into x many parts, defined by `<count>`.
  - `ffst <time> <file>` split a file into two parts where the first ends at `<time>`. (ex: 00:10:32)

#### Join

  - `ffj <file> ... <file>` join an arbitrary nubmer of files into a single file.

#### Extract

  - `ffe <file>` extract **all** data streams into a new directory (`basename <file>`)
  - `ffe -a <file>` extract **audio** data streams (`<file>_audio`)
  - `ffe -v <file>` extract **video** data streams (`<file>_video`)
  - `ffe -i <time> <file>` extract image frames from video at `<time>` (ex: 00:10:32)

#### Merge

  - `ffml <file> ... <file>` merge files and end at *longest* clip.
  - `ffms <file> ... <file>` merge files and end at *shortest* clip.
  
### lame

  - `lvt320 <file>` transcode to mp3 320.
  - `lvt0 <file>` transcode to mp3 V0.
  - `lvt2 <file>` transcode to mp3 V2.

### youtube-dl

  - `ytdl` alias to `youtube-dl`.
  - `ytmp3 <url>` download audio from a given URL. 

### image optimization

  - `imgo <file>` optimize image (lossless) based on file type.
