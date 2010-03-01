#/bin/sh
cd ~/skripte/picrecord/pics/
counter=1
donenow=0
while [ $donenow -eq 0 ]; do
file=$(printf bild-$counter.jpg)
if [ -f $file ]; then
	echo $file exists!
	counter=$(($counter+1))
else
	donenow=1
fi
done
echo mark the picture now!
import ~/picrecord/pics/$file
