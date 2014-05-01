test1: include/Talker.h src/Talker.cpp src/test1.cpp
	g++ -Wall -Iinclude src/test1.cpp src/Talker.cpp -o bin/test1

Talker.o: include/Talker.h src/Talker.cpp
	g++ -Wall -c -Iinclude src/Talker.cpp -o build/Talker.o

