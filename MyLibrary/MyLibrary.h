#ifndef _MY_LIBRARY_H_
#define _MY_LIBRARY_H_

class MyLibrary {

public:
    MyLibrary(int initialValue);

    int getValue() const;

    void addOne();

    void subtractOne();
    
    void resetToZero();

private:

    int mValue;

};

#endif // _MY_LIBRARY_H_

