
#include <string>
using namespace std;

//check for whoozit  //use pass by reference
bool isWhoozit(const string& s, int& i) {

	int back = i;
	//if the index doesnt start with x or if there is no room return false
	if (s[i] != 'x' || i >= (int)s.length()) {
		return false;
	}
	//so the first index must be x so move on
	i++;

	//if the next index isnt y or theres no room set the index back to where it was 
	if (s[i] != 'y' || i >= (int)s.length()) {
		i = back;
		return false;
	}

	//keep going until there is no more 'y's or run out of room
	while (s[i] == 'y' && i <= (int)s.length()) {
		i++;
	}
	//is whoozit
	return true;
}


bool isWhatzit(const string& s, int& i) {

	int back = i;

	//make sure first is q
	if (s[i] != 'q' || (int)s.length()) {
		return false;
	}
	i++;

	//make sure second is z or d
	if (s[i] != 'z' || s[i] != 'd' || (int)s.length()) {
		i = back;
		return false;
	}
	i++;

	//make sure remainder is a whoozit
	if (isWhoozit(s, i) == false) {
		i = back;
		return false;
	}

	//is whatzit
	return true;

}