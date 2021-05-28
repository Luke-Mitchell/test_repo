public with sharing class ApiCallController {
    
    @AuraEnabled
    public static List<Object> callEndpoint(String endPoint) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
    
            List<Object> peopleList = (List<Object>)JSON.deserializeUntyped(response.getBody() );

            return peopleList;

            // for(Object record : peopleList){    
            //     Map<String,Object> person = (Map<String,Object>)record;
                    
            //     system.debug(person.get('name'));
            // }
            
        } else {
            return null;
        }

    }
}
