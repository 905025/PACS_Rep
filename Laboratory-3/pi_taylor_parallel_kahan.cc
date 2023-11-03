#include <iostream>
#include <iomanip>
#include <limits>
#include <vector>
#include <thread>
#include <mutex>

using my_float = float;

void pi_taylor_chunk(std::vector<my_float> &output, size_t start, size_t end) {
    my_float chunk_result = 0.0;
    my_float compensation = 0.0;  // Compensación para Kahan summation
    int sign = 1;

    for (size_t n = start; n < end; n++) {
        my_float y = sign / static_cast<my_float>(2 * n + 1) - compensation;
        my_float temp = chunk_result + y;
        compensation = (temp - chunk_result) - y;
        chunk_result = temp;

        sign = -sign;
    }
    output[0] += chunk_result;
}

my_float pi_taylor(size_t steps, size_t num_threads) {
    std::vector<my_float> thread_results(num_threads, 0.0);
    std::vector<std::thread> worker_threads(num_threads);
    size_t chunk_size = steps / num_threads;

    for (size_t i = 0; i < num_threads; i++) {
        size_t start = i * chunk_size;
        size_t end = (i == num_threads - 1) ? steps : (i + 1) * chunk_size;
        worker_threads[i] = std::thread(pi_taylor_chunk, std::ref(thread_results), start, end);
    }

    for (size_t i = 0; i < num_threads; i++) {
        worker_threads[i].join();
    }

    my_float pi = thread_results[0];

    return 4.0 * pi;
}

std::pair<size_t, size_t> usage(int argc, const char *argv[]) {
    if (argc != 3) {
        std::cerr << "Invalid syntax: pi_taylor <steps> <threads>" << std::endl;
        exit(1);
    }

    size_t steps = std::stoll(argv[1]);
    size_t threads = std::stoll(argv[2]);

    if (steps <= threads) {
        std::cerr << "The number of steps should be larger than the number of threads" << std::endl;
        exit(1);
    }

    return std::make_pair(steps, threads);
}

int main(int argc, const char *argv[]) {
    auto ret_pair = usage(argc, argv);
    auto steps = ret_pair.first;
    auto threads = ret_pair.second;

    auto pi = pi_taylor(steps, threads);

    std::cout << "For " << steps << " steps and " << threads << " threads, pi value: "
              << std::setprecision(std::numeric_limits<my_float>::digits10 + 1)
              << pi << std::endl;

    return 0;
}





