package com.example.myjavawrapper;

class JavaExample {

    static {
        System.loadLibrary("MyJavaWrapper");
    }

    public static void main(String[] args) {
        MyJavaWrapper wrapper = new MyJavaWrapper(2);
        System.out.println("Initial value: " + wrapper.getValue());
        wrapper.addOne();
        System.out.println("Add one, new value: " + wrapper.getValue());
        wrapper.subtractOne();
        System.out.println("Subtract one, new value: " + wrapper.getValue());
        wrapper.resetToZero();
        System.out.println("Reset to zero, new value: " + wrapper.getValue());
    }

}
