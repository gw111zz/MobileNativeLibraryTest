#!/usr/bin/env bash

set -e
set -u
set -x
set -o pipefail

OUTPUT_FOLDER=../Output
JAVA_OUTPUT_FOLDER=${OUTPUT_FOLDER}/DjinniJavaOutput
CPP_OUTPUT_FOLDER=${OUTPUT_FOLDER}/DjinniCppOutput
JNI_OUTPUT_FOLDER=${OUTPUT_FOLDER}/DjinniJniOutput
OBJC_OUTPUT_FOLDER=${OUTPUT_FOLDER}/DjinniObjcOutput

DJINNI_FILENAME=MyLibrary.djinni

../Tools/djinni/src/run \
   --java-out "${JAVA_OUTPUT_FOLDER}" \
   --java-package com.example.jnigenpackage \
   --java-cpp-exception MyLibraryException \
   --ident-java-field m \
   \
   --cpp-out "${CPP_OUTPUT_FOLDER}" \
   \
   --jni-out "${JNI_OUTPUT_FOLDER}" \
   --ident-jni-class NativeMyLibrary \
   \
   --objc-out "${OBJC_OUTPUT_FOLDER}" \
   --objc-type-prefix ML \
   \
   --objcpp-out "${OBJC_OUTPUT_FOLDER}" \
   \
   --idl "${DJINNI_FILENAME}"

