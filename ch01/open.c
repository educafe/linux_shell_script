#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

int main() {
	int fd;
	int maxread;
	char data[4096]="Hello World Good Morning how are you today I am fine thank you\n";
	size_t ret;
	char buf[4096]={0 };
	
	struct stat filestat;

	umask(0);
	// fd=open("file01", O_RDWR | O_CREAT , 0666);
	fd=open("file01", O_RDWR | O_CREAT | O_TRUNC, 0600);	
	if(fd == -1){
		perror("open a file to open failed");
		exit(1);
	}
	
	close(fd);
	return 0;
}