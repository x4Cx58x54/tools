### Video meta-data

```
ffprobe {input_video}
```

For more information,

```
ffprobe -v verbose {input_video}
```

### Extract frames from a video

```
ffmpeg -i {input_video} -vf scale={width}:{height},fps={fps} -q:v {quality} {target_dir_for_video}/{format}
```

* `input_video` is the path of the video to extract.
* `width` and `height` are the extracted frame dimensions.
* `fps` is the sampling fps.
* `-q:v quality` is available only if extracted frame is in jpg format. `quality` parameter is an integer between 2 (best) and 31 (worst). 10 is fine.
* `target_dir_for_video` is the directory where the extracted frames will be stored.
* `format` specifies the extracted frames file names, e.g.: `%08d.jpg`.


### Video duration

```
ffprobe -v error -select_streams v:0 -show_entries stream=duration -of default=noprint_wrappers=1:nokey=1 {input_video}
```

Prints the video duration in seconds.


### Variable frame rate

```
ffmpeg -i {input_video} -vf vfrdet -an -f null -
```

https://superuser.com/a/1487417

Slow. Non-zero VFR value indicates input is VFR.

### Count frame number

```
ffprobe -v error -select_streams v:0 -count_packets -show_entries stream=nb_read_packets -of csv=p=0 {input_video}
```

### Rescale video, remove audio track

```
ffmpeg -i {input_video} -vf scale={width}x{height} -an -crf 30 -c:v libx264 {output_video}
```

* `-an` removes audio track.
* `-crf 30` controls quality.
* `-c:v libx264` is the encoder.
