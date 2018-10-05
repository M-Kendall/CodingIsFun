@RestResource(urlMapping='/services/apex/v1/rest/*')
global class RESTServicev1 {
    
    @HttpPost
    global static double Temperature (double t){
        
        double tempConvert = TemperatureConversion.F2C(t);
        return tempConvert;
    }
}