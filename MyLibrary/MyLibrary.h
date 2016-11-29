#ifndef _MY_LIBRARY_H_
#define _MY_LIBRARY_H_

class MyLibrary {

public:
    MyLibrary(int storedValue);

    int getInt() const;

private:

    int mValue;

};

#endif // _MY_LIBRARY_H_

