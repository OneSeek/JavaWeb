package cn.oneseek.javaweb;

public class Complex {
    private double real;
    private double ima;
    public Complex(double real,double ima){
        this.real = real;
        this.ima = ima;
    }
    public Complex(){}

    public double getReal() {
        return real;
    }

    public void setReal(double real) {
        this.real = real;
    }

    public double getIma() {
        return ima;
    }

    public void setIma(double ima) {
        this.ima = ima;
    }
    public Complex add(Complex a){
        return new Complex(this.real+a.real,this.ima+ima);
    }
    public Complex sub(Complex a){
        return new Complex(this.real-a.real,this.ima-ima);
    }

    public Complex mul(Complex a){
        double x = this.real*a.real-this.ima*a.ima;
        double y = this.real*a.ima+this.ima+a.real;
        return new Complex(x,y);
    }
    public Complex div(Complex a){
        double z = a.real*a.real+a.ima*a.ima;
        double x = (this.real*a.real+this.ima*a.ima)/z;
        double y = (this.real*a.ima-this.ima*a.real)/z;
        return new Complex(x,y);
    }
}
