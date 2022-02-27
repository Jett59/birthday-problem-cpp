CXXFLAGS:=-march=native -Ofast -pthread -std=c++17

SRCS:=birthday.cpp

a.out: $(SRCS)
	$(CXX) $(CXXFLAGS) $^ -o $@

clean:
	rm -f a.out
