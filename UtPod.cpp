#include <iostream>
#include <string>
#include <stdlib.h>     // srand, rand 
#include <time.h> 		// time
#include "Song.h"
#include "UtPod.h"

using namespace std;

    //Default constructor
    //set the memory size to MAX_MEMORY
	// Seeds the random number generator for shuffling.
    UtPod::UtPod()
	{
	 memSize = MAX_MEMORY;
	 srand(time(NULL));
	}

    //Constructor with size parameter
    //The user of the class will pass in a size.
    //If the size is greater than MAX_MEMORY or less than or equal to 0,
    //set the size to MAX_MEMORY.
	// Seeds the random number generator for shuffling.
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
		srand(time(NULL));
	  }


 /* FUNCTION - int addSong
  * attempts to add a new song to the UtPod
         o returns a 0 if successful
         o returns -1 if not enough memory to add the song

    precondition: s is a valid Song

    input parms - song passed by reference (a pointer)

    output parms - integer to show success; song added at end of list
 */

		int UtPod::addSong(Song const &song)
	{
		// check that songs can be added
		if((this->getRemainingMemory()- song.getSize()) < 0)
		{	
			return NO_MEMORY;
		}
		
		SongNode *i  = songs;
		
		//check if list is empty; initialize if it is
		if (!songs) 
		{
		 songs = new SongNode();
		 i  = songs;
		} 
		// otherwise, search for end of list
		else 
		{
			i = songs;
			SongNode *prev = songs;
			for (i; i ; i = i->next) 
			{    
				prev = i;
			}
			
		i = prev;
		i->next = new SongNode();
		i = i->next;
		
	    }
		// edd song to end of list
		(i->s).setTitle(song.getTitle());
		(i->s).setArtist(song.getArtist());
		(i->s).setSize(song.getSize());
		i->next = NULL;  

		return SUCCESS; 
	}
	
    /* FUNCTION - int removeSong
     * attempts to remove a song from the UtPod
     * removes the first instance of a song that is in the the UtPod multiple times
         o returns 0 if successful
         o returns -1 if nothing is removed

       input parms - song passed by reference (a pointer)

       output parms - int to indicate success; desired song is removed
    */
	
    int UtPod::removeSong(Song const &song)// if & is not included, a copy of the obj is passed to function
	{
	  // check if there are any songs at all, if not return -1
	  if(this->getRemainingMemory()== memSize || songs==NULL)
	  {
		  return NO_MEMORY;
	  }
	
	   SongNode *i = songs;
	   SongNode *prev = songs;
	   bool exists = false;
	   //search for song
	   for (i; i ; i = i->next) 
	   {    
	   
			if ((i->s)==song)
			{
				exists = true;
				 break;
			}
			prev = i;
		}
		  
		if(!exists)
		{
			return NOT_FOUND;
		}	  
		 // specual cases to make sure songs deleted correctly and next pointers mended right  
		 if (prev != i) 
		{	  
			prev->next = i->next;
			delete(i);
		}
		   
		   else if (i->next !=NULL)
		   {
				songs = i->next;
				delete(i);
		   }
		   
		   else
		   {
				songs = NULL;   
		   }
		   
		   return SUCCESS;
		  
	  }

      /* FUNCTION - void shuffle
       *  shuffles the songs into random order
          o will do nothing if there are less than two songs in the current list

         input parms - none;

         output parms - none; should be shuffeled
      */

      void UtPod::shuffle()
	  {		// check that list isn't empty
		  if(getRemainingMemory() == memSize && songs == NULL)
		  {
			  cout<< "Nothing to shuffle!\n";
			  return;
		  }
		  
		  // find the total number of songs
		  int numSongs = 0;
		  SongNode *i = songs;
		   for (i; i ; i = i->next) 
		   {    
				numSongs++;
		   }
			 
		   for (int a = numSongs*2; a>0; a--)
		   {
			   
		// compute two random numbers that are in the range of the number of songs
			int seedOne = rand()%numSongs;
			int seedTwo = rand()%numSongs;
		// select songs to shuffle based on those
		 i = songs;
		   for (i; i ; i = i->next) 
		   {    
				if (seedOne ==0 )
				{
					break;
				}
				seedOne--;
		
		   }
		  
		   SongNode *j = songs;
		      for (j; j ; j = j->next) 
			{    
				if (seedTwo ==0)
				{
					break;
				}
				seedTwo--;
			
		   }
		 
		// swap songs
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

         input parms - none

         output parms - Song list printed, or "No songs" message printed
      */
      void UtPod::showSongList()
	  {		// check that list isn't empty
			if (songs==NULL)
			{	
				cout<< "No songs to display" <<endl;
				return;
			}
		  	SongNode *i = songs;
		
		   for (i; i; i = i->next) {    
		   
			 cout<< (i->s).getArtist()<< ": ";
			 cout<< (i->s).getTitle()<< ", size ";
			 cout<< (i->s).getSize()<< "\n";
			
		   }
		  return;
	  }

/* FUNCTION - void sortSongList
       *  sorts the songs in ascending order
          o will do nothing if there are less than two songs in the current list

         input parms - none

         output parms - none; songs sorted
      */

      void UtPod::sortSongList()
	  {// check that there's stuff to sort
		  if(getRemainingMemory() == memSize && songs == NULL)
		  {
			  cout<< "Nothing to sort!\n";
			  return;
		  }
		   SongNode *i = songs;
		   SongNode *j = songs->next;
		   SongNode *choice = songs;
	
	// Selection sort
			for (i; i ; i = i->next) 
			{    	 			 
				for (j=i->next; j ; j = j->next) 
				{    
					if ((j->s)<(choice->s))
					{
							
						choice = j;
						
					}
					
				}
				
				// swap songs
				Song temp((i->s).getArtist(),(i->s).getTitle(), (i->s).getSize());
				
				(i->s).setTitle((choice->s).getTitle());
				(i->s).setArtist((choice->s).getArtist());
				(i->s).setSize((choice->s).getSize());
				
				(choice->s).setTitle(temp.getTitle());
				(choice->s).setArtist(temp.getArtist());
				(choice->s).setSize(temp.getSize());
				
				
				choice = i->next;
					
			}
			 return;
	  }


        /* FUNCTION - void clearMemory
       * clears all the songs from memory

         input parms - none;

         output parms - none; all nodes should be removed, and head pointer is null
      */
      void UtPod::clearMemory()
	  {		
			SongNode *i = songs;
		   for (i; i ; i = i->next) 
		   {    
				delete(i);
		   }
			songs = NULL;  
	  }

      /* FUNCTION - int getRemainingMemory
       *  returns the amount of memory available for adding new songs

         input parms - none

         output parms - int with remaining memory in it
      */


      int UtPod::getRemainingMemory()
	  {
		  int tot_mem = 0;
		  
		  SongNode *i = songs;
		   for (i; i ; i = i->next) 
		   {   
				tot_mem+=(i->s).getSize();
		   }
		  return (memSize - tot_mem);
	  }

      UtPod::~UtPod()
	  {
		  
		  
	  }
 