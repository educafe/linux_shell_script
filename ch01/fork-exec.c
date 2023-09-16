#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>

int main(void) {
	int ret;
	int status;
	
	switch(fork()){
		case -1:
			exit(1);
		case 0:
			printf("\tChild is working --- (%d)\n", getpid());
			// sleep(5);
			// exit(0);
			execl("/usr/bin/sleep", "sleep", "5", (char *)0);
		default:
			printf("Parent is working --- (%d)\n", getpid());
			while(1){
				ret = waitpid(-1, &status, WNOHANG);
				if(ret == -1 && errno == ECHILD){
					// printf("No Child --\n");
					break;
				}
				if(ret == -1){
					perror("child waitpid");
					abort();
				}
			}
	}
	return 0;
}