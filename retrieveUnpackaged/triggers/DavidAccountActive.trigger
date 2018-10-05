trigger DavidAccountActive on Account (before insert, before update, after insert, after update, before delete) {
    
    /*
    //Will only check if the first record is active
    if(Trigger.isBefore && Trigger.isDelete){
        //Data that's deleted is old data; can only be referenced using Trigger.old
        Account a = Trigger.old[0];
        //Don't have to specify the value of a boolean if using the data type checkbox
        if(a.Active__c){
            a.addError('You cannot delete an active account');
        }
    }
    
    //Will check if multiple records are active
    if(Trigger.isBefore && Trigger.isDelete){
        for(Account a : Trigger.old){
            if(a.Active__c){
                a.addError('You cannot delete an active account');
            }
        }
    }
    
    
     //** Anonymous Window Code **
     * 
     * Account act1 = new Account();
     * act1.Name = 'Test Account 1';
     * act1.Active__c = true;
     * 
     * Account act2 = new Account();
     * act.Name = 'Test Account 2';
     * 
     * List<Account> accounts = new List<Account>();
     * accounts.add(act1);
     * accounts.add(act2);
     * 
     * insert accounts;
     * 
     * delete accounts;
     * 
     * //Database insert or delete is all-or-nothing -- way around issue
     * Database.delete(accounts, false)
     //** Anonymous Code Window **
     */
}