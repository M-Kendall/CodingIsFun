global with sharing class TemperatureConversion {
    
    global static double F2C(double fah){
        
        double Celsius = ((fah - 32) * 5) / 9;
        return Celsius;
    }
    
    global static double C2F(double cel){
        
        double Fahrenheit = (cel * 9 / 5) + 32;
        return Fahrenheit;
    }
}