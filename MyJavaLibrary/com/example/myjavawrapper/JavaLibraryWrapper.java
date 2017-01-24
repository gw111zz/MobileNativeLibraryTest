package com.example.myjavawrapper;

public class JavaLibraryWrapper {

    private long mNativePtr;

    public JavaLibraryWrapper(int initialValue) {
        mNativePtr = createNativeLibraryObject(initialValue);
        if (mNativePtr == 0) {
            // TODO: throw
        }
    }

    public int getValue() {
        return getValue(mNativePtr);
    }

    public void addOne() {
        addOne(mNativePtr);
    }

    public void subtractOne() {
        subtractOne(mNativePtr);
    }

    public void resetToZero() {
        resetToZero(mNativePtr);
    }

    // Wrapper methods

    /**
     * Creates the native object that this wrapper wraps.
     *
     * @param initialValue The initial value of the library's counter.
     *
     * @return A long representing a pointer to the native object.
     */
    private native long createNativeLibraryObject(int initialValue);
    private native void destroyNativeLibraryObject(long nativePtr);

    public native int getValue(long nativePtr);
    public native void addOne(long nativePtr);
    public native void subtractOne(long nativePtr);
    public native void resetToZero(long nativePtr);

    public void finalize() {
        destroyNativeLibraryObject(this.mNativePtr);
    }
}
