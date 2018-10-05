//All done in the anonymous apex window
public class WebServiceNotes {
/*
    //*** REST Callout ***
    
    //This is used to retrieve information from a server
    //Use Http class in Salesforce to create new Http object
    Http http = new Http();
    
    //Make a request object
    HttpRequest req = new HttpRequest();
    
    //Defines the URL we want to make the callout to
    req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    
    //Making a GET method request to the above endpoint
    req.setMethod('GET');
    
    //Create an HttpResponse object and set equal to our Http object -- http
    //Use the send method passing in our request
    HttpResponse response = http.send(req);
    
    //Status codes are http errors
        if(response.getStatusCode() == 200){
            
            //Making a map out of the response
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            List<Object> animals = (List<Object>) results.get('animals');
            
            //Prints out each object in list animals
            for(Object animal : animals){
                System.debug(animal);
            }
        }
    
    //This is used to send information to a server
    Http http = new Http();
    HttpRequest req = new HttpRequest();
    
    req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    req.setMethod('POST');
    
    //Letting the server know the type of information that we're sending
    //and that it's JSON
    req.setHeader('Content-Type', 'application/json;charset=UTF-8');
    
    //The information being sent
    req.setBody('{"name": "kitty"}');
    
    HttpResponse response = http.send(req);
    
    if(response.getStatusCode != 201){
        System.debug('The status code returned was not expected: ' + response.getStatusCode() + ' ' +
                    response.getStatus());
    }
    else {
        System.debug(response.getBody());
    }
*/
}