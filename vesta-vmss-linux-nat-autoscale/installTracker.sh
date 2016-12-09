sudo apt-get update

sudo apt-get install openjdk-8-jdk -y

echo "setting JAVA_HOME"

FILE="~/.bash_profile"
/bin/cat <<EOM >> $FILE
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA_HOME
PATH=$PATH:$JAVA_HOME/bin
export PATH

EOM

echo "updating java home"
source ~/.bash_profile 

echo $JAVA_HOME

sudo tar -xvzf tracker-1.0-SNAPSHOT.tgz

echo "Starting Tracker Module"
sudo nohup java -jar tracker-1.0-SNAPSHOT.jar &
