#include "MyLibrary.h"
#include <iostream>

int main() {

    const MyLibrary myLib(2);
    std::cout << "Stored value is: " << myLib.getInt() << std::endl;

    return 0;
}
