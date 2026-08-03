
// Q2b: Define displayRoom() for Noble class (5 points)
// Define the function displayRoom() that you declared within the Noble class in the header file
// See expected output in question file.

// (displayList() function in the hw7.cpp should call this function.)
// Include necessary header files


#include "room.h"
#include "noble.h"

#include <iostream>

void Noble::displayRoom()
{
	// notice that no function call is needed becasue we know this is Noble class function
	cout << "Room name: " << getName() << endl; //print out name but use getter because its private 
	cout << "Number of Rooms: " << getNo() << endl; //same thing 

	//print lib type as a string
	if (getLibraryType() == hayden) {
		cout << "Library: Hayden" << endl;
	}
	else if (getLibraryType() == noble) {
		cout << "Library: Noble" << endl;
	} //it can still print hayden even tho its noble object 
}
