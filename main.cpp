#include <iostream>
#include "xpipe.h"
#include "jobserver.h"
#include "asyntabworker.h"

using namespace std;
int main(int argc, int *argv[])
{
  xpipe toserver,toworker;
	Jobserver  jobs;
	
	jobs.set_send_pipe(toworker);
	jobs.set_recv_pipe(toserver);	
	jobs.start();
	
	return 0;
}
