#include "../MyLibrary/MyLibrary.h"
#include "com_example_myjavawrapper_JavaLibraryWrapper.h"

JNIEXPORT jlong JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_createNativeLibraryObject(JNIEnv* env, jobject obj, jint initialValue) {
  return (jlong) new MyLibrary(initialValue);
}

JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_destroyNativeLibraryObject(JNIEnv*, jobject obj, jlong nativePtr) {
  if (nativePtr) {
      delete (MyLibrary*)nativePtr;
  }
}

JNIEXPORT jint JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_getValue(JNIEnv* env, jobject obj, jlong nativePtr) {
  if (nativePtr) {
      return ((MyLibrary*)nativePtr)->getValue();
  }
  return 0;
}

JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_addOne(JNIEnv* env, jobject obj, jlong nativePtr) {
    if (nativePtr) {
        ((MyLibrary*)nativePtr)->addOne();
    }
}

JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_subtractOne(JNIEnv* env, jobject obj, jlong nativePtr) {
    if (nativePtr) {
        ((MyLibrary*)nativePtr)->subtractOne();
    }
}

JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_resetToZero(JNIEnv* env, jobject obj, jlong nativePtr) {
    if (nativePtr) {
        ((MyLibrary*)nativePtr)->resetToZero();
    }
}

