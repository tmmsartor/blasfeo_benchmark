# BLAS_LIB = openblas
BLAS_LIB = mkl_rt

bench: Gemm.cpp Main.cpp Makefile
	g++ -std=c++17 -g -O2 -DNDEBUG -I/opt/blasfeo/include -L/opt/blasfeo/lib Gemm.cpp Main.cpp -lblasfeo -lbenchmark -lpthread -l$(BLAS_LIB) -o bench
all: bench
clean:
	rm -f bench
	