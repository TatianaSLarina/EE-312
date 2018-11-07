//Song.h

#ifndef SONG_H
#define SONG_H

#include <string>
//#include "Song.h"

//UtPod class declaration
class Song
{
   private:
     std::string title;
	 std::string artist;
	 int size; 
	 
   public:
      
	  //Default constructor
      //set all fields to be blank
      Song();

      //Constructor with all parameters
      //The user of the class will pass in all necessary information
	
	Song( std::string t, std::string a, int s);
	
	
      ~Song();
	
	
      /* FUNCTION - string getTitle
       * returns the title of the song in question

       precondition: s is a valid Song

       input parms - none

       output parms - a string that matches the title
      */

      std::string getTitle() const
	  {
		  return title;
	  }


      /* FUNCTION - string getArtist
       * returns the author of the song in question

         input parms - none

         output parms - a string that matches the artist
      */

       std::string getArtist() const
		{
		  return artist;
		}

      /* FUNCTION - string getSize
       *  returns the size of the song in question
         input parms - none

         output parms - an int that matches the size
      */

       int getSize() const
	 {
		  return size;
	  }

	/* FUNCTION - void setTitle
       * changes the title of the song in question

       precondition: s is a valid Song

       input parms - a string that is the desired title

       output parms - none
      */

      void setTitle(std::string s);


      /* FUNCTION - void setArtist
       * changes the author of the song in question

         input parms - a string that is the desired artist

         output parms - none
      */

       void setArtist(std::string s);


      /* FUNCTION - void setSize
       *  changes the size of the song in question
         input parms - an int that is the desired size

         output parms - none
      */

       void setSize(int s);
		
		
		
		
      /* OVERLOADING OPERATORS
       *  allow comparison of songs
         input parms - a song that is passed by reference, corresponding to the right hand side of the operator

         output parms - the boolean true or false
      */
	  
	  
	  
	     bool operator >(Song const &s); 
		 bool operator <(Song const &s); 
		 bool operator ==(Song const &s);

 

 
};



#endif