TARGETS        =main
CXX=xlC
SRCS = $(wildcard *.cpp)
OBJS1 = $(patsubst %.cpp, %.o, $(SRCS))
OBJS  = $(OBJS1)              
$(TARGETS): $(OBJS)
  @echo "Creating executable -*- $@ -*- ..."
	$(CXX) $(OPT) -bh:5 -o $@ $(CXXFLAGS) $(OBJS) $(LDFLAGS)
clean:
	rm -rf *.o $(TARGETS)
Debug:$(TARGETS)
	    @strip -X64 -t $(TARGETS)
