#include <iostream>
#include <string>
#include <stdlib.h>     // srand, rand 
#include <time.h> 		// time
#include "Song.h"
#include "UtPod.h"

using namespace std;

    //Default constructor
    //set the memory size to MAX_MEMORY
    UtPod::UtPod()
	{
	// cout<<"Constructing UtPod..."<<endl;
	 memSize = MAX_MEMORY;
	}

    //Constructor with size parameter
    //The user of the class will pass in a size.
    //If the size is greater than MAX_MEMORY or less than or equal to 0,
    //set the size to MAX_MEMORY.
    UtPod::UtPod(int size)
	{	
		if(size>MAX_MEMORY || size<=0)
		{		  
			memSize = MAX_MEMORY;
		}
		
		else 
		{	
			memSize = size;
		}
		
	  }


     /* FUNCTION - int addSong
      * attempts to add a new song to the UtPod
         o returns a 0 if successful
         o returns -1 if not enough memory to add the song

     precondition: s is a valid Song

     input parms -

     output parms -
     */

    int UtPod::addSong(Song const &song)
	{
		if((this->getRemainingMemory()- song.getSize()) < 0)
		{	
			cout << "ERROR: Not enough memory left to add this song \n";
			return NO_MEMORY;
		}
		  
		  
		//  cout<<"Adding..."<<endl;
		//SongNode * temp = (SongNode *)malloc (sizeof(SongNode)); //MALLOC WILL NOT CALL DEFAULT CONSTRUCTOR, USE NEW
		if (!songs_head) {
		 assert(!songs_last && "Bad list");
		 songs_head = new SongNode();
		 songs_last = songs_head;
		
		} else {
		  songs_last->next = new SongNode();
		  songs_last = songs_last->next;
	      }
			  
		  
		 // cout<<"Successful Malloc, assignning song..."<<endl;
		 // malloc is for unkown size of item passed in, here we know item. Malloc put stuff on heapchec
		 // declare var -> default constructor, inside of main on stack
		 // pass by value, not by ref (no &), get copy via calling default constructor and then destruc when exit scope
		 // explicitly create int foo = new int(); in this case, will have to manually undo it. THIS WILL NOT CEASE EXIST ONCE EXIT SCOPE
		 // usu destruct in same scope... temp only created when swap. while executed at least once, remember. FOR may never happen.
		  
		(songs_last->s).setTitle(song.getTitle());
		(songs_last->s).setArtist(song.getArtist());
		(songs_last->s).setSize(song.getSize());
		  
		  //cout<<"...."<<endl;
		  
		  //songs->next = temp;
		return SUCCESS; 
	}

      /* FUNCTION - int removeSong
       * attempts to remove a song from the UtPod
       * removes the first instance of a song that is in the the UtPod multiple times
           o returns 0 if successful
           o returns -1 if nothing is removed


         input parms -

         output parms -
      */

    int UtPod::removeSong(Song const &song)// if & is not included, a copy of the obj is passed to function
	{
		  
	  if(this->getRemainingMemory()== memSize || songs_head==nullptr)//
	  {
		  cout << "ERROR: Nothing to remove, memory empty \n";
		  return NO_MEMORY;
	  }
		   //cout<<"\n\nRemoving..."<<endl;
	   SongNode *i = songs_head;
	   SongNode *prev = songs_head;
	   for (i; i ; i = i->next) {    // for loop sequence look...
			// cout<< (i->s).getTitle()<< " by ";
			 //cout<< (i->s).getArtist()<< ", size ";
			 //cout<< (i->s).getSize()<< "\n";
			if ((i->s)==song)
			{
				// cout<<"I found it"<<endl;
				 break;
			}
			prev = i;
		   }
		   assert(i && "What?");
		   
		 if (prev != i) // only one song in list...BUT WHAT IF WRONG SONG? && (i->s)==song
		{
			    
			
		  
		//  cout<<"Removing  "<<(i->s).getTitle()<<endl;
		  
		  prev->next = i->next;
		  
		  delete(i);
		  
		  
		   }
		   
		   else if (i->next !=nullptr)
		   {
			//    cout<<"Removing  "<<(i->s).getTitle()<<endl;
		  
		  songs_head = i->next;
		  
		  delete(i);
		  
		  
			   
		   }
		   
		   else
		   {
				songs_head = nullptr;  //the head pointer
				songs_last = nullptr;  //the tail pointer
		   }
		   
		   return SUCCESS;
		  
	  }


      /* FUNCTION - void shuffle
       *  shuffles the songs into random order
          o will do nothing if there are less than two songs in the current list

         input parms -

         output parms -
      */

      void UtPod::shuffle()
	  {
		 srand(time(NULL));
		//  srand( 1540958107);
		cout<<"Time: "<< time(NULL) << endl;
		  int numSongs = 0;
		  SongNode *i = songs_head;
		   for (i; i ; i = i->next) 
		   {    // for loop sequence look...
				numSongs++;
		   }
		//   cout<<"NumSongs: "<< numSongs << endl;
			 
		   for (int a = numSongs*2; a>0; a--)
		   {
			   
			
			int seedOne = rand()%numSongs;
			int seedTwo = rand()%numSongs;
			
		// cout<<"Seed1: "<< seedOne << endl;
		// cout<<"Seed2: "<< seedTwo << endl;
		 
		 i = songs_head;
		   for (i; i ; i = i->next) 
		   {    // for loop sequence look...
				if (seedOne ==0 )
				{
					break;
				}
				seedOne--;
		//		cout<<" Seed1: "<< seedOne << endl;
		   }
		  
		   SongNode *j = songs_head;
		      for (j; j ; j = j->next) 
			{    // for loop sequence look...
				if (seedTwo ==0 )
				{
					break;
				}
				seedTwo--;
			//	cout<<" Seed2: "<< seedTwo << endl;
		   }
		/*   
		   cout<<"I: "<< (i->s).getTitle()<< " by ";
			cout<< (i->s).getArtist()<< ", size ";
			 cout<< (i->s).getSize()<< "\n";
			 
			 cout<<"J: "<< (j->s).getTitle()<< " by ";
			 cout<< (j->s).getArtist()<< ", size ";
			 cout<< (j->s).getSize()<< "\n";
		*/   
		   Song temp((i->s).getArtist(),(i->s).getTitle(), (i->s).getSize());
				
			(i->s).setTitle((j->s).getTitle());
			(i->s).setArtist((j->s).getArtist());
			(i->s).setSize((j->s).getSize());
				
				(j->s).setTitle(temp.getTitle());
				(j->s).setArtist(temp.getArtist());
				(j->s).setSize(temp.getSize());
				
				
			 
			 
		}
		   return;
	  }

      /* FUNCTION - void showSongList
       * prints the current list of songs in order from first to last to standard output
       * format - Title, Artist, size in MB (one song per line)

         input parms -

         output parms -
      */

      void UtPod::showSongList()
	  {
			if (songs_head==nullptr)
			{	
				cout<< "No Songs" <<endl;
				return;
			}
		  	SongNode *i = songs_head;
		
		   for (i; i ; i = i->next) {    // for loop sequence look...
			 cout<< (i->s).getTitle()<< " by ";
			 cout<< (i->s).getArtist()<< ", size ";
			 cout<< (i->s).getSize()<< "\n";
			
		   }
		  return;
	  }


      /* FUNCTION - void sortSongList
       *  sorts the songs in ascending order
          o will do nothing if there are less than two songs in the current list

         input parms -

         output parms -
      */

      void UtPod::sortSongList()
	  {
		   SongNode *i = songs_head;
		   SongNode *j = songs_head->next;
		   SongNode *choice = songs_head;
	
			for (i; i ; i = i->next) 
			{    
		
		
		// for loop sequence look...
			//cout<<"i: "<< (i->s).getTitle()<< " by ";
			 //cout<< (i->s).getArtist()<< ", size ";
			 //cout<< (i->s).getSize()<< "\n";
			 			 
				for (j=i->next; j ; j = j->next) 
				{    // for loop sequence look...
				// cout<<"j: "<< (j->s).getTitle()<< " by ";
				//cout<< (j->s).getArtist()<< ", size ";
				//cout<< (j->s).getSize()<< "\n";
				
					if ((j->s)<(choice->s))
					{
					//		 cout<<"based on: ";
							
						//	if((j->s).getTitle() < (choice->s).getTitle())
							//	cout<<"title, ";
							//if((j->s).getArtist() < (choice->s).getArtist())
							//	cout<<"artist, ";
							//if((j->s).getSize() < (choice->s).getSize())
							//	cout<<"size, ";

				
						choice = j;
						//cout<<"Update choice"<<endl;
						 //cout<<"choice: "<< (j->s).getTitle()<< " by ";
				//cout<< (j->s).getArtist()<< ", size ";
				//cout<< (j->s).getSize()<< "\n";
					}
					
				}
				
				//cout << "Swapping..."<<endl;
				Song temp((i->s).getArtist(),(i->s).getTitle(), (i->s).getSize());
				
				(i->s).setTitle((choice->s).getTitle());
				(i->s).setArtist((choice->s).getArtist());
				(i->s).setSize((choice->s).getSize());
				
				(choice->s).setTitle(temp.getTitle());
				(choice->s).setArtist(temp.getArtist());
				(choice->s).setSize(temp.getSize());
				
			//	cout<<"New Position occupant: "<< (i->s).getTitle()<< " by ";
			// cout<< (i->s).getArtist()<< ", size ";
			// cout<< (i->s).getSize()<< "\n";
				
				choice = i->next;
					
			}
			 return;
	  }


      /* FUNCTION - void clearMemory
       * clears all the songs from memory

         input parms -

         output parms -
      */
      void UtPod::clearMemory()
	  {		
			SongNode *i = songs_head;
		   for (i; i ; i = i->next) 
		   {    // for loop sequence look...
				delete(i);
		   }
			songs_head = nullptr;  //the head pointer
			songs_last = nullptr;  //the tail pointer
	  }

      /* FUNCTION - int getRemainingMemory
       *  returns the amount of memory available for adding new songs

         input parms -

         output parms -
      */

      int UtPod::getRemainingMemory()
	  {
		  int tot_mem = 0;
		  
		  SongNode *i = songs_head;
		   for (i; i ; i = i->next) 
		   {   
				tot_mem+=(i->s).getSize();
		   }
		  return (memSize - tot_mem);
	  }

      UtPod::~UtPod()
	  {
		  
		  
	  }
 