#include "Talker.h"
#include <iostream>

int main(int argc, char *argv[]) {
	Talker talker = Talker();
	if (argc > 1) {
		talker.say(argv[1]);
	}
	else {
		talker.say("No input. Hello, World.");
	}	
	return 0;
}
