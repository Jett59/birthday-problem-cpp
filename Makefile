CXXFLAGS:=-Ofast -pthread -std=gnu++17 -g

SRCS:=birthday.cpp

a.out: $(SRCS)
	$(CXX) $(CXXFLAGS) $^ -o $@

clean:
	rm -f a.out
