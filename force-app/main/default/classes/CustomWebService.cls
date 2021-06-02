@RestResource(urlMapping='/AllAccounts')
global with sharing class CustomWebService {
  
    public class Wrapper {
        public String accName;

        public Wrapper() {
        }

        public Wrapper(String inputName){
            this.accName = inputName;
        }
    }

    @HttpGet
    global static void doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        List<Wrapper> wrapperList = new list<Wrapper>(); 

        for (Account acc : [SELECT Id, Name FROM Account]) {
            wrapperList.add(new Wrapper(acc.name) );
        }

		res.statusCode = 200;
        res.responseBody = Blob.valueof(JSON.serialize(wrapperList));
 
    }
}