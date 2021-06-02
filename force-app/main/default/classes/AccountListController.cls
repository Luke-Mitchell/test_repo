public with sharing class AccountListController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return selectAccounts();
    }


    public static List<Account> selectAccounts() {
        return [SELECT Id, Name FROM Account ORDER BY Name];
    }
}