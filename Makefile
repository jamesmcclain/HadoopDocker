all: archives/hadoop-2.7.6.tar.gz
	docker build -t 'jamesmcclain/hadoop:2.7.6' .

archives/hadoop-2.7.6.tar.gz:
	(cd archives/ ; curl -C - -O 'http://ftp.wayne.edu/apache/hadoop/common/hadoop-2.7.6/hadoop-2.7.6.tar.gz')
