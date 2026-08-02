
#ifndef _HAYDEN_H
#define _HAYDEN_H
// Q1a: Create Hayden class (5 points)
// Part 1: Create a child class of the Room class named 'Hayden'
#include "room.h" //include parent room class cause inheritence 
// Part2: Declare constructor which accepts the same 3 parameters as the parent class Room's constructor.
// Pass the 3 parameters to the super constructor of the Room class.
class Hayden : public Room { //inherits public and all the other things room has  
public: Hayden(string roomName, int noOfRooms, libraryType libType) // hayden constructor
	: Room(roomName, noOfRooms, libType) { } //parents constructor 

	  // Part 3: Re-declare the method displayRoom (virtual method found inside of parent class Room)
	  virtual void displayRoom() override; 
};

#endif // _HAYDEN_H
