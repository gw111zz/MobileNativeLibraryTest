/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class com_example_myjavawrapper_JavaLibraryWrapper */

#ifndef _Included_com_example_myjavawrapper_JavaLibraryWrapper
#define _Included_com_example_myjavawrapper_JavaLibraryWrapper
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     com_example_myjavawrapper_JavaLibraryWrapper
 * Method:    createNativeLibraryObject
 * Signature: (I)J
 */
JNIEXPORT jlong JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_createNativeLibraryObject
  (JNIEnv *, jobject, jint);

/*
 * Class:     com_example_myjavawrapper_JavaLibraryWrapper
 * Method:    destroyNativeLibraryObject
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_destroyNativeLibraryObject
  (JNIEnv *, jobject, jlong);

/*
 * Class:     com_example_myjavawrapper_JavaLibraryWrapper
 * Method:    getValue
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_getValue
  (JNIEnv *, jobject, jlong);

/*
 * Class:     com_example_myjavawrapper_JavaLibraryWrapper
 * Method:    addOne
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_addOne
  (JNIEnv *, jobject, jlong);

/*
 * Class:     com_example_myjavawrapper_JavaLibraryWrapper
 * Method:    subtractOne
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_subtractOne
  (JNIEnv *, jobject, jlong);

/*
 * Class:     com_example_myjavawrapper_JavaLibraryWrapper
 * Method:    resetToZero
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_example_myjavawrapper_JavaLibraryWrapper_resetToZero
  (JNIEnv *, jobject, jlong);

#ifdef __cplusplus
}
#endif
#endif