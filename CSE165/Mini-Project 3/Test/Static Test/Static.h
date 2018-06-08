#ifndef STATIC_H
#define STATIC_H

struct STAT{

	static int label;
	const int currentID;

	STAT() : currentID(label++){


	}

	int getLabel(){
		return currentID;
	}


};

#endif