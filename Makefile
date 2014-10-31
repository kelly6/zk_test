all:test cbk_test set_test exist_test

test:test.o
	gcc -o $@ $^ -L/usr/local/lib/ -lzookeeper_mt

test.o:test.c
	gcc -DTHREADED -I/usr/local/include/zookeeper -o $@ -c $^

cbk_test:cbk_test.o
	gcc -o $@ $^ -L/usr/local/lib/ -lzookeeper_mt

cbk_test.o:cbk_test.c
	gcc -DTHREADED -I/usr/local/include/zookeeper -o $@ -c $^

set_test:set_test.o
	gcc -o $@ $^ -L/usr/local/lib/ -lzookeeper_mt

set_test.o:set_test.c
	gcc -DTHREADED -I/usr/local/include/zookeeper -o $@ -c $^

exist_test:exist_test.o
	gcc -o $@ $^ -L/usr/local/lib/ -lzookeeper_mt

exist_test.o:exist_test.c
	gcc -DTHREADED -I/usr/local/include/zookeeper -o $@ -c $^

.PHONY:clean

clean:
	rm test.o test
	rm cbk_test.o cbk_test
	rm set_test.o set_test
	rm exist_test.o exist_test
