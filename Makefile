all: hadoop-2.7.2.tar.gz
	sudo docker build -t hadoop .

hadoop-2.7.2.tar.gz:
	curl -C - -O 'http://www.webhostingjams.com/mirror/apache/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz'
