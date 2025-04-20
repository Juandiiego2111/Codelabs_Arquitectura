#include <jni.h>
#include "libcalculadora_JavaCalculadora.h"


JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_sumar
  (JNIEnv * env, jobject obj, jint numero1, jint numero2){
  int num1 = numero1;
  int num2 = numero2;
  return num1+num2;
}
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_restar
  (JNIEnv * env, jobject obj, jint numero1, jint numero2){
  int num1 = numero1;
  int num2 = numero2;
  return num1-num2;
}
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_multiplicar
  (JNIEnv * env, jobject obj, jint numero1, jint numero2){
  int num1 = numero1;
  int num2 = numero2;
  return num1*num2;
}
JNIEXPORT jfloat JNICALL Java_libcalculadora_JavaCalculadora_dividir
  (JNIEnv * env, jobject obj, jint numero1, jint numero2){
  int num1 = numero1;
  int num2 = numero2;

  return (float) (num1/num2);

}

