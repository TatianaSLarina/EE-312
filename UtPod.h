//UtPod.h


#ifndef UTPOD_H
#define UTPOD_H
#include "Song.h"
#include <string>
#include <assert.h>

//UtPod class declaration
class UtPod
{
   private:
      static const int MAX_MEMORY = 512;
      static const int SUCCESS = 0;
      static const int NO_MEMORY = -1;
      static const int NOT_FOUND = -2;
      
      struct SongNode
      {
         Song s;
         SongNode *next;
      };
      //NULLPTR WONT WORK ON KAMEK
      SongNode *songs;  //the head pointer
	  
      int memSize;
   
   public:
      //Default constructor
      //set the memory size to MAX_MEMORY
	  // Seeds the random number generator for shuffling.
      UtPod();

      //Constructor with size parameter
      //The user of the class will pass in a size.
      //If the size is greater than MAX_MEMORY or less than or equal to 0,
      //set the size to MAX_MEMORY.
	  // Seeds the random number generator for shuffling.
      UtPod(int size);

      /* FUNCTION - int addSong
       * attempts to add a new song to the UtPod
           o returns a 0 if successful
           o returns -1 if not enough memory to add the song

       precondition: s is a valid Song

       input parms - song passed by reference (a pointer)

       output parms - integer to show success; song added at end of list
      */

      int addSong(Song const &song);


      /* FUNCTION - int removeSong
       * attempts to remove a song from the UtPod
       * removes the first instance of a song that is in the the UtPod multiple times
           o returns 0 if successful
           o returns -1 if nothing is removed

         input parms - song passed by reference (a pointer)

         output parms - int to indicate success; desired song is removed
      */

      int removeSong(Song const &song);


      /* FUNCTION - void shuffle
       *  shuffles the songs into random order
          o will do nothing if there are less than two songs in the current list

         input parms - none;

         output parms - none; should be shuffeled
      */

      void shuffle();


      /* FUNCTION - void showSongList
       * prints the current list of songs in order from first to last to standard output
       * format - Title, Artist, size in MB (one song per line)

         input parms - none

         output parms - Song list printed, or "No songs" message printed
      */

      void showSongList();


      /* FUNCTION - void sortSongList
       *  sorts the songs in ascending order
          o will do nothing if there are less than two songs in the current list

         input parms - none

         output parms - none; songs sorted
      */

      void sortSongList();


      /* FUNCTION - void clearMemory
       * clears all the songs from memory

         input parms - none;

         output parms - none; all nodes should be removed, and head pointer is null
      */
      void clearMemory();


      /* FUNCTION - int getTotalMemory
       *  returns the total amount of memory in the UtPod
          o will do nothing if there are less than two songs in the current list

         input parms - none

         output parms - integer that shows the remaining memory
      */

      int getTotalMemory() {
         return memSize;
      }



      /* FUNCTION - int getRemainingMemory
       *  returns the amount of memory available for adding new songs

         input parms - none

         output parms - int with remaining memory in it
      */

      int getRemainingMemory();


      ~UtPod();
 
};



#endif
