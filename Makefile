CXX      ?= g++
CXXFLAGS  = -std=c++11 -Wall -Wextra -Wno-missing-field-initializers -g -O2
LIBS      = -lm -lz -lpthread

PREFIX    = $(DESTDIR)/usr/local
BINDIR    = $(PREFIX)/bin

ofiles    = main.cpp.o
hfiles    = $(wildcard *.h)

.PHONY: all clean install

all: distmat

install: distmat
	install distmat $(BINDIR)/distmat

distmat: $(ofiles)
	$(CXX) $(CXXFLAGS) $(DFLAGS) $(ofiles) -o $@ -L. $(LIBS)

%.cpp.o: %.cpp $(hfiles)
	$(CXX) $(CXXFLAGS) $(DFLAGS) -c $< -o $@

clean:
	rm -f src/*.o
	rm -f distmat

