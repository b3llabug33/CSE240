
// Q2a: Define displayRoom() for Hayden class (5 points)
// Define the function displayRoom() that you declared within the Hayden class in the header file
// See expected output in question file.

// (displayList() function in hw7.cpp should call this function.)
// Include necessary header files

#include "room.h"
#include "hayden.h"

#include <iostream>

void Hayden::displayRoom()
{
	// notice that no function call is needed becasue we know this is Hayden class function
	cout << "Room name: " << getName() << endl; //print out name but use getter because its private 
	cout << "Number of Rooms: " << getNo() << endl; //same thing 

	//print lib type as a string
	if (getLibraryType() == hayden) {
		cout << "Library: Hayden" << endl;
	}
	else  {
		cout << "Library: Noble" << endl;
	} //it can still print noble even tho its hayden object 
}
