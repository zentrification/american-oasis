for video in `ls chapter0*.mp4`
do
  filename="${video%.*}"
  avconv -i $video -qmax 20 -f webm -y $filename.webm
done
