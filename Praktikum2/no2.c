 #include <stdlib.h>
 #include <sys/types.h>
 #include <time.h>
 #include <unistd.h>
 #include <wait.h>
 
 int main()
 {
     pid_t child;
     int status;
     time_t now;
     time(&now);
     struct tm *timern;
     timern = localtime(&now);
     char StrTime[100];
     strftime(StrTime, 100, "%d-%m-%Y_%X", timern);
 
     child = fork();
     if (child < 0)
     {
         exit(EXIT_FAILURE);
     }
 
     if (child == 0)
     {
         char *argv[] = {"mkdir", "-p",StrTime, NULL};
         execv("/bin/mkdir", argv);
     }
     else
     {
         // this is parent
         while ((wait(&status)) > 0);
         char *argv[] = {"cp","-R", "/home/bayu/Downloads/.",StrTime, NULL};
         execv("/usr/bin/cp", argv);
     }
 }
