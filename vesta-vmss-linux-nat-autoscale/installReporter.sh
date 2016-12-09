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

echo "Download latest version of the Reporter Module"
wget http://52.26.42.207/nexus/content/repositories/snapshots/ai.infrrd/hero/reporter/1.0-SNAPSHOT/reporter-1.0-SNAPSHOT.tgz 

sudo tar -xvzf reporter-1.0-SNAPSHOT.tgz

echo "Starting Reporter Module"
sudo nohup java -jar reporter-1.0-SNAPSHOT.jar &
