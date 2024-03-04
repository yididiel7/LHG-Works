$ curl cheat.sh/

## Command to download Youtube Videos.

`$ yt-dlp -f "bv+ba/b"`

# yt-dlp
# A youtube-dl fork with additional features and fixes.
# Download videos from YouTube and other websites.
# More information: <https://github.com/yt-dlp/yt-dlp>.

# Download a video or playlist (with the default options from command below):
    yt-dlp "https://www.youtube.com/watch?v=oHg5SJYRHA0"

# List the available downloadable formats for a video:
    yt-dlp --list-formats "https://www.youtube.com/watch?v=oHg5SJYRHA0"

# Download a video with a defined format, in this case the best mp4 video available (default is "bv\*+ba/b"):
    yt-dlp --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" "https://www.youtube.com/watch?v=oHg5SJYRHA0"

# Extract audio from a video (requires ffmpeg or ffprobe):
    yt-dlp --extract-audio "https://www.youtube.com/watch?v=oHg5SJYRHA0"

# Specify audio format and audio quality of extracted audio (between 0 (best) and 10 (worst), default = 5):
    yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 "https://www.youtube.com/watch?v=oHg5SJYRHA0"

# Download all playlists of YouTube channel/user keeping each playlist in separate directory:
    yt-dlp -o "%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" "https://www.youtube.com/user/TheLinuxFoundation/playlists"

# Download Udemy course keeping each chapter in separate directory under MyVideos directory in your home:
    yt-dlp -u user -p password -P "~/MyVideos" -o "%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s" "https://www.udemy.com/java-tutorial"

# Download entire series season keeping each series and each season in separate directory under C:/MyVideos:
    yt-dlp -P "C:/MyVideos" -o "%(series)s/%(season_number)s - %(season)s/%(episode_number)s - %(episode)s.%(ext)s" "https://videomore.ru/kino_v_detalayah/5_sezon/367617"

Tip: You can use the -v -F to see how the formats have been sorted (worst to best).
Format Selection examples

# Download and merge the best video-only format and the best audio-only format,
# or download the best combined format if video-only format is not available
    $ yt-dlp -f "bv+ba/b"

# Download best format that contains video,
# and if it doesn't already have an audio stream, merge it with best audio-only format
    $ yt-dlp -f "bv*+ba/b"

# Same as above
    $ yt-dlp

# Download the best video-only format and the best audio-only format without merging them
# For this case, an output template should be used since
# by default, bestvideo and bestaudio will have the same file name.
    $ yt-dlp -f "bv,ba" -o "%(title)s.f%(format_id)s.%(ext)s"

# Download and merge the best format that has a video stream,
# and all audio-only formats into one file
    $ yt-dlp -f "bv*+mergeall[vcodec=none]" --audio-multistreams

# Download and merge the best format that has a video stream,
# and the best 2 audio-only formats into one file
    $ yt-dlp -f "bv*+ba+ba.2" --audio-multistreams


# The following examples show the old method (without -S) of format selection
# and how to use -S to achieve a similar but (generally) better result

# Download the worst video available (old method)
    $ yt-dlp -f "wv*+wa/w"

# Download the best video available but with the smallest resolution
    $ yt-dlp -S "+res"

# Download the smallest video available
    $ yt-dlp -S "+size,+br"



# Download the best mp4 video available, or the best video if no mp4 available
    $ yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b"

# Download the best video with the best extension
# (For video, mp4 > mov > webm > flv. For audio, m4a > aac > mp3 ...)
    $ yt-dlp -S "ext"



# Download the best video available but no better than 480p,
# or the worst video if there is no video under 480p
    $ yt-dlp -f "bv*[height<=480]+ba/b[height<=480] / wv*+ba/w"

# Download the best video available with the largest height but no better than 480p,
# or the best video with the smallest resolution if there is no video under 480p
    $ yt-dlp -S "height:480"

# Download the best video available with the largest resolution but no better than 480p,
# or the best video with the smallest resolution if there is no video under 480p
# Resolution is determined by using the smallest dimension.
# So this works correctly for vertical videos as well
    $ yt-dlp -S "res:480"



# Download the best video (that also has audio) but no bigger than 50 MB,
# or the worst video (that also has audio) if there is no video under 50 MB
    $ yt-dlp -f "b[filesize<50M] / w"

# Download largest video (that also has audio) but no bigger than 50 MB,
# or the smallest video (that also has audio) if there is no video under 50 MB
    $ yt-dlp -f "b" -S "filesize:50M"

# Download best video (that also has audio) that is closest in size to 50 MB
    $ yt-dlp -f "b" -S "filesize~50M"



# Download best video available via direct link over HTTP/HTTPS protocol,
# or the best video available via any protocol if there is no such video
    $ yt-dlp -f "(bv*+ba/b)[protocol^=http][protocol!*=dash] / (bv*+ba/b)"

# Download best video available via the best protocol
# (https/ftps > http/ftp > m3u8_native > m3u8 > http_dash_segments ...)
    $ yt-dlp -S "proto"



# Download the best video with either h264 or h265 codec,
# or the best video if there is no such video
    $ yt-dlp -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)"

# Download the best video with best codec no better than h264,
# or the best video with worst codec if there is no such video
    $ yt-dlp -S "codec:h264"

# Download the best video with worst codec no worse than h264,
# or the best video with best codec if there is no such video
    $ yt-dlp -S "+codec:h264"



# More complex examples

# Download the best video no better than 720p preferring framerate greater than 30,
# or the worst video (still preferring framerate greater than 30) if there is no such video
    $ yt-dlp -f "((bv*[fps>30]/bv*)[height<=720]/(wv*[fps>30]/wv*)) + ba / (b[fps>30]/b)[height<=720]/(w[fps>30]/w)"

# Download the video with the largest resolution no better than 720p,
# or the video with the smallest resolution available if there is no such video,
# preferring larger framerate for formats with the same resolution
    $ yt-dlp -S "res:720,fps"



# Download the video with smallest resolution no worse than 480p,
# or the video with the largest resolution available if there is no such video,
# preferring better codec and then larger total bitrate for the same resolution
    $ yt-dlp -S "+res:480,codec,br"

yt-dlp is a youtube-dl fork based on the now inactive youtube-dlc. The main focus of this project is adding new features and patches while also keeping up to date with the original project

    `yt-dlp -f "bv+ba/b" https://www.youtube.com/watch?v=tNkCmOOsxOE`

By default, yt-dlp tries to download the best available quality if you don't pass any options. 

    This is generally equivalent to using -f bestvideo*+bestaudio/best

Download the best mp4 video available, or the best video if no mp4 available

    ` $ yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" `

```
mv 'root login access in Kali Linux-e7ZKZq-1xSI.mp4' /home/srhills/Videos
 2088  find -name youtube-dl
 2089  sudo apt-get remove youtube-dl
 2091  chmod +x yt-dlp
 2092  sudo mv yt-dlp ~/bin/
 2093  cd ~/bin
 2094  exa
 2095  cd
 2096  vim ~/.zshrc
 2097  source ~/.zshrc
 2098  ln -s ~/bin/yt-dlp ~/bin/youtube-dl
 2099  echo "$PATH"
 2100  youtube-dl --version
 2101  /usr/bin/youtube-dl --version
 2102  c
 2103  sudo apt update
 2104  cd Downloads
 2105  yt-dlp -f "bv+ba/b" https://www.youtube.com/watch?v=tNkCmOOsxOE
 ```
 [](https://github.com/yt-dlp/yt-dlp#format-selection-examples)
