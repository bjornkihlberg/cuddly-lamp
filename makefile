./obj/main.o: ./main.cpp
	mkdir -p ./obj
	clang++ -std=c++23 -c ./main.cpp -o ./obj/main.o

./bin/app: ./obj/main.o
	mkdir -p ./bin
	clang++ ./obj/main.o -o ./bin/app

run: ./bin/app
	./bin/app
