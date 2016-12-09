#include "MyLibrary.h"

MyLibrary::MyLibrary(int initialValue)
: mValue(initialValue) {
}

int MyLibrary::getValue() const {
    return mValue;
}

void MyLibrary::addOne() {
    ++mValue;
}

void MyLibrary::subtractOne() {
    --mValue;
}

void MyLibrary::resetToZero() {
    mValue = 0;
}
