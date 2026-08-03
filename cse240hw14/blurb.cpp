//bella sheridan alien language extra credit homework 
//c++
#include <string>
#include <iostream>
using namespace std;

//check for whoozit  //use pass by reference
bool isWhoozit(const string& s, int& i) {

	int back = i;
	//if the index doesnt start with x or if there is no room return false
	if (i >= s.length() || s[i] != 'x') {
		return false;
	}
	//so the first index must be x so move on
	i++;

	//if the next index isnt y or theres no room set the index back to where it was 
	if (i >= s.length() || s[i] != 'y') {
		i = back;
		return false;
	}

	//keep going until there is no more 'y's or run out of room
	while (i < (int)s.length() && s[i] == 'y') {
		i++;
	}
	//is whoozit
	return true;
}


bool isWhatzit(const string& s, int& i) {

	int back = i;

	//make sure first is q
	if (i >= s.length() || s[i] != 'q') {
		return false;
	}
	i++;

	//make sure second is z or d
	if (i >= (int)s.length() || s[i] != 'z' && s[i] != 'd') {
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

bool isBlurb(const string& s) {
	//index and string length to compare later
	int i = 0;
	int l = (int)s.length();

	//check for whoozit
	if (isWhoozit(s, i) == false) { //since the methods use pass by reference they change the index without needing i++
		return false;
	}

	//check for whatzit
	while (isWhatzit(s, i)) {

	}
		
	//the index must match the words length or else its not a blurb
	return (i == l);
}

int main() {
	string word;
	while (true) { //loop until you write a blurb
		cout << "Enter an alien word:" << endl;
		getline(cin, word); //whatever is written is the word

		if (isBlurb(word)) { //check if blurb
			cout << "The word is fine.";
			break; //done
		} 
		else {
			cout << "The word is a mess!" << endl; //wrong and loop back again
		}
	}
}