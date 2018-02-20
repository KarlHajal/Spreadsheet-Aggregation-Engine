CC=g++
INCLUDEDIR=./include
SOURCEDIR=./src
CFLAGS=-I$(INCLUDEDIR) -std=c++11

OBJFILES= $(patsubst ($SOURCEDIR)/%.cpp, $(SOURCEDIR)/%.o, $(wildcard $(SOURCEDIR)/*.cpp))
DEPS= $(wildcard $(INCLUDEDIR)/*.h) 

$(SOURCEDIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJFILES)
	$(CC) -o $@ $^ $(CFLAGS)
