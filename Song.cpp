#include <iostream>
#include <string>
#include "Song.h"

using namespace std;

	Song::Song()
	 {
		//cout<<"Constructing simple...(" << this << ")\n";
		title = "";	 
		artist = "";
		size = 0;
	 }
	
	Song::Song(string a, string t, int s)
	 {
		//cout<<"Constructing full...(" << this << ")\n";
		title = t;	 
		artist = a;
		size = s;
		//cout<<"Done"<<endl;		
	 }

     

	/* FUNCTION - void setTitle
       * changes the title of the song in question

       precondition: s is a valid Song

       input parms -

       output parms -
      */

     void Song::setTitle(string s)
		 {
			 title = s; 
		 }

      /* FUNCTION - string setArtist
       * changes the author of the song in question

         input parms -

         output parms -
      */

       void Song::setArtist(string s)
		 {
			 artist = s;
		 }


      /* FUNCTION - string setSize
       *  changes the size of the song in question
         input parms -

         output parms -
      */

       void Song::setSize(int s)
		{
			size = s; 			 
		}

		
      /* OVERLOADING OPERATORS
       *  allow comparison of songs
         input parms -

         output parms -
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
		  // cout<<"destroying song"<<endl
	  }