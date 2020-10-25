#XAUTH=$HOME/.Xauthority
#touch $XAUTH
#docker run --tty -p 4000:4000 --interactive --network=host --env DISPLAY=$DISPLAY  --volume $XAUTH:/root/.Xauthority -v /mnt:/mnt -v /home/damien:/home/damien   jekyll/jekyll:4.0.0 jekyll build 
docker run  --label=jekyll --volume=$PWD:/srv/jekyll  -it -p 4000:4000 jekyll/jekyll:pages jekyll serve
