#include "MyLibrary.h"
#include <iostream>

int main() {

    MyLibrary myLib(2);
    std::cout << "Initial value is: " << myLib.getValue() << std::endl;
    myLib.addOne();
    std::cout << "Add one. Value is: " << myLib.getValue() << std::endl;
    myLib.subtractOne();
    std::cout << "Subtract one. Value is: " << myLib.getValue() << std::endl;

    return 0;
}
