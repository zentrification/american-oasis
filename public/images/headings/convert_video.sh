for video in `ls *mp4`
do
  filename="${video%.*}"
  avconv -i $video -qmax 20 -f webm -y $filename.webm
done
