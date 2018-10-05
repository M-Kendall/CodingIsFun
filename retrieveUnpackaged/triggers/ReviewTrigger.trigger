trigger ReviewTrigger on Review__c (before insert) {
        
    //Creates a list of unique Id values
    Set<Id> applicationIds = new Set<Id>();
    
    for(Review__c r : Trigger.new){
        applicationIds.add(r.Job_Application__c);
    }
    
    List<Candidate__c> candidates = [SELECT Latest_Assessment__c FROM Candidate__c WHERE Id IN (SELECT Candidate__c FROM Job_Application__c WHERE Id IN :applicationIds)];
    
    //Use SOQL to query for Assessment field in Candidate   
    /*
    //No good.  Don't use a query in a for loop, higher chance of running into SOQL limits.
    for(Review__c r : Trigger.new)
    Candidate__c candidate = [SELECT Latest_Assessment__c FROM Candidate__c WHERE Id = r.Job_Application__c]
	*/     
}