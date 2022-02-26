CXXFLAGS:=-march=native -Ofast -pthread -std=gnu++17

SRCS:=birthday.cpp

a.out: $(SRCS)
	$(CXX) $(CXXFLAGS) $^ -o $@

clean:
	rm -f a.out
