all: hadoop-2.7.2.tar.gz
	docker build -t hadoop:1 .

hadoop-2.7.2.tar.gz:
	curl -C - -O 'http://mirror.stjschools.org/public/apache/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz'
