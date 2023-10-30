#include <iomanip>
#include <iostream>
#include <limits>
#include <chrono>

// Allow to change the floating point type
using my_float = long double;

my_float pi_taylor(size_t steps) {
    my_float pi = 0.0;
    int sign = 1;
    for (size_t n = 0; n < steps; n++) {
        pi+= sign / static_cast<my_float>(2*n + 1);
        sign = -sign;
    }
    return 4.0f * pi;
    
}

int main(int argc, const char *argv[]) {
    auto start = std::chrono::high_resolution_clock::now();

    if (argc != 2) {
        std::cerr << "Invalid syntax: pi_taylor <steps>" << std::endl;
        exit(1);

    }

    size_t steps = std::stoll(argv[1]);
    auto pi = pi_taylor(steps);

     
    auto end = std::chrono::high_resolution_clock::now();

    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

    std::cout << "For " << steps << ", pi value: "
        << std::setprecision(std::numeric_limits<my_float>::digits10 + 1)
        << pi <<std::endl;
    std::cout << "Time :" << duration.count() <<std::endl;
}
