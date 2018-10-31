//UtPodDriver.cpp
/*
Tatiana Larina
EE 312 10/30/18

*/
#include <cstdlib>
#include <iostream>
#include <string>
#include "Song.h"
#include "UtPod.h"

using namespace std;

int main(int argc, char *argv[])
{
    UtPod t;
	/*
	char mode;
	cout<<"Select whether you want a default driver or user input. ";
	cout<<"\nEnter d for default, or i for input. ";
    cin>>mode;
	
	if (mode == 'i')
	{
	cout<<"You selected user input mode. ";
	cout<<"\nEnter d for default, or i for input. ";


	}
	
	else
	{
		*/
		
    Song s1("Led Zeppelin", "Stairway to Heaven", 50);
	cout << "\nAdding " << s1.getTitle() << " by " << s1.getArtist() <<endl;
    int result = t.addSong(s1);
	 
	Song s2("John Lennon", "Imagine", 36);
	cout << "\nAdding " << s2.getTitle() << " by " << s2.getArtist() <<endl;
    result = t.addSong(s2);
	   
    Song s3("Chuck Berry", "Johnny B Goode", 10);
    cout << "\nAdding " << s3.getTitle() << " by " << s3.getArtist() <<endl;
    result = t.addSong(s3);	
	
    Song s4("Nirvana", "Smells Like Teen Spirit", 47);
    cout << "\nAdding " << s4.getTitle() << " by " << s4.getArtist() <<endl;
    result = t.addSong(s4);	   
	   
    Song s5("The Beatles", "Here Comes the Sun", 29);
    cout << "\nAdding " << s5.getTitle() << " by " << s5.getArtist() <<endl;
    result = t.addSong(s5);
	
	Song s6("Rolling Stones", "Paint It Black", 14);
    cout << "\nAdding " << s6.getTitle() << " by " << s6.getArtist() <<endl;
    result = t.addSong(s6);
	
	Song s7("The Doors", "Light My Fire", 33);
    cout << "\nAdding " << s7.getTitle() << " by " << s7.getArtist() <<endl;
    result = t.addSong(s7);
	
	Song s8("The Beatles", "BlackBird", 33);
    cout << "\nAdding " << s8.getTitle() << " by " << s8.getArtist() <<endl;
    result = t.addSong(s8);
	
	
	Song s9("The Beatles", "BlackBird", 43);
    cout << "\nAdding " << s9.getTitle() << " by " << s9.getArtist() <<endl;
    result = t.addSong(s9);
	
	
	cout << "\n\nSong list so far: \n\n";
	t.showSongList();
    
    
	 cout << "\nRemoving " << s6.getTitle() << " by " << s6.getArtist() <<endl;
	result = t.removeSong(s6);

    cout << "\nRemoving " << s3.getTitle() << " by " << s3.getArtist() <<endl;
    result = t.removeSong(s3);
    

    cout << "\n\nNew list: \n\n";
	t.showSongList();
    
	cout << "\n\nCheck removal of first duplicate instance: \n";
     
	cout << "\nAdding " << s2.getTitle() << " by " << s2.getArtist() <<endl;
    result = t.addSong(s2);
    
	cout << "\nRemoving " << s2.getTitle() << " by " << s2.getArtist() <<endl;
	result = t.removeSong(s2);
    
    
     cout << "\n\nNew list: \n\n";
	t.showSongList();
    
    
	cout << "\n\nCheck memory calculation: \n";
	cout << "Should be: 241\n";
    cout << "memory = " << t.getRemainingMemory() << endl;
    

	cout << "\n\nCheck Sorting: ";
	t.sortSongList();
	cout << "\n\nNew list: \n\n";
    t.showSongList();
	cout << "\n\nCheck Shuffle: \n";
	t.shuffle();
	cout << "\n\nNew list: \n\n";
	t.showSongList();
	
	cout << "\n\nCheck adding a song that is too large: \n";
	
	Song s10("The Beatles", "BlackBird", 300);
    cout << "\nAdding " << s10.getTitle() << " by " << s10.getArtist() <<endl;
    result = t.addSong(s10);
	
	cout << "\n\nCheck clearing the memory and then trying to remove a nonexistent song: \n";
	
	t.clearMemory();
	cout << "\n\nNew list: \n\n";
	t.showSongList();
	    cout << "\nRemoving " << s1.getTitle() << " by " << s1.getArtist() <<endl;
    result = t.removeSong(s1);
	
	
	//}
	


return 0;
}