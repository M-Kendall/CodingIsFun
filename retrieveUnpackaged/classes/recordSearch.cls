public class recordSearch {
    
    public List<Position__c> positionRecords(string s){
        
        string userInput = '%' + s + '%';
        //When retrieving a specific sObject, use API Name instead of generic sObject
        List<Position__c> results = [SELECT Name FROM Position__c WHERE Name LIKE :userInput];
        
        return results;
    }
}