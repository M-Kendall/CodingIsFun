trigger NumberOfContacts on Contact (after insert, after update, after delete) {
    
    if(Trigger.isAfter && Trigger.isInsert){
    //Creates an unordered list of unique ids
    set<Id> accountIds = new set<Id>();
    List<Account> acc = new List<Account>();
    
    //Loops through each Contact and adds the associated id to the set
    for(Contact c : Trigger.new){
    	accountIds.add(c.AccountId);
    }  
    
    //Creates a list of Account Ids, Number_of_Contacts__c, and Contact Ids
    List<Account> contactNumbers = [SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIds];
    
        for(Account a : contactNumbers){
            
            Account acct = new Account();
            acct.Id = a.Id;
            acct.Number_of_Contacts__c = a.contacts.size();
            acc.add(acct);
        }
        
        update acc;
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){

    set<Id> accountIds = new set<Id>();
    List<Account> acc = new List<Account>();
    

    for(Contact c : Trigger.old){
    	accountIds.add(c.AccountId);
    }  
        
    List<Account> contactNumbers = [SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIds];
    
        for(Account a : contactNumbers){
            
            Account acct = new Account();
            acct.Id = a.Id;
            acct.Number_of_Contacts__c = a.contacts.size();
            acc.add(acct);
        }
        
        update acc;       
    }
    
    if(Trigger.isAfter && Trigger.isDelete){

    set<Id> accountIds = new set<Id>();
    List<Account> acc = new List<Account>();
    
    for(Contact c : Trigger.old){
    	accountIds.add(c.AccountId);
    }  
        
    List<Account> contactNumbers = [SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIds];
    
        for(Account a : contactNumbers){
            
            Account acct = new Account();
            acct.Id = a.Id;
            acct.Number_of_Contacts__c = a.contacts.size();
            acc.add(acct);
        }
        
        update acc;       
    }   
 }