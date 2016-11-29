#include "MyLibrary.h"

MyLibrary::MyLibrary(int storedValue) {
    mValue = storedValue;
}

int MyLibrary::getInt() const {
    return mValue;
}

