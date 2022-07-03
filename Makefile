CXXFLAGS:=-march=native -Ofast -pthread -std=c++20 -Wall -Wextra -pedantic

SRCS:=birthday.cpp

a.out: $(SRCS) Makefile
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(SRCS) -o $@

clean:
	rm -f a.out
