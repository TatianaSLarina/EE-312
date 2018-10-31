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

       input parms -

       output parms -
      */

      std::string getTitle() const
	  {
		  return title;
	  }


      /* FUNCTION - string getArtist
       * returns the author of the song in question

         input parms -

         output parms -
      */

       std::string getArtist() const
		{
		  return artist;
		}

      /* FUNCTION - string getSize
       *  returns the size of the song in question
         input parms -

         output parms -
      */

       int getSize() const
	 {
		  return size;
	  }

	/* FUNCTION - void setTitle
       * changes the title of the song in question

       precondition: s is a valid Song

       input parms -

       output parms -
      */

      void setTitle(std::string s);


      /* FUNCTION - void setArtist
       * changes the author of the song in question

         input parms -

         output parms -
      */

       void setArtist(std::string s);


      /* FUNCTION - void setSize
       *  changes the size of the song in question
         input parms -

         output parms -
      */

       void setSize(int s);
		
		
		
		
      /* OVERLOADING OPERATORS
       *  allow comparison of songs
         input parms -

         output parms -
      */
	  
	  
	  
	     bool operator >(Song const &s); 
		 bool operator <(Song const &s); 
		 bool operator ==(Song const &s);

 

 
};



#endif