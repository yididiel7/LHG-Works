# UPDATE_INSTALLATION ` yt-dlp -U `

[YTP-DL: The Easiest Way to Download Songs from YouTube Videos](https://tinyurl.com/y8pwsfmp).

### Command to download Youtube Videos.

`$ yt-dlp -f "bv+ba/b"`


### UPDATE

You can use yt-dlp -U to update if you are using the release binaries

If you installed with PIP, simply re-run the same command that was used to install the program

For other third-party package managers, see the wiki or refer their documentation

### DEPENDENCIES

While all the other dependencies are optional, ffmpeg and ffprobe are highly recommended

### Strongly recommended

ffmpeg and ffprobe - Required for merging separate video and audio files as well as for various post-processing tasks. License depends on the build

*Note: There are some regressions in newer ffmpeg versions that causes various issues when used alongside yt-dlp. Since ffmpeg is such an important dependency, we provide custom builds with patches for these issues at yt-dlp/FFmpeg-Builds. See the readme for details on the specific issues solved by these builds*

To use or redistribute the dependencies, you must agree to their respective licensing terms.

The standalone release binaries are built with the Python interpreter and the packages marked with * included.

If you do not have the necessary dependencies for a task you are attempting, yt-dlp will warn you. All the currently available dependencies are visible at the top of the --verbose output

### FORMAT SELECTION

```
By default, yt-dlp tries to download the best available quality if you don't pass any options. This is generally equivalent to using -f bestvideo*+bestaudio/best. However, if multiple audiostreams is enabled (--audio-multistreams), the default format changes to -f bestvideo+bestaudio/best. Similarly, if ffmpeg is unavailable, or if you use yt-dlp to stream to stdout (-o -), the default becomes -f best/bestvideo+bestaudio.

Deprecation warning: Latest versions of yt-dlp can stream multiple formats to the stdout simultaneously using ffmpeg. So, in future versions, the default for this will be set to -f bv*+ba/b similar to normal downloads. If you want to preserve the -f b/bv+ba setting, it is recommended to explicitly specify it in the configuration options.

The general syntax for format selection is -f FORMAT (or --format FORMAT) where FORMAT is a selector expression, i.e. an expression that describes format or formats you would like to download.

The simplest case is requesting a specific format; e.g. with -f 22 you can download the format with format code equal to 22. You can get the list of available format codes for particular video using --list-formats or -F. Note that these format codes are extractor specific.

You can also use a file extension (currently 3gp, aac, flv, m4a, mp3, mp4, ogg, wav, webm are supported) to download the best quality format of a particular file extension served as a single file, e.g. -f webm will download the best quality format with the webm extension served as a single file.
```

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
