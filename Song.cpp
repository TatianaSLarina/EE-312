#include <iostream>
#include <string>
#include "Song.h"

using namespace std;

	  //Default constructor
      //set all fields to be blank
	  
	Song::Song()
	 {
		title = "";	 
		artist = "";
		size = 0;
	 }
	  //Constructor with all parameters
      //The user of the class will pass in all necessary information
	Song::Song(string a, string t, int s)
	 {
		title = t;	 
		artist = a;
		size = s;	
	 }

     

	/* FUNCTION - void setTitle
       * changes the title of the song in question

       precondition: s is a valid Song

       input parms - a string that is the desired title

       output parms - none
      */


     void Song::setTitle(string s)
		 {
			 title = s; 
		 }

      /* FUNCTION - void setArtist
       * changes the author of the song in question

         input parms - a string that is the desired artist

         output parms - none
      */

       void Song::setArtist(string s)
		 {
			 artist = s;
		 }


      /* FUNCTION - void setSize
       *  changes the size of the song in question
         input parms - an int that is the desired size

         output parms - none
      */

       void Song::setSize(int s)
		{
			size = s; 			 
		}

		
  /* OVERLOADING OPERATORS
       *  allow comparison of songs
         input parms - a song that is passed by reference, corresponding to the right hand side of the operator

         output parms - the boolean true or false
      */
	  
	  
	     bool Song::operator >(Song const &s)
		 {
			  if( artist > s.artist)
			 {
				 return true;
			 }
			 else if( artist < s.artist)
			 {
				 return false;
			 }
				 
			 if( title > s.title)
			 {
				 return true;
			 }
			 else if( title < s.title)
			 {
				 return false;
			 }	 
			if( size > s.size)
			 {
				 return true;
			 }
			 else if( size < s.size)
			 {
				 return false;
			 }	 
				
				 
				return false;
			 
		 }
		 bool Song::operator <(Song const &s)
		 {
			 if( artist < s.artist)
			 {
				 return true;
			 }
			 else if( artist > s.artist)
			 {
				 return false;
			 }
				 
			 if( title < s.title)
			 {
				 return true;
			 }
			 else if( title > s.title)
			 {
				 return false;
			 }	 
			if( size < s.size)
			 {
				 return true;
			 }
			 else if( size > s.size)
			 {
				 return false;
			 }	 
				
				 
				return false;
			 
		 }
		 bool Song::operator ==(Song const &s)
		 {
			 return (title == s.title &&
				artist == s.artist &&
				size == s.size);
			 
			 
		 }
 

      Song::~Song()
	  {
		  
	  }