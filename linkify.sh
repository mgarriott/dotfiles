DIR="$( cd "$( dirname "$0" )" && pwd )"
SCRIPT='linkify.sh'

cd $DIR

for file in *
do
  if [ "$file" != "$SCRIPT" ]
  then
    ln -s $file ~/.$file
  fi
done
