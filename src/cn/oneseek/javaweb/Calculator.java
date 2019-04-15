package cn.oneseek.javaweb;

public class Calculator {
    private double number1,number2;

    public double Add(){
        return number1+number2;
    }
    public double Minus(){
        return number1-number2;
    }
    public double Multiply(){
        return number1*number2;
    }
    public double Divide(){
        return number1/number2;
    }


    public double getNumber1() {
        return number1;
    }

    public void setNumber1(double number1) {
        this.number1 = number1;
    }

    public double getNumber2() {
        return number2;
    }

    public void setNumber2(double number2) {
        this.number2 = number2;
    }
}
