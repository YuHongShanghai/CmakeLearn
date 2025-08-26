#include <cmath>
#include <cstdlib>
#include <iostream>
#include <string>

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cout << "Usgae: " << argv[0] << " number" << std::endl;
        return 1;
    }

    double const inputValue = atof(argv[1]);
    double const outputValue = sqrt(inputValue);
    std::cout << "The square root of " << inputValue << " is " << outputValue
                << std::endl;
    return 0;
}