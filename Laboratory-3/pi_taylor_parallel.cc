#include <iomanip>
#include <iostream>
#include <limits>
#include <numeric>
#include <string>
#include <thread>
#include <utility>
#include <vector>

using my_float = long double;


void pi_taylor_chunk(std::vector<my_float> &output, size_t start, size_t end, size_t thread_id, size_t num_threads) {
    my_float chunk_result = 0.0;
    for (size_t n = start; n < end; n++) {
        if (n % num_threads == thread_id) {
            chunk_result += 1.0 / static_cast<my_float>(2 * n + 1);
        }
    }
    output[thread_id] = chunk_result;
}



std::pair<size_t, size_t>
usage(int argc, const char *argv[]) {
    // read the number of steps from the command line
    if (argc != 3) {
        std::cerr << "Invalid syntax: pi_taylor <steps> <threads>" << std::endl;
        exit(1);
    }

    size_t steps = std::stoll(argv[1]);
    size_t threads = std::stoll(argv[2]);

    if (steps < threads ){
        std::cerr << "The number of steps should be larger than the number of threads" << std::endl;
        exit(1);

    }
    return std::make_pair(steps, threads);
}

int main(int argc, const char *argv[]) {


    auto ret_pair = usage(argc, argv);
    auto steps = ret_pair.first;
    auto threads = ret_pair.second;

    std::vector<my_float> thread_results(threads);
    std::vector<std::thread> worker_threads(threads);

    for (size_t i = 0; i < threads; i++) {
        worker_threads[i] = std::thread(pi_taylor_chunk, std::ref(thread_results), i, steps, i, threads);
    }

    for (size_t i = 0; i < threads; i++) {
        worker_threads[i].join();
    }

    my_float pi = std::accumulate(thread_results.begin(), thread_results.end(), 0.0);
    pi *= 4.0;


    std::cout << "For " << steps << ", pi value: "
        << std::setprecision(std::numeric_limits<long double>::digits10 + 1)
        << pi << std::endl;

        return 0 ;
}

