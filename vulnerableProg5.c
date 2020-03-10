#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/*
 *  check the string passed from the command-line and print message accordingly
 */

int processInput(char *input)
{		
   char buffer[500];

   strcpy(buffer,input);

   printf("Hello, what is the magic word?: You said %s\n",buffer);

   /* check if the string is equal to the super secret string */

   if (strcmp(buffer,"Please please pretty please!")==0)
   {
      fprintf(stdout,"Woaaaa, you got it!\n");
   }
   else
   {
      fprintf(stdout,"Epic Fail! Epic Fail! Epic Fail! Epic Fail!\n");
   }

   /* great success! */
   return 0;
}

/*
 *   program accepts two parameters, there is a simple buffer overflow...
 */


int main(int argc, char **argv, char **envp)
{

   char **env;

   /* check arguments */
   if (argc<2)
   {
      fprintf(stdout,"Synopsis: vuln1 <magic word>\n\n");
      exit(1);
   }

   /* Do some "security" magic here */
   for (env = envp; *env != 0; env++)
   {   
      char* thisEnv = *env;

      memset(thisEnv,0,strlen(thisEnv));
   }   

   /* process the input */
   processInput(argv[1]);

   return 0;
}
