#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::ifstream file("../input.txt");
    if (!file) {
        std::cerr << "Failed to open input.txt\n";
        return 1;
    }

    std::string input;
    file >> input; 

    
    int floor = 0;
    for (char c : input) {
        if (c == '(') floor++;
        else if (c == ')') floor--;
    }
    std::cout << "Part 1: Final floor = " << floor << "\n";

    
    floor = 0;
    int pos = -1;
    for (size_t i = 0; i < input.size(); i++) {
        if (input[i] == '(') floor++;
        else if (input[i] == ')') floor--;
        if (floor == -1) {
            pos = static_cast<int>(i + 1); 
            break;
        }
    }
    std::cout << "Part 2: First basement position = " << pos << "\n";

    return 0;
}
