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
	
	cout << "\n////////////////////////////////////////////////////\n\n";
	cout << "\nBasic consttructor testing: UtPod t; \n ";
    UtPod t;
	cout << "Memory = "<< t.getTotalMemory()<<endl;
	
	cout << "\nTesting constructor with size parameter: UtPod a(55); \n ";
    UtPod a(55);
	cout << "Memory = "<< a.getTotalMemory()<<endl;
		
	cout << "\nTesting constructor with too small size parameter: UtPod  b(-1); \n ";
    UtPod b(-1);
	cout << "Expected is 512, Actual is:  "<< b.getTotalMemory()<<endl;
	
	cout << "\nTesting constructor with too big size parameter: UtPod  c(1000); \n ";
    UtPod c(1000);
	cout << "Expected is 512, Actual is:  "<< c.getTotalMemory()<<endl;
	
		cout << "\n////////////////////////////////////////////////////\n\n";
		

	cout << "\nTesting ability to add songs:\n\n";

		
    Song s1("Led Zeppelin", "Stairway to Heaven", 50);
	
	if (t.addSong(s1) == 0)
	{
		cout << "\nAdded " << s1.getTitle() << " by " << s1.getArtist() << ", size "<< s1.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	 
	Song s2("John Lennon", "Imagine", 36);
	
	if (t.addSong(s2) == 0)
	{
		cout << "\nAdded " << s2.getTitle() << " by " << s2.getArtist() << ", size "<< s2.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	   
    Song s3("Chuck Berry", "Johnny B Goode", 10);
    if (t.addSong(s3) == 0)
	{
		cout << "\nAdded " << s3.getTitle() << " by " << s3.getArtist() << ", size "<< s3.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
    Song s4("Nirvana", "Smells Like Teen Spirit", 47);
    if (t.addSong(s4) == 0)
	{
		cout << "\nAdded " << s4.getTitle() << " by " << s4.getArtist() << ", size "<< s4.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	   
    Song s5("The Beatles", "Here Comes the Sun", 29);
   	if (t.addSong(s5) == 0)
	{
		cout << "\nAdded " << s5.getTitle() << " by " << s5.getArtist() << ", size "<< s5.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
	Song s6("Rolling Stones", "Paint It Black", 14);
    if (t.addSong(s6) == 0)
	{
		cout << "\nAdded " << s6.getTitle() << " by " << s6.getArtist() << ", size "<< s6.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
	Song s7("The Doors", "Light My Fire", 33);
    if (t.addSong(s7) == 0)
	{
		cout << "\nAdded " << s7.getTitle() << " by " << s7.getArtist() << ", size "<< s7.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
	Song s8("The Beatles", "BlackBird", 33);
    	if (t.addSong(s8) == 0)
	{
		cout << "\nAdded " << s8.getTitle() << " by " << s8.getArtist() << ", size "<< s8.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
	
	Song s9("The Beatles", "BlackBird", 43);
    
	if (t.addSong(s9) == 0)
	{
		cout << "\nAdded " << s9.getTitle() << " by " << s9.getArtist() << ", size "<< s9.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
	
	
	cout << "\n\nSong list so far: \n\n";
	t.showSongList();
    
    cout << "\n////////////////////////////////////////////////////\n\n";

	cout << "\nTesting ability to remove songs:\n\n";
	 int result = t.removeSong(s6);
	 if (result == 0)
	{
		cout << "\nRemoved " << s6.getTitle()<<endl;
	}
	else if (result == -1)
	{
		cout << "\nMemory empty, no songs to remove; failed\n";
	}
	else if (result == -2)
	{
		cout << "\nSong doesn't exist in UtPod; failed\n";
	}
	

    result = t.removeSong(s3);
	if (result == 0)
	{
		cout << "\nRemoved " << s3.getTitle()<<endl;
	}
	else if (result == -1)
	{
		cout << "\nMemory empty, no songs to remove; failed\n";
	}
	else if (result == -2)
	{
		cout << "\nSong doesn't exist in UtPod; failed\n";
	}

    cout << "\n\nNew list: \n\n";
	t.showSongList();
	 
    cout << "\n////////////////////////////////////////////////////\n\n";
    
	cout << "\n\nCheck removal of first duplicate instance: \n";
     
	if (t.addSong(s2) == 0)
	{
		cout << "\nAdded " << s2.getTitle() << " by " << s2.getArtist() << ", size "<< s2.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
    
	result = t.removeSong(s2);
	if (result == 0)
	{
		cout << "\nRemoved " << s2.getTitle()<<endl;
	}
	else if (result == -1)
	{
		cout << "\nMemory empty, no songs to remove; failed\n";
	}
	else if (result == -2)
	{
		cout << "\nSong doesn't exist in UtPod; failed\n";
	}
    
    
     cout << "\n\nNew list, where \"" << s2.getTitle()<<"\" should be last, without a previous instance: \n\n";
	t.showSongList();

    cout << "\n////////////////////////////////////////////////////\n\n";

	cout << "\n\nCheck remining memory calculation: \n";
	cout << "Expected is 241, actual is "<< t.getRemainingMemory() << endl;
    

	cout << "\n\nCheck Sorting: ";
	t.sortSongList();
	cout << "\n\nResult: \n\n";
    t.showSongList();
	cout << "\n\nCheck Shuffle: \n";
	t.shuffle();
	cout << "\n\nResult: \n\n";
	t.showSongList();
	
	cout << "\n\nCheck adding a song that is too large: \n";
	
	Song s10("The Beatles", "BlackBird", 300);
	if (t.addSong(s10) == 0)
	{
		cout << "\nAdded " << s9.getTitle() << " by " << s9.getArtist() << ", size "<< s9.getSize()<<endl;
	}
	else
	{
		cout << "\nNot enough memory to add song; failed \n";
	}
	
	
	
	cout << "\n\nCheck  removing  a song that doesn't exist: \n";
	
	Song s11("The Beatles", "Yesterday", 10);

		cout << "\nTrying to remove: " << s11.getTitle() << " by " << s11.getArtist() << ", size "<< s11.getSize()<<endl;
	 result = t.removeSong(s11);
	 if (result == 0)
	{
		cout << "\nRemoved " << s11.getTitle()<<endl;
	}
	else if (result == -1)
	{
		cout << "\nMemory empty, no songs to remove; failed\n";
	}
	else if (result == -2)
	{
		cout << "\nSong doesn't exist in UtPod; failed\n";
	}
	
	
	
	cout << "\n\nCheck clearing the memory and then trying to remove a nonexistent song: \n";
	
	t.clearMemory();
	cout << "\n\nNew list: \n\n";
	t.showSongList();
	if (t.removeSong(s1) == 0)
	{
		cout << "\nRemoved " << s1.getTitle()<<endl;
	}
	else
	{
		cout << "\nMemory empty, no songs to remove; failed\n";
	}
	
	cout << "\n\nCheck sorting when memory cleared: \n";
	t.sortSongList();
	cout << "\n\nCheck shuffling when memory cleared: \n";
	t.shuffle();
	


return 0;
}