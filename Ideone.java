import java.util.*;
import java.lang.*;
import java.io.*;


/* Name of the class has to be "Main" only if the class is public. */
class Ideone
{
	public static void main (String[] args) throws java.lang.Exception
	{
		
		String s;
        System.out.print("Enter Sentence:");
        Scanner sc=new Scanner(System.in);
        s=sc.nextLine();
        System.out.println(s);
        Ideone x=new Ideone();
        x.count(s);
        
        
	}
	
public void count(String s)
{
	
	int wordCount=0;
    int maxwords =0;
    int i=0;
    
	while(i<s.length()){
        if(s.charAt(i) == ' ')
        {
         wordCount++;
        }else if(s.charAt(i)== '.' || s.charAt(i) == '?'  || s.charAt(i)== '!'){
        
           if(wordCount > maxwords){
               maxwords= wordCount;
           }
           wordCount=0;
         }
         i++;
       }
	System.out.println(maxwords);
      }
	
}
