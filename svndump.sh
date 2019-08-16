#/bin/bash

dump(){
  echo `svnadmin dump /home/svn/$1 > /home/svndump/$1.dump`
}

for file in `ls /home/svn`
do
  tmp=${file:0:2}
  if [ $tmp == "a2" ]
  then
    dump $file
  elif [ $tmp == "b2" ]
  then
    dump $file
  fi
done
